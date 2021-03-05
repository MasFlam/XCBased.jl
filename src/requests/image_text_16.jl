function xcb_image_text_16(
	conn:: XCBConnection,
	drawable:: Integer,
	gc:: Integer,
	x:: Integer,
	y:: Integer,
	string:: Vector{LibXCB.xcb_char2b_t};
	checked:: Bool
):: XCBVoidFuture
	fn = checked ? LibXCB.xcb_image_text_16_checked : LibXCB.xcb_image_text_16
	cookie = fn(
		conn.handle,
		length(string),
		drawable,
		gc,
		x, y,
		string
	)
	
	XCBVoidFuture(conn, cookie, checked)
end
