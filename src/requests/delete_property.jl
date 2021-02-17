function delete_property(
	conn:: XCBConnection,
	window:: Integer,
	property:: Integer;
	checked:: Bool
):: XCBVoidFuture
	fn = checked ? LibXCB.xcb_delete_property_checked : LibXCB.xcb_delete_property
	cookie = fn(
		conn.handle,
		window,
		property
	)
	
	XCBVoidFuture(conn, cookie, checked)
end
