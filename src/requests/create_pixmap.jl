function create_pixmap(
	conn:: XCBConnection,
	depth:: Integer,
	pixmap:: Integer,
	drawable:: Integer,
	width:: Integer,
	height:: Integer;
	checked:: Bool
):: XCBVoidFuture
	fn = checked ? LibXCB.xcb_create_pixmap_checked : LibXCB.xcb_create_pixmap
	cookie = fn(
		conn.handle,
		depth,
		pixmap,
		drawable,
		width,
		height
	)
	
	XCBVoidFuture(conn, cookie, checked)
end
