function set_close_down_mode(
	conn:: XCBConnection,
	mode:: Integer;
	checked:: Bool
):: XCBVoidFuture
	fn = checked ? LibXCB.xcb_set_close_down_mode_checked : LibXCB.xcb_set_close_down_mode
	cookie = fn(
		conn.handle,
		mode
	)
	
	XCBVoidFuture(conn, cookie, checked)
end
