function set_access_control(
	conn:: XCBConnection,
	mode:: Integer;
	checked:: Bool
):: XCBVoidFuture
	fn = checked ? LibXCB.xcb_set_access_control_checked : LibXCB.xcb_set_access_control
	cookie = fn(
		conn.handle,
		mode
	)
	
	XCBVoidFuture(conn, cookie, checked)
end
