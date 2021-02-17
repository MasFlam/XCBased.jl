function copy_colormap_and_free(
	conn:: XCBConnection,
	colormap:: Integer,
	src_cmap:: Integer;
	checked:: Bool
):: XCBVoidFuture
	fn = checked ? LibXCB.xcb_copy_colormap_and_free_checked : LibXCB.xcb_copy_colormap_and_free
	cookie = fn(
		conn.handle,
		colormap,
		src_cmap
	)
	
	XCBVoidFuture(conn, cookie, checked)
end
