struct XCBGetPointerControlReply <: XCBReply
	sequence:: UInt16
	acceleration_numerator:: UInt16
	acceleration_denominator:: UInt16
	threshold:: UInt16
end

function XCBGetPointerControlReply(replyptr:: Ptr{LibXCB.xcb_get_pointer_control_reply_t})
	reply = unsafe_load(replyptr)
	XCBGetPointerControlReply(
		reply.sequence,
		reply.acceleration_numerator,
		reply.acceleration_denominator,
		reply.threshold
	)
end
