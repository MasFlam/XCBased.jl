struct XCBGetSelectionOwnerReply <: XCBReply
	sequence:: UInt16
	owner:: LibXCB.xcb_window_t
end

function XCBGetSelectionOwnerReply(replyptr:: Ptr{LibXCB.xcb_get_selection_owner_reply_t})
	reply = unsafe_load(replyptr)
	XCBGetSelectionOwnerReply(
		reply.sequence,
		reply.owner
	)
end
