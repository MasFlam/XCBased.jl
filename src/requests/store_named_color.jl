function store_named_color(
	conn:: XCBConnection,
	flags:: Integer,
	colormap:: Integer,
	pixel:: Integer,
	name:: AbstractString;
	checked:: Bool
):: XCBVoidFuture
	fn = checked ? LibXCB.xcb_store_named_color_checked : LibXCB.xcb_store_named_color
	namebytes = Vector{UInt8}(name)
	cookie = fn(
		conn.handle,
		flags,
		colormap,
		pixel,
		length(namebytes),
		namebytes
	)
	
	XCBVoidFuture(conn, cookie, checked)
end
