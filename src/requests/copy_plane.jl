function copy_plane(
	conn:: XCBConnection,
	src_drawable:: Integer,
	dst_drawable:: Integer,
	gc:: Integer,
	src_x:: Integer,
	src_y:: Integer,
	dst_x:: Integer,
	dst_y:: Integer,
	width:: Integer,
	height:: Integer,
	bit_plane:: Integer;
	checked:: Bool
):: XCBVoidFuture
	fn = checked ? LibXCB.xcb_copy_plane_checked : LibXCB.xcb_copy_plane
	cookie = fn(
		conn.handle,
		src_drawable,
		dst_drawable,
		gc,
		src_x,
		src_y,
		dst_x,
		dst_y,
		width,
		height,
		bit_plane
	)
	
	XCBVoidFuture(conn, cookie, checked)
end
