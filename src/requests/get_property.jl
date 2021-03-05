function xcb_get_property(
	conn:: XCBConnection,
	delete:: Bool,
	window:: Integer,
	property:: Integer,
	type:: Integer,
	long_offset:: Integer,
	long_length:: Integer;
	checked:: Bool
):: XCBGetPropertyFuture
	fn = checked ? LibXCB.xcb_get_property : LibXCB.xcb_get_property_unchecked
	cookie = fn(
		conn.handle,
		delete,
		window,
		property,
		type,
		long_offset,
		long_length
	)
	
	XCBGetPropertyFuture(conn, cookie, checked)
end
