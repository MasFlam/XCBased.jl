function poly_text_16(
	conn:: XCBConnection,
	drawable:: Integer,
	gc:: Integer,
	x:: Integer,
	y:: Integer,
	items:: Vector{LibXCB.xcb_char2b_t};
	checked:: Bool
):: XCBVoidFuture
	fn = checked ? LibXCB.xcb_poly_text_16_checked : LibXCB.xcb_poly_text_16
	cookie = fn(
		conn.handle,
		drawable,
		gc,
		x, y,
		length(items),
		items
	)
	
	XCBVoidFuture(conn, cookie, checked)
end
