function xcb_circulate_windows(
	conn:: XCBConnection,
	direction:: Integer,
	window:: Integer;
	checked:: Bool
):: XCBVoidFuture
	fn = checked ? LibXCB.xcb_circulate_windows_checked : LibXCB.xcb_circulate_windows
	cookie = fn(conn.handle, direction, window)
	
	XCBVoidFuture(conn, cookie, checked)
end
