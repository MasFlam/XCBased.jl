function xcb_set_font_path(
	conn:: XCBConnection,
	font_paths:: AbstractVector{<:AbstractString};
	checked:: Bool
):: XCBVoidFuture
	font_qty = length(font_paths)
	font = LibXCB.xcb_str_t[]
	
	for str in font_paths
		bytes = Vector{UInt8}(str)
		name_len = length(bytes)
		push!(font, LibXCB.xcb_str_t(name_len), LibXCB.xcb_str_t.(bytes)...)
	end
	
	fn = checked ? LibXCB.xcb_set_font_path_checked : LibXCB.xcb_set_font_path
	cookie = fn(
		conn.handle,
		font_qty,
		font
	)
	
	XCBVoidFuture(conn, cookie, checked)
end
