struct XCBGrabPointerReply <: XCBReply
	sequence:: UInt16
	status:: UInt8
end

function XCBGrabPointerReply(replyptr:: Ptr{LibXCB.xcb_grab_pointer_reply_t})
	reply = unsafe_load(replyptr)
	XCBGrabPointerReply(
		reply.sequence,
		reply.status
	)
end
