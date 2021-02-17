function poly_fill_rectangle(
	conn:: XCBConnection,
	drawable:: Integer,
	gc:: Integer,
	rectangles:: Vector{LibXCB.xcb_rectangle_t};
	checked:: Bool
):: XCBVoidFuture
	fn = checked ? LibXCB.xcb_poly_fill_rectangle_checked : LibXCB.xcb_poly_fill_rectangle
	cookie = fn(
		conn.handle,
		drawable,
		gc,
		length(rectangles),
		rectangles
	)
	
	XCBVoidFuture(conn, cookie, checked)
end
