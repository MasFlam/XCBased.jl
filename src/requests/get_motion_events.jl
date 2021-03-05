function xcb_get_motion_events(
	conn:: XCBConnection,
	window:: Integer,
	start:: Integer,
	stop:: Integer;
	checked:: Bool
):: XCBGetMotionEventsFuture
	fn = checked ? LibXCB.xcb_get_motion_events : LibXCB.xcb_get_motion_events_unchecked
	cookie = fn(
		conn.handle,
		window,
		start,
		stop
	)
	
	XCBGetMotionEventsFuture(conn, cookie, checked)
end
