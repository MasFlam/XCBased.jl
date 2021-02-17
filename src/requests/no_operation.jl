function no_operation(
	conn:: XCBConnection;
	checked:: Bool
):: XCBVoidFuture
	fn = checked ? LibXCB.xcb_no_operation_checked : LibXCB.xcb_no_operation
	cookie = fn(conn.handle)
	
	XCBVoidFuture(conn, cookie, checked)
end
