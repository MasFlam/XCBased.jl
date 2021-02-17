function convert_selection(
	conn:: XCBConnection,
	requestor:: Integer,
	selection:: Integer,
	target:: Integer,
	property:: Integer,
	time:: Integer;
	checked:: Bool
):: XCBVoidFuture
	fn = checked ? LibXCB.xcb_convert_selection_checked : LibXCB.xcb_convert_selection
	cookie = fn(
		conn.handle,
		requestor,
		selection,
		target,
		time
	)
	
	XCBVoidFuture(conn, cookie, checked)
end
