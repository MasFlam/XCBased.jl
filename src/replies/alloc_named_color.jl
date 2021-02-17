struct XCBAllocNamedColorReply <: XCBReply
	sequence:: UInt16
	pixel:: UInt32
	exact_red:: UInt16
	exact_green:: UInt16
	exact_blue:: UInt16
	visual_red:: UInt16
	visual_green:: UInt16
	visual_blue:: UInt16
end

function XCBAllocNamedColorReply(replyptr:: Ptr{LibXCB.xcb_alloc_named_color_reply_t})
	reply = unsafe_load(replyptr)
	XCBAllocNamedColorReply(
		reply.sequence,
		reply.pixel,
		reply.exact_red,
		reply.exact_green,
		reply.exact_blue,
		reply.visual_red,
		reply.visual_green,
		reply.visual_blue
	)
end
