function get_keyboard_mapping(
	conn:: XCBConnection,
	first_keycode:: Integer,
	count:: Integer;
	checked:: Bool
):: XCBGetKeyboardMappingFuture
	fn = checked ? LibXCB.xcb_get_keyboard_mapping : LibXCB.xcb_get_keyboard_mapping_unchecked
	cookie = fn(
		conn.handle,
		first_keycode,
		count
	)
	
	XCBGetKeyboardMappingFuture(conn, cookie, checked)
end
