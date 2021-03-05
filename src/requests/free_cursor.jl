function xcb_free_cursor(
	conn:: XCBConnection,
	cursor:: Integer;
	checked:: Bool
):: XCBVoidFuture
	fn = checked ? LibXCB.xcb_free_cursor_checked : LibXCB.xcb_free_cursor
	cookie = fn(
		conn.handle,
		cursor
	)
	
	XCBVoidFuture(conn, cookie, checked)
end
