function free_gc(
	conn:: XCBConnection,
	gc:: Integer;
	checked:: Bool
):: XCBVoidFuture
	fn = checked ? LibXCB.xcb_free_gc_checked : LibXCB.xcb_free_gc
	cookie = fn(
		conn.handle,
		gc
	)
	
	XCBVoidFuture(conn, cookie, checked)
end
