function xcb_ungrab_server(
	conn:: XCBConnection;
	checked:: Bool
):: XCBVoidFuture
	fn = checked ? LibXCB.xcb_ungrab_server_checked : LibXCB.xcb_ungrab_server
	cookie = fn(conn.handle)
	
	XCBVoidFuture(conn, cookie, checked)
end
