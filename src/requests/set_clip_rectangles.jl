function xcb_set_clip_rectangles(
	conn:: XCBConnection,
	ordering:: Integer,
	gc:: Integer,
	clip_x_origin:: Integer,
	clip_y_origin:: Integer,
	rectangles:: Vector{LibXCB.xcb_rectangle_t};
	checked:: Bool
):: XCBVoidFuture
	fn = checked ? LibXCB.xcb_set_clip_rectangles_checked : LibXCB.xcb_set_clip_rectangles
	cookie = fn(
		conn.handle,
		ordering,
		gc,
		clip_x_origin,
		clip_y_origin,
		length(rectangles),
		rectangles
	)
	
	XCBVoidFuture(conn, cookie, checked)
end
