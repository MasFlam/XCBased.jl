function xcb_list_fonts(
	conn:: XCBConnection,
	max_names:: Integer,
	pattern:: AbstractString;
	with_info:: Bool,
	checked:: Bool
):: Union{XCBListFontsFuture, XCBListFontsWithInfoFuture}
	if checked
		if with_info
			fn = LibXCB.xcb_list_fonts_with_info
		else
			fn = LibXCB.xcb_list_fonts
		end
	else
		if with_info
			fn = LibXCB.xcb_list_fonts_with_info_unchecked
		else
			fn = LibXCB.xcb_list_fonts_unchecked
		end
	end
	patbytes = Vector{UInt8}(pattern)
	cookie = fn(
		conn.handle,
		max_names,
		length(patbytes),
		patbytes
	)
	
	(with_info ? XCBListFontsWithInfoFuture : XCBListFontsFuture)(conn, cookie, checked)
end
