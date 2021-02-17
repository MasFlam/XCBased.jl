function grab_key(
	conn:: XCBConnection,
	owner_events:: Bool,
	grab_window:: Integer,
	modifiers:: Integer,
	key:: Integer,
	pointer_mode:: Integer,
	keyboard_mode:: Integer;
	checked:: Bool
):: XCBVoidFuture
	fn = checked ? LibXCB.xcb_grab_key_checked : LibXCB.xcb_grab_key
	cookie = fn(
		conn.handle,
		owner_events,
		grab_window,
		modifiers,
		key,
		pointer_mode,
		keyboard_mode
	)
	
	XCBVoidFuture(conn, cookie, checked)
end
