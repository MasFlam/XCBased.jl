function image_text_8(
	conn:: XCBConnection,
	drawable:: Integer,
	gc:: Integer,
	x:: Integer,
	y:: Integer,
	string:: Vector{UInt8};
	checked:: Bool
):: XCBVoidFuture
	fn = checked ? LibXCB.xcb_image_text_8_checked : LibXCB.xcb_image_text_8
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
