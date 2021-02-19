function send_event(
	conn:: XCBConnection,
	propagate:: Bool,
	destination:: Integer,
	event_mask:: UInt32,
	event:: XCBEvent;
	checked:: Bool
):: XCBVoidFuture
	c_event = libxcb_event(event)
	f = checked ? LibXCB.xcb_send_event_checked : LibXCB.xcb_send_event
	cookie = f(
		conn.handle,
		propagate,
		destination,
		event_mask,
		Ref(c_event)
	)
	
	XCBVoidFuture(conn, cookie, checked)
end
