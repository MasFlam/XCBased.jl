function xcb_fill_poly(
	conn:: XCBConnection,
	drawable:: Integer,
	gc:: Integer,
	shape:: Integer,
	coordinate_mode:: Integer,
	points:: Vector{LibXCB.xcb_point_t};
	checked:: Bool
):: XCBVoidFuture
	fn = checked ? LibXCB.xcb_fill_poly_checked : LibXCB.xcb_fill_poly
	cookie = fn(
		conn.handle,
		drawable,
		gc,
		shape,
		coordinate_mode,
		length(points),
		points
	)
	
	XCBVoidFuture(conn, cookie, checked)
end
