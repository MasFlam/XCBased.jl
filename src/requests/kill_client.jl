function kill_client(
	conn:: XCBConnection,
	resource:: Integer;
	checked:: Bool
):: XCBVoidFuture
	fn = checked ? LibXCB.xcb_kill_client_checked : LibXCB.xcb_kill_client
	cookie = fn(
		conn.handle,
		resource
	)
	
	XCBVoidFuture(conn, cookie, checked)
end
