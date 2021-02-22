function poly_text_8(
	conn:: XCBConnection,
	drawable:: Integer,
	gc:: Integer,
	x:: Integer,
	y:: Integer,
	items:: Vector{UInt8};
	checked:: Bool
):: XCBVoidFuture
	fn = checked ? LibXCB.xcb_poly_text_8_checked : LibXCB.xcb_poly_text_8
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
