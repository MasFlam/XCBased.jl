function xcb_reparent_window(
	conn:: XCBConnection,
	window:: Integer,
	parent:: Integer,
	x:: Integer,
	y:: Integer;
	checked:: Bool
):: XCBVoidFuture
	fn = checked ? LibXCB.xcb_reparent_window_checked : LibXCB.xcb_reparent_window
	cookie = fn(conn.handle, window, parent, x, y)
	
	XCBVoidFuture(conn, cookie, checked)
end
