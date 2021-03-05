function xcb_put_image(
	conn:: XCBConnection,
	format:: Integer,
	drawable:: Integer,
	gc:: Integer,
	width:: Integer,
	height:: Integer,
	dst_x:: Integer,
	dst_y:: Integer,
	left_pad:: Integer,
	depth:: Integer,
	data:: Vector{UInt8};
	checked:: Bool
):: XCBVoidFuture
	fn = checked ? LibXCB.xcb_put_image_checked : LibXCB.xcb_put_image
	cookie = fn(
		conn.handle,
		format,
		drawable,
		gc,
		width,
		height,
		dst_x,
		dst_y,
		left_pad,
		depth,
		length(data),
		data
	)
	
	XCBVoidFuture(conn, cookie, checked)
end
