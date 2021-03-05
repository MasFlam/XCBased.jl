function xcb_grab_pointer(
	conn:: XCBConnection,
	owner_events:: Bool,
	grab_window:: Integer,
	event_mask:: Integer,
	pointer_mode:: Integer,
	keyboard_mode:: Integer,
	confine_to:: Integer,
	cursor:: Integer,
	time:: Integer;
	checked:: Bool
):: XCBGrabPointerFuture
	fn = checked ? LibXCB.xcb_grab_pointer : LibXCB.xcb_grab_pointer_unchecked
	cookie = fn(
		conn.handle,
		owner_events,
		grab_window,
		event_mask,
		pointer_mode,
		keyboard_mode,
		confine_to,
		cursor,
		time
	)
	
	XCBGrabPointerFuture(conn, cookie, checked)
end
