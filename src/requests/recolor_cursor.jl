function recolor_cursor(
	conn:: XCBConnection,
	cursor:: Integer,
	fore_red:: Integer,
	fore_green:: Integer,
	fore_blue:: Integer,
	back_red:: Integer,
	back_green:: Integer,
	back_blue:: Integer;
	checked:: Bool
):: XCBVoidFuture
	fn = checked ? LibXCB.xcb_recolor_cursor_checked : LibXCB.xcb_recolor_cursor
	cookie = fn(
		conn.handle,
		cursor,
		fore_red,
		fore_green,
		fore_blue,
		back_red,
		back_green,
		back_blue
	)
	
	XCBVoidFuture(conn, cookie, checked)
end
