struct XCBGetMotionEventsReply <: XCBReply
	sequence:: UInt16
	events:: Vector{LibXCB.xcb_timecoord_t}
end

function XCBGetMotionEventsReply(replyptr:: Ptr{LibXCB.xcb_get_motion_events_reply_t})
	reply = unsafe_load(replyptr)
	XCBGetMotionEventsReply(
		reply.sequence,
		unsafe_wrap(Array, LibXCB.xcb_get_motion_events_events(replyptr), reply.events_len)
	)
end
