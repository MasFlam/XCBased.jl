function unmap_subwindows(
	conn:: XCBConnection,
	window:: Integer;
	checked:: Bool
):: XCBVoidFuture
	fn = checked ? LibXCB.xcb_unmap_subwindows_checked : LibXCB.xcb_unmap_subwindows
	cookie = fn(conn.handle, window)
	
	XCBVoidFuture(conn, cookie, checked)
end
