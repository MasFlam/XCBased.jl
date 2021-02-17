function warp_pointer(
	conn:: XCBConnection,
	src_window:: Integer,
	dst_window:: Integer,
	src_x:: Integer,
	src_y:: Integer,
	src_width:: Integer,
	src_height:: Integer,
	dst_x:: Integer,
	dst_y:: Integer;
	checked:: Bool
):: XCBVoidFuture
	fn = checked ? LibXCB.xcb_warp_pointer_checked : LibXCB.xcb_warp_pointer
	cookie = fn(
		conn.handle,
		src_window,
		dst_window,
		src_x,
		src_y,
		src_width,
		src_height,
		dst_x,
		dst_y
	)
	
	XCBVoidFuture(conn, cookie, checked)
end
