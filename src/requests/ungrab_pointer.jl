function ungrab_pointer(
	conn:: XCBConnection,
	time:: Integer;
	checked:: Bool
):: XCBVoidFuture
	fn = checked ? LibXCB.xcb_ungrab_pointer_checked : LibXCB.xcb_ungrab_pointer
	cookie = fn(
		conn.handle,
		time
	)
	
	XCBVoidFuture(conn, cookie, checked)
end
