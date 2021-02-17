function query_text_extents(
	conn:: XCBConnection,
	fontable:: Integer,
	string:: Vector{LibXCB.xcb_char2b_t};
	checked:: Bool
):: XCBQueryTextExtentsFuture
	fn = checked ? LibXCB.xcb_query_text_extents : LibXCB.xcb_query_text_extents_unchecked
	cookie = fn(
		conn.handle,
		fontable,
		length(string),
		string
	)
	
	XCBQueryTextExtentsFuture(conn, cookie, checked)
end
