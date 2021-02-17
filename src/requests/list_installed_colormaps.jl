function list_installed_colormaps(
	conn:: XCBConnection,
	window:: Integer;
	checked:: Bool
):: XCBListInstalledColormapsFuture
	fn = checked ? LibXCB.xcb_list_installed_colormaps : LibXCB.xcb_list_installed_colormaps_unchecked
	cookie = fn(
		conn.handle,
		window
	)
	
	XCBListInstalledColormapsFuture(conn, cookie, checked)
end
