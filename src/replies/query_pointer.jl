struct XCBQueryPointerReply <: XCBReply
	sequence:: UInt16
	same_screen:: Bool
	root:: LibXCB.xcb_window_t
	child:: LibXCB.xcb_window_t
	root_x:: Int16
	root_y:: Int16
	win_x:: Int16
	win_y:: Int16
	mask:: UInt16
end

function XCBQueryPointerReply(replyptr:: Ptr{LibXCB.xcb_query_pointer_reply_t})
	reply = unsafe_load(replyptr)
	XCBQueryPointerReply(
		reply.sequence,
		reply.same_screen != 0,
		reply.root,
		reply.child,
		reply.root_x,
		reply.root_y,
		reply.win_x,
		reply.win_y,
		reply.mask
	)
end
