function uninstall_colormap(
	conn:: XCBConnection,
	colormap:: Integer;
	checked:: Bool
):: XCBVoidFuture
	fn = checked ? LibXCB.xcb_uninstall_colormap_checked : LibXCB.xcb_uninstall_colormap
	cookie = fn(
		conn.handle,
		colormap
	)
	
	XCBVoidFuture(conn, cookie, checked)
end
