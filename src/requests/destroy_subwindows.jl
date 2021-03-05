function xcb_destroy_subwindows(
	conn:: XCBConnection,
	window:: Integer;
	checked:: Bool
):: XCBVoidFuture
	fn = checked ? LibXCB.xcb_destroy_subwindows_checked : LibXCB.xcb_destroy_subwindows
	cookie = fn(conn.handle, window)
	
	XCBVoidFuture(conn, cookie, checked)
end
