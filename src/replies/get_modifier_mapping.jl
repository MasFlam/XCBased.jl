struct XCBGetModifierMappingReply <: XCBReply
	sequence:: UInt16
	keycodes_per_modifier:: UInt8
	keycodes:: Vector{LibXCB.xcb_keycode_t}
end

function XCBGetModifierMappingReply(replyptr:: Ptr{LibXCB.xcb_get_modifier_mapping_reply_t})
	reply = unsafe_load(replyptr)
	XCBGetModifierMappingReply(
		reply.sequence,
		reply.keycodes_per_modifier,
		unsafe_wrap(Array, LibXCB.xcb_get_modifier_mapping_keycodes(replyptr), reply.keycodes_per_modifier * 8)
	)
end
