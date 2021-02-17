struct XCBGrabKeyboardReply <: XCBReply
	sequence:: UInt16
	status:: UInt8
end

function XCBGrabKeyboardReply(replyptr:: Ptr{LibXCB.xcb_grab_keyboard_reply_t})
	reply = unsafe_load(replyptr)
	XCBGrabKeyboardReply(
		reply.sequence,
		reply.status
	)
end
