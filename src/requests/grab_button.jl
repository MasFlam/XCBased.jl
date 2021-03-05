function xcb_grab_button(
	conn:: XCBConnection,
	owner_events:: Bool,
	grab_window:: Integer,
	event_mask:: Integer,
	pointer_mode:: Integer,
	keyboard_mode:: Integer,
	confine_to:: Integer,
	cursor:: Integer,
	button:: Integer,
	modifiers:: Integer;
	checked:: Bool
):: XCBVoidFuture
	fn = checked ? LibXCB.xcb_grab_button_checked : LibXCB.xcb_grab_button
	cookie = fn(
		conn.handle,
		owner_events,
		grab_window,
		event_mask,
		pointer_mode,
		keyboard_mode,
		confine_to,
		cursor,
		button,
		modifiers
	)
	
	XCBVoidFuture(conn, cookie, checked)
end
