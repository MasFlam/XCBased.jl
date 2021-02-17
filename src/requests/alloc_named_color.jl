function alloc_named_color(
	conn:: XCBConnection,
	colormap:: Integer,
	name:: AbstractString;
	checked:: Bool
):: XCBAllocNamedColorFuture
	fn = checked ? LibXCB.xcb_alloc_named_color : LibXCB.xcb_alloc_named_color_unchecked
	namebytes = Vector{UInt8}(name)
	cookie = fn(
		conn.handle,
		colormap,
		length(namebytes),
		namebytes
	)
	
	XCBAllocNamedColorFuture(conn, cookie, checked)
end
