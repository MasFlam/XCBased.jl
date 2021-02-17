function get_font_path(
	conn:: XCBConnection;
	checked:: Bool
):: XCBGetFontPathFuture
	fn = checked ? LibXCB.xcb_get_font_path : LibXCB.xcb_get_font_path_unchecked
	cookie = fn(conn.handle)
	
	XCBGetFontPathFuture(conn, cookie, checked)
end
