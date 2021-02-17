struct XCBGetPointerMappingReply <: XCBReply
	sequence:: UInt16
	map:: Vector{UInt8}
end

function XCBGetPointerMappingReply(replyptr:: Ptr{LibXCB.xcb_get_pointer_mapping_reply_t})
	reply = unsafe_load(replyptr)
	XCBGetPointerMappingReply(
		reply.sequence,
		unsafe_wrap(Array, LibXCB.xcb_get_pointer_mapping_map(replyptr), reply.map_len)
	)
end
