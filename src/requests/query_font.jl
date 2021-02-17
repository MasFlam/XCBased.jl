function query_font(
	conn:: XCBConnection,
	fontable:: Integer;
	checked:: Bool
):: XCBQueryFontFuture
	fn = checked ? LibXCB.xcb_query_font : LibXCB.xcb_query_font_unchecked
	cookie = fn(
		conn.handle,
		fontable
	)
	
	XCBQueryFontFuture(conn, cookie, checked)
end
