mutable struct XCBGetPointerControlFuture <: XCBFuture
	conn:: XCBConnection
	cookie:: LibXCB.xcb_get_pointer_control_cookie_t
	checked:: Bool
	reply:: Union{XCBGetPointerControlReply, Nothing, Missing}
	had_error:: Bool
	
	function XCBGetPointerControlFuture(conn, cookie, checked, reply = missing, had_error = false)
		future = new(conn, cookie, checked, reply, had_error)
		finalizer(future) do f
			checked && f.reply === missing && LibXCB.xcb_discard_reply(f.conn.handle, f.cookie.sequence)
		end
		future
	end
end

function fetch(f:: XCBGetPointerControlFuture):: Union{XCBGetPointerControlReply, Nothing}
	f.reply === missing || return f.reply
	errptrref = Ref(Ptr{LibXCB.xcb_generic_error_t}())
	replyptr = LibXCB.xcb_get_pointer_control_reply(f.conn.handle, f.cookie, errptrref)
	if replyptr == C_NULL
		f.reply = nothing
		f.had_error = true
		throw_xcb_error(errptrref[])
	end
	f.reply = XCBGetPointerControlReply(replyptr)
	Libc.free(replyptr)
	f.reply
end
