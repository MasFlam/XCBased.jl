function xcb_change_save_set(
	conn:: XCBConnection,
	mode:: Integer,
	window:: Integer;
	checked:: Bool
):: XCBVoidFuture
	fn = checked ? LibXCB.xcb_change_save_set_checked : LibXCB.xcb_change_save_set
	cookie = fn(conn.handle, mode, window)
	
	XCBVoidFuture(conn, cookie, checked)
end
