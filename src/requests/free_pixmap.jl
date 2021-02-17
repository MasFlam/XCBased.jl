function free_pixmap(
	conn:: XCBConnection,
	pixmap:: Integer;
	checked:: Bool
):: XCBVoidFuture
	fn = checked ? LibXCB.xcb_free_pixmap_checked : LibXCB.xcb_free_pixmap
	cookie = fn(
		conn.handle,
		pixmap
	)
	
	XCBVoidFuture(conn, cookie, checked)
end
