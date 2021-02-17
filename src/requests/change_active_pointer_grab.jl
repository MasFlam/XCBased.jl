function change_active_pointer_grab(
	conn:: XCBConnection,
	cursor:: Integer,
	time:: Integer,
	event_mask:: Integer;
	checked:: Bool
):: XCBVoidFuture
	fn = checked ? LibXCB.xcb_change_active_pointer_grab_checked : LibXCB.xcb_change_active_pointer_grab
	cookie = fn(
		conn.handle,
		cursor,
		time.
		event_mask
	)
	
	XCBVoidFuture(conn, cookie, checked)
end
