struct XCBGetInputFocusReply <: XCBReply
	sequence:: UInt16
	revert_to:: UInt8
	focus:: LibXCB.xcb_window_t
end

function XCBGetInputFocusReply(replyptr:: Ptr{LibXCB.xcb_get_input_focus_reply_t})
	reply = unsafe_load(replyptr)
	XCBGetInputFocusReply(
		reply.sequence,
		reply.revert_to,
		reply.focus
	)
end
