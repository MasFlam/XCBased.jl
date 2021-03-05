function xcb_query_extension(
	conn:: XCBConnection,
	name:: AbstractString;
	checked:: Bool
):: XCBQueryExtensionFuture
	fn = checked ? LibXCB.xcb_query_extension : LibXCB.xcb_query_extension_unchecked
	namebytes = Vector{UInt8}(name)
	cookie = fn(
		conn.handle,
		length(namebytes),
		namebytes
	)
	
	XCBQueryExtensionFuture(conn, cookie, checked)
end
