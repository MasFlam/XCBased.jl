struct XCBSetModifierMappingReply <: XCBReply
	sequence:: UInt16
	status:: UInt8
end

function XCBSetModifierMappingReply(replyptr:: Ptr{LibXCB.xcb_set_modifier_mapping_reply_t})
	reply = unsafe_load(replyptr)
	XCBSetModifierMappingReply(
		reply.sequence,
		reply.status
	)
end
