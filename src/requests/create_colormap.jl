function create_colormap(
	conn:: XCBConnection,
	alloc:: Integer,
	colormap:: Integer,
	window:: Integer,
	visual:: Integer;
	checked:: Bool
):: XCBVoidFuture
	fn = checked ? LibXCB.xcb_create_colormap_checked : LibXCB.xcb_create_colormap
	cookie = fn(
		conn.handle,
		alloc,
		colormap,
		window,
		visual
	)
	
	XCBVoidFuture(conn, cookie, checked)
end
