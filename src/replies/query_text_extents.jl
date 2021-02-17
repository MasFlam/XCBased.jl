struct XCBQueryTextExtentsReply <: XCBReply
	sequence:: UInt16
	draw_direction:: UInt8
	font_ascent:: Int16
	font_descent:: Int16
	overall_ascent:: Int16
	overall_descent:: Int16
	overall_width:: Int32
	overall_left:: Int32
	overall_right:: Int32
end

function XCBQueryTextExtentsReply(replyptr:: Ptr{LibXCB.xcb_query_text_extents_reply_t})
	reply = unsafe_load(replyptr)
	XCBQueryTextExtentsReply(
		reply.sequence,
		reply.draw_direction,
		reply.font_ascent,
		reply.font_descent,
		reply.overall_ascent,
		reply.overall_descent,
		reply.overall_width,
		reply.overall_left,
		reply.overall_right
	)
end
