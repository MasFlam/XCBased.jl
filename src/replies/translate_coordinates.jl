struct XCBTranslateCoordinatesReply <: XCBReply
	sequence:: UInt16
	same_screen:: Bool
	child:: LibXCB.xcb_window_t
	dst_x:: Int16
	dst_y:: Int16
end

function XCBTranslateCoordinatesReply(replyptr:: Ptr{LibXCB.xcb_translate_coordinates_reply_t})
	reply = unsafe_load(replyptr)
	XCBTranslateCoordinatesReply(
		reply.sequence,
		reply.same_screen != 0,
		reply.child,
		reply.dst_x,
		reply.dst_y
	)
end
