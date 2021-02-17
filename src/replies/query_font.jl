struct XCBQueryFontReply <: XCBReply
	sequence:: UInt16
	min_bounds:: LibXCB.xcb_charinfo_t
	max_bounds:: LibXCB.xcb_charinfo_t
	min_char_or_byte2:: UInt16
	max_char_or_byte2:: UInt16
	default_char:: UInt16
	draw_direction:: UInt8
	min_byte1:: UInt8
	max_byte1:: UInt8
	all_chars_exist:: Bool
	font_ascent:: Int16
	font_descent:: Int16
	font_properties:: Vector{LibXCB.xcb_fontprop_t}
	char_infos:: Vector{LibXCB.xcb_charinfo_t}
end

function XCBQueryFontReply(replyptr:: Ptr{LibXCB.xcb_query_font_reply_t})
	reply = unsafe_load(replyptr)
	XCBQueryFontReply(
		reply.sequence,
		reply.min_bounds,
		reply.max_bounds,
		reply.min_char_or_byte2,
		reply.max_char_or_byte2,
		reply.default_char,
		reply.draw_direction,
		reply.min_byte1,
		reply.max_byte1,
		reply.all_chars_exist != 0,
		reply.font_ascent,
		reply.font_descent,
		unsafe_wrap(Array, LibXCB.xcb_query_font_properties(replyptr), reply.properties_len),
		unsafe_wrap(Array, LibXCB.xcb_query_font_char_infos(replyptr), reply.char_infos_len)
	)
end
