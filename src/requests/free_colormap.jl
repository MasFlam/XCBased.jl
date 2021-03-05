function xcb_free_colormap(
	conn:: XCBConnection,
	colormap:: Integer;
	checked:: Bool
):: XCBVoidFuture
	fn = checked ? LibXCB.xcb_free_colormap_checked : LibXCB.xcb_free_colormap
	cookie = fn(
		conn.handle,
		colormap
	)
	
	XCBVoidFuture(conn, cookie, checked)
end
