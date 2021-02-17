function set_modifier_mapping(
	conn:: XCBConnection,
	keycodes_per_modifier:: Integer,
	keycodes:: NTuple{8, Vector{LibXCB.xcb_keycode_t}};
	checked:: Bool
):: XCBSetModifierMappingFuture
	fn = checked ? LibXCB.xcb_set_modifier_mapping : LibXCB.xcb_set_modifier_mapping_unchecked
	_keycodes = LibXCB.xcb_keycode_t[]
	for kc in keycodes
		append!(_keycodes, kc)
	end
	cookie = fn(
		conn.handle,
		keycodes_per_modifier,
		keycodes
	)
	
	XCBSetModifierMappingFuture(conn, cookie, checked)
end
