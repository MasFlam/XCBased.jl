function lookup_color(
	conn:: XCBConnection,
	colormap:: Integer,
	name:: AbstractString;
	checked:: Bool
):: XCBLookupColorFuture
	fn = checked ? LibXCB.xcb_lookup_color : LibXCB.xcb_lookup_color_unchecked
	namebytes = Vector{UInt8}(name)
	cookie = fn(
		conn.handle,
		colormap,
		length(namebytes),
		namebytes
	)
	
	XCBLookupColorFuture(conn, cookie, checked)
end
