function query_best_size(
	conn:: XCBConnection,
	class:: Integer,
	drawable:: Integer,
	width:: Integer,
	height:: Integer;
	checked:: Bool
):: XCBQueryBestSizeFuture
	fn = checked ? LibXCB.xcb_query_best_size : LibXCB.xcb_query_best_size_unchecked
	cookie = fn(
		conn.handle,
		class,
		drawable,
		width,
		height
	)
	
	XCBQueryBestSizeFuture(conn, cookie, checked)
end
