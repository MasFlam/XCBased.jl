function ungrab_keyboard(
	conn:: XCBConnection,
	time:: Integer;
	checked:: Bool
):: XCBVoidFuture
	fn = checked ? LibXCB.xcb_ungrab_keyboard_checked : LibXCB.xcb_ungrab_keyboard
	cookie = fn(
		conn.handle,
		time
	)
	
	XCBVoidFuture(conn, cookie, checked)
end
