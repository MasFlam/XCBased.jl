function xcb_get_window_attributes(
	conn:: XCBConnection,
	window:: Integer;
	checked:: Bool
):: XCBGetWindowAttributesFuture
	fn = checked ? LibXCB.xcb_get_window_attributes : LibXCB.xcb_get_window_attributes_unchecked
	cookie = fn(conn.handle, window)
	
	XCBGetWindowAttributesFuture(conn, cookie, checked)
end
