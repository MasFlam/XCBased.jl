function xcb_set_screen_saver(
	conn:: XCBConnection,
	timeout:: Integer,
	interval:: Integer,
	prefer_blanking:: Bool,
	allow_exposures:: Bool;
	checked:: Bool
):: XCBVoidFuture
	fn = checked ? LibXCB.xcb_set_screen_saver_checked : LibXCB.xcb_set_screen_saver
	cookie = fn(
		conn.handle,
		timeout,
		interval,
		prefer_blanking,
		allow_exposures
	)
	
	XCBVoidFuture(conn, cookie, checked)
end
