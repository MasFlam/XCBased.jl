function rotate_properties(
	conn:: XCBConnection,
	window:: Integer,
	delta:: Integer,
	atoms:: Vector{LibXCB.xcb_atom_t};
	checked:: Bool
):: XCBVoidFuture
	fn = checked ? LibXCB.xcb_rotate_properties_checked : LibXCB.xcb_rotate_properties
	cookie = fn(
		conn.handle,
		window,
		length(atoms),
		delta,
		atoms
	)
	
	XCBVoidFuture(conn, cookie, checked)
end
