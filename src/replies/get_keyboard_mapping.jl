struct XCBGetKeyboardMappingReply <: XCBReply
	sequence:: UInt16
	keysyms_per_keycode:: UInt8
	keysyms:: Vector{LibXCB.xcb_keysym_t}
end

function XCBGetKeyboardMappingReply(replyptr:: Ptr{LibXCB.xcb_get_keyboard_mapping_reply_t})
	reply = unsafe_load(replyptr)
	XCBGetKeyboardMappingReply(
		reply.sequence,
		reply.keysyms_per_keycode,
		unsafe_wrap(Array, LibXCB.xcb_get_keyboard_mapping_keysyms(replyptr), reply.length)
	)
end
