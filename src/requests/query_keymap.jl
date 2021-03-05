function xcb_query_keymap(
	conn:: XCBConnection;
	checked:: Bool
):: XCBQueryKeymapFuture
	fn = checked ? LibXCB.xcb_query_keymap : LibXCB.xcb_query_keymap_unchecked
	cookie = fn(conn.handle)
	
	XCBQueryKeymapFuture(conn, cookie, checked)
end
