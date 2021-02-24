function get_image(
	conn:: XCBConnection,
	format:: Integer,
	drawable:: Integer,
	x:: Integer,
	y:: Integer,
	width:: Integer,
	height:: Integer,
	plane_mask:: Integer;
	checked:: Bool
):: XCBGetImageFuture
	fn = checked ? LibXCB.xcb_get_image : LibXCB.xcb_get_image_unchecked
	cookie = fn(
		conn.handle,
		format,
		drawable,
		x, y,
		width,
		height,
		plane_mask
	)
	
	XCBGetImageFuture(conn, cookie, checked)
end
