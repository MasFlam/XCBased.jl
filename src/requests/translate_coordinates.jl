function translate_coordinates(
	conn:: XCBConnection,
	src_window:: Integer,
	dst_window:: Integer,
	src_x:: Integer,
	src_y:: Integer;
	checked:: Bool
):: XCBTranslateCoordinatesFuture
	fn = checked ? LibXCB.xcb_translate_coordinates : LibXCB.xcb_translate_coordinates_unchecked
	cookie = fn(
		conn.handle,
		src_window,
		dst_window,
		src_x,
		src_y
	)
	
	XCBTranslateCoordinatesFuture(conn, cookie, checked)
end
