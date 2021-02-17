struct XCBAllocColorReply <: XCBReply
	sequence:: UInt16
	pixel:: UInt32
	red:: UInt16
	green:: UInt16
	blue:: UInt16
end

function XCBAllocColorReply(replyptr:: Ptr{LibXCB.xcb_alloc_color_reply_t})
	reply = unsafe_load(replyptr)
	XCBAllocColorReply(
		reply.sequence,
		reply.pixel,
		reply.red,
		reply.green,
		reply.blue
	)
end
