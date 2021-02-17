function intern_atom(
	conn:: XCBConnection,
	only_if_exists:: Bool,
	name:: AbstractString;
	checked:: Bool
):: XCBVoidFuture
	fn = checked ? LibXCB.xcb_intern_atom_checked : LibXCB.xcb_intern_atom
	name_bytes = Vector{UInt8}(name)
	cookie = fn(conn.handle, only_if_exists, length(name_bytes), name_bytes)
	
	XCBVoidFuture(conn, cookie, checked)
end
