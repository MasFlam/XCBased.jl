mutable struct XCBVoidFuture <: XCBFuture
	conn:: XCBConnection
	cookie:: LibXCB.xcb_void_cookie_t
	checked:: Bool
	reply:: Union{Nothing, Missing}
	had_error:: Bool
	
	function XCBVoidFuture(conn, cookie, checked, reply = missing, had_error = false)
		future = new(conn, cookie, checked, reply, had_error)
		finalizer(future) do f
			checked && f.reply === missing && LibXCB.xcb_discard_reply(f.conn.handle, f.cookie.sequence)
		end
		future
	end
end

function fetch(f:: XCBVoidFuture)
	f.reply === missing || return
	errptr = LibXCB.xcb_request_check(f.conn.handle, f.cookie)
	if errptr != C_NULL
		f.reply = nothing
		f.had_error = true
		throw_xcb_error(errptr)
	end
	f.reply = nothing
end

wait(f:: XCBVoidFuture) = fetch(f)
