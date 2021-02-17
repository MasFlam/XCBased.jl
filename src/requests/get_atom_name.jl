function get_atom_name(
	conn:: XCBConnection,
	atom:: Integer;
	checked:: Bool
):: XCBGetAtomNameFuture
	fn = checked ? LibXCB.xcb_get_atom_name : LibXCB.xcb_get_atom_name_unchecked
	cookie = fn(conn.handle, atom)
	
	XCBGetAtomNameFuture(conn, cookie, checked)
end
