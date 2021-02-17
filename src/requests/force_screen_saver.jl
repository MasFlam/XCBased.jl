function force_screen_saver(
	conn:: XCBConnection,
	mode:: Integer;
	checked:: Bool
):: XCBVoidFuture
	fn = checked ? LibXCB.xcb_force_screen_saver_checked : LibXCB.xcb_force_screen_saver
	cookie = fn(
		conn.handle,
		mode
	)
	
	XCBVoidFuture(conn, cookie, checked)
end
