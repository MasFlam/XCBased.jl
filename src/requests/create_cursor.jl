function create_cursor(
	conn:: XCBConnection,
	cursor:: Integer,
	source:: Integer,
	mask:: Integer,
	fore_red:: Integer,
	fore_green:: Integer,
	fore_blue:: Integer,
	back_red:: Integer,
	back_green:: Integer,
	back_blue:: Integer,
	x:: Integer,
	y:: Integer;
	checked:: Bool
):: XCBVoidFuture
	fn = checked ? LibXCB.xcb_create_cursor_checked : LibXCB.xcb_create_cursor
	cookie = fn(
		conn.handle,
		cursor,
		source,
		mask,
		fore_red,
		fore_green,
		fore_blue,
		back_red,
		back_green,
		back_blue,
		x, y
	)
	
	XCBVoidFuture(conn, cookie, checked)
end
