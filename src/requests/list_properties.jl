function xcb_list_properties(
	conn:: XCBConnection,
	window:: Integer;
	checked:: Bool
):: XCBListPropertiesFuture
	fn = checked ? LibXCB.xcb_list_properties : LibXCB.xcb_list_properties_unchecked
	cookie = fn(
		conn.handle,
		window
	)
	
	XCBListPropertiesFuture(conn, cookie, checked)
end
