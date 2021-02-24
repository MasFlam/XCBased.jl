function list_hosts(
	conn:: XCBConnection;
	checked:: Bool
):: XCBListHostsFuture
	fn = checked ? LibXCB.xcb_list_hosts : LibXCB.xcb_list_hosts_unchecked
	cookie = fn(conn.handle)
	
	XCBListHostsFuture(conn, cookie, checked)
end
