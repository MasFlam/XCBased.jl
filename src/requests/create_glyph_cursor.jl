function xcb_create_glyph_cursor(
	conn:: XCBConnection,
	cursor:: Integer,
	source_font:: Integer,
	mask_font:: Integer,
	source_char:: Integer,
	mask_char:: Integer,
	fore_red:: Integer,
	fore_green:: Integer,
	fore_blue:: Integer,
	back_red:: Integer,
	back_green:: Integer,
	back_blue:: Integer;
	checked:: Bool
):: XCBVoidFuture
	fn = checked ? LibXCB.xcb_create_glyph_cursor_checked : LibXCB.xcb_glyph_create_cursor
	cookie = fn(
		conn.handle,
		cursor,
		source_font,
		mask_font,
		source_char,
		mask_char,
		fore_red,
		fore_green,
		fore_blue,
		back_red,
		back_green,
		back_blue
	)
	
	XCBVoidFuture(conn, cookie, checked)
end
