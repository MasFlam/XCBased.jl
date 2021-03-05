function xcb_destroy_window(
	conn:: XCBConnection,
	window:: Integer;
	checked:: Bool
):: XCBVoidFuture
	fn = checked ? LibXCB.xcb_destroy_window_checked : LibXCB.xcb_destroy_window
	cookie = fn(conn.handle, window)
	
	XCBVoidFuture(conn, cookie, checked)
end
