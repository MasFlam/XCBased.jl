function xcb_get_screen_saver(
	conn:: XCBConnection;
	checked:: Bool
):: XCBGetScreenSaverFuture
	fn = checked ? LibXCB.xcb_get_screen_saver : LibXCB.xcb_get_screen_saver_unchecked
	cookie = fn(conn.handle)
	
	XCBGetScreenSaverFuture(conn, cookie, checked)
end
