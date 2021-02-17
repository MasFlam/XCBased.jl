function alloc_color(
	conn:: XCBConnection,
	colormap:: Integer,
	red:: Integer,
	green:: Integer,
	blue:: Integer;
	checked:: Bool
):: XCBAllocColorFuture
	fn = checked ? LibXCB.xcb_alloc_color : LibXCB.xcb_alloc_color_unchecked
	cookie = fn(
		conn.handle,
		colormap,
		red,
		green,
		blue
	)
	
	XCBAllocColorFuture(conn, cookie, checked)
end
