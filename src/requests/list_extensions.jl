function xcb_list_extensions(
	conn:: XCBConnection;
	checked:: Bool
):: XCBListExtensionsFuture
	fn = checked ? LibXCB.xcb_list_extensions : LibXCB.xcb_list_extensions_unchecked
	cookie = fn(conn.handle)
	
	XCBListExtensionsFuture(conn, cookie, checked)
end
