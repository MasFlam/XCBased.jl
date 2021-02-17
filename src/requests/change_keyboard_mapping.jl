function change_keyboard_mapping(
	conn:: XCBConnection,
	keycode_count:: Integer,
	first_keycode:: Integer,
	keysyms_per_keycode:: Integer,
	keysyms:: Vector{Integer};
	checked:: Bool
):: XCBVoidFuture
	fn = checked ? LibXCB.xcb_change_keyboard_mapping_checked : LibXCB.xcb_change_keyboard_mapping
	cookie = fn(
		conn.handle,
		keycode_count,
		first_keycode,
		keysyms_per_keycode,
		keysyms
	)
	
	XCBVoidFuture(conn, cookie, checked)
end
