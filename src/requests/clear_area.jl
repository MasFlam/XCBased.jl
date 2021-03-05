function xcb_clear_area(
	conn:: XCBConnection,
	exposures:: Bool,
	window:: Integer,
	x:: Integer,
	y:: Integer,
	width:: Integer,
	height:: Integer;
	checked:: Bool
):: XCBVoidFuture
	fn = checked ? LibXCB.xcb_clear_area_checked : LibXCB.xcb_clear_area
	cookie = fn(
		conn.handle,
		exposures,
		window,
		x, y,
		width,
		height
	)
	
	XCBVoidFuture(conn, cookie, checked)
end
