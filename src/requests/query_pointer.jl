function xcb_query_pointer(
	conn:: XCBConnection,
	window:: Integer;
	checked:: Bool
):: XCBQueryPointerFuture
	fn = checked ? LibXCB.xcb_query_pointer : LibXCB.xcb_query_pointer_unchecked
	cookie = fn(
		conn.handle,
		window
	)
	
	XCBQueryPointerFuture(conn, cookie, checked)
end
