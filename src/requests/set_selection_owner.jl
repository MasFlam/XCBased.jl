function set_selection_owner(
	conn:: XCBConnection,
	owner:: Integer,
	selection:: Integer,
	timestamp:: Integer;
	checked:: Bool
):: XCBVoidFuture
	fn = checked ? LibXCB.xcb_set_selection_owner_checked : LibXCB.xcb_set_selection_owner
	cookie = fn(
		conn.handle,
		owner,
		selection,
		timestamp
	)
	
	XCBVoidFuture(conn, cookie, checked)
end
