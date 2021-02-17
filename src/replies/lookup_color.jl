struct XCBLookupColorReply <: XCBReply
	sequence:: UInt16
	exact_red::UInt16
	exact_green:: UInt16
	exact_blue:: UInt16
	visual_red:: UInt16
	visual_green:: UInt16
	visual_blue:: UInt16
end

function XCBLookupColorReply(replyptr:: Ptr{LibXCB.xcb_lookup_color_reply_t})
	reply = unsafe_load(replyptr)
	XCBLookupColorReply(
		reply.sequence,
		reply.exact_red,
		reply.exact_green,
		reply.exact_blue,
		reply.visual_red,
		reply.visual_green,
		reply.visual_blue
	)
end
