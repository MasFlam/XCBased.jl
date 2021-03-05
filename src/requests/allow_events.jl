function xcb_allow_events(
	conn:: XCBConnection,
	mode:: Integer,
	time:: Integer;
	checked:: Bool
):: XCBVoidFuture
	fn = checked ? LibXCB.xcb_allow_events_checked : LibXCB.xcb_allow_events
	cookie = fn(
		conn.handle,
		mode,
		time
	)
	
	XCBVoidFuture(conn, cookie, checked)
end
