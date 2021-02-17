struct XCBListFontsWithInfoReply <: XCBReply
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
	replies_hint:: UInt32
	properties:: Vector{LibXCB.xcb_fontprop_t}
	name:: String
end

function XCBListFontsWithInfoReply(replyptr:: Ptr{LibXCB.xcb_list_fonts_with_info_reply_t})
	reply = unsafe_load(replyptr)
	XCBListFontsWithInfoReply(
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
		reply.replies_hint,
		unsafe_wrap(Array, LibXCB.xcb_list_fonts_with_info_properties(replyptr), reply.properties_len),
		unsafe_string(LibXCB.xcb_list_fonts_with_info_name(replyptr) |> Ptr{UInt8}, reply.name_len)
	)
end
