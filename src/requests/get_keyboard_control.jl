function xcb_get_keyboard_control(
	conn:: XCBConnection;
	checked:: Bool
):: XCBGetKeyboardControlFuture
	fn = checked ? LibXCB.xcb_get_keyboard_control : LibXCB.xcb_get_keyboard_control_unchecked
	cookie = fn(conn.handle)
	
	XCBGetKeyboardControlFuture(conn, cookie, checked)
end
