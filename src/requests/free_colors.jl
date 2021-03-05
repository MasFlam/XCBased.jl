function xcb_free_colors(
	conn:: XCBConnection,
	colormap:: Integer,
	plane_mask:: Integer,
	pixels:: Vector{UInt32};
	checked:: Bool
):: XCBVoidFuture
	fn = checked ? LibXCB.xcb_free_colors_checked : LibXCB.xcb_free_colors
	cookie = fn(
		conn.handle,
		colormap,
		planemask,
		length(pixels),
		pixels
	)
	
	XCBVoidFuture(conn, cookie, checked)
end
