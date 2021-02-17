function store_colors(
	conn:: XCBConnection,
	colormap:: Integer,
	items:: Vector{LibXCB.xcb_coloritem_t};
	checked:: Bool
):: XCBVoidFuture
	fn = checked ? LibXCB.xcb_store_colors_checked : LibXCB.xcb_store_colors
	cookie = fn(
		conn.handle,
		colormap,
		length(items),
		items
	)
	
	XCBVoidFuture(conn, cookie, checked)
end
