function xcb_grab_keyboard(
	conn:: XCBConnection,
	owner_events:: Bool,
	grab_window:: Integer,
	time:: Integer,
	pointer_mode:: Integer,
	keyboard_mode:: Integer;
	checked:: Bool
):: XCBGrabKeyboardFuture
	fn = checked ? LibXCB.xcb_grab_keyboard : LibXCB.xcb_grab_keyboard_unchecked
	cookie = fn(
		conn.handle,
		owner_events,
		grab_window,
		time,
		pointer_mode,
		keyboard_mode
	)
	
	XCBGrabKeyboardFuture(conn, cookie, checked)
end
