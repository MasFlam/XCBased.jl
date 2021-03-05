function xcb_poly_point(
	conn:: XCBConnection,
	coordinate_mode:: Integer,
	drawable:: Integer,
	gc:: Integer,
	points:: Vector{LibXCB.xcb_point_t};
	checked:: Bool
):: XCBVoidFuture
	fn = checked ? LibXCB.xcb_poly_point_checked : LibXCB.xcb_poly_point
	cookie = fn(
		conn.handle,
		coordinate_mode,
		drawable,
		gc,
		length(points),
		points
	)
	
	XCBVoidFuture(conn, cookie, checked)
end
