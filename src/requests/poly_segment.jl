function xcb_poly_segment(
	conn:: XCBConnection,
	drawable:: Integer,
	gc:: Integer,
	segments:: Vector{LibXCB.xcb_segment_t};
	checked:: Bool
):: XCBVoidFuture
	fn = checked ? LibXCB.xcb_poly_segment_checked : LibXCB.xcb_poly_segment
	cookie = fn(
		conn.handle,
		drawable,
		gc,
		length(segments),
		segments
	)
	
	XCBVoidFuture(conn, cookie, checked)
end
