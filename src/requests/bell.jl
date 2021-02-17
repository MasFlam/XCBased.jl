function bell(
	conn:: XCBConnection,
	percent:: Integer;
	checked:: Bool
):: XCBVoidFuture
	fn = checked ? LibXCB.xcb_bell_checked : LibXCB.xcb_bell
	cookie = fn(
		conn.handle,
		percent
	)
	
	XCBVoidFuture(conn, cookie, checked)
end
