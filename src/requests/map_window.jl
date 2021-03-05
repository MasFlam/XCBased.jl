function xcb_map_window(
	conn:: XCBConnection,
	window:: Integer;
	checked:: Bool
):: XCBVoidFuture
	fn = checked ? LibXCB.xcb_map_window_checked : LibXCB.xcb_map_window
	cookie = fn(conn.handle, window)
	
	XCBVoidFuture(conn, cookie, checked)
end
