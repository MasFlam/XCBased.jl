function close_font(
	conn:: XCBConnection,
	font:: Integer;
	checked:: Bool
):: XCBVoidFuture
	fn = checked ? LibXCB.xcb_close_font_checked : LibXCB.xcb_close_font
	cookie = fn(
		conn.handle,
		font
	)
	
	XCBVoidFuture(conn, cookie, checked)
end
