struct XCBQueryColorsReply <: XCBReply
	sequence:: UInt16
	colors:: Vector{LibXCB.xcb_rgb_t}
end

function XCBQueryColorsReply(replyptr:: Ptr{LibXCB.xcb_query_colors_reply_t})
	reply = unsafe_load(replyptr)
	XCBQueryColorsReply(
		reply.sequence,
		unsafe_wrap(Array, LibXCB.xcb_query_colors_colors(replyptr), reply.colors_len)
	)
end
