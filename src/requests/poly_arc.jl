function xcb_poly_arc(
	conn:: XCBConnection,
	drawable:: Integer,
	gc:: Integer,
	arcs:: Vector{LibXCB.xcb_arc_t};
	checked:: Bool
):: XCBVoidFuture
	fn = checked ? LibXCB.xcb_poly_arc_checked : LibXCB.xcb_poly_arc
	cookie = fn(
		conn.handle,
		drawable,
		gc,
		length(arcs),
		arcs
	)
	
	XCBVoidFuture(conn, cookie, checked)
end
