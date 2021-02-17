struct XCBQueryExtensionReply <: XCBReply
	sequence:: UInt16
	present:: Bool
	major_opcode:: UInt8
	first_event:: UInt8
	first_error:: UInt8
end

function XCBQueryExtensionReply(replyptr:: Ptr{LibXCB.xcb_query_extension_reply_t})
	reply = unsafe_load(replyptr)
	XCBQueryExtensionReply(
		reply.sequence,
		reply.present != 0,
		reply.major_opcode,
		reply.first_event,
		reply.first_error
	)
end
