struct XCBSetPointerMappingReply <: XCBReply
	sequence:: UInt16
	status:: UInt8
end

function XCBSetPointerMappingReply(replyptr:: Ptr{LibXCB.xcb_set_pointer_mapping_reply_t})
	reply = unsafe_load(replyptr)
	XCBSetPointerMappingReply(
		reply.sequence,
		reply.status
	)
end
