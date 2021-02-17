function set_pointer_mapping(
	conn:: XCBConnection,
	map:: Vector{UInt8};
	checked:: Bool
):: XCBSetPointerMappingFuture
	fn = checked ? LibXCB.xcb_set_pointer_mapping : LibXCB.xcb_set_pointer_mapping_unchecked
	cookie = fn(
		conn.handle,
		length(map),
		map
	)
	
	XCBSetPointerMappingFuture(conn, cookie, checked)
end
