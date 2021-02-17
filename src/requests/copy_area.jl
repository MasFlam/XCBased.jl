function copy_area(
	conn:: XCBConnection,
	src_drawable:: Integer,
	dst_drawable:: Integer,
	gc:: Integer,
	src_x:: Integer,
	src_y:: Integer,
	dst_x:: Integer,
	dst_y:: Integer,
	width:: Integer,
	height:: Integer;
	checked:: Bool
):: XCBVoidFuture
	fn = checked ? LibXCB.xcb_copy_area_checked : LibXCB.xcb_copy_area
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
		height
	)
	
	XCBVoidFuture(conn, cookie, checked)
end
