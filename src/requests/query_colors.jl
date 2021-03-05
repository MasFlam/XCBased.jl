function xcb_query_colors(
	conn:: XCBConnection,
	colormap:: Integer,
	pixels:: Vector{UInt32};
	checked:: Bool
):: XCBQueryColorsFuture
	fn = checked ? LibXCB.xcb_query_colors : LibXCB.xcb_query_colors_unchecked
	cookie = fn(
		conn.handle,
		colormap,
		length(pixels),
		pixels
	)
	
	XCBQueryColorsFuture(conn, cookie, checked)
end
