function get_pointer_mapping(
	conn:: XCBConnection;
	checked:: Bool
):: XCBGetPointerMappingFuture
	fn = checked ? LibXCB.xcb_get_pointer_mapping : LibXCB.xcb_get_pointer_mapping_unchecked
	cookie = fn(conn.handle)
	
	XCBGetPointerMappingFuture(conn, cookie, checked)
end
