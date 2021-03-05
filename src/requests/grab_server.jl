function xcb_grab_server(
	conn:: XCBConnection;
	checked:: Bool
):: XCBVoidFuture
	fn = checked ? LibXCB.xcb_grab_server_checked : LibXCB.xcb_grab_server
	cookie = fn(conn.handle)
	
	XCBVoidFuture(conn, cookie, checked)
end
