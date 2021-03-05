function xcb_map_subwindows(
	conn:: XCBConnection,
	window:: Integer;
	checked:: Bool
):: XCBVoidFuture
	fn = checked ? LibXCB.xcb_map_subwindows_checked : LibXCB.xcb_map_subwindows
	cookie = fn(conn.handle, window)
	
	XCBVoidFuture(conn, cookie, checked)
end
