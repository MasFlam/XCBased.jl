function get_modifier_mapping(
	conn:: XCBConnection;
	checked:: Bool
):: XCBGetModifierMappingFuture
	fn = checked ? LibXCB.xcb_get_modifier_mapping : LibXCB.xcb_get_modifier_mapping_unchecked
	cookie = fn(conn.handle)
	
	XCBGetModifierMappingFuture(conn, cookie, checked)
end
