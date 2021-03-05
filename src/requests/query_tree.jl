function xcb_query_tree(
	conn:: XCBConnection,
	window:: Integer;
	checked:: Bool
):: XCBQueryTreeFuture
	fn = checked ? LibXCB.xcb_query_tree : LibXCB.xcb_query_tree_unchecked
	cookie = fn(conn.handle, window)
	
	XCBQueryTreeFuture(conn, cookie, checked)
end
