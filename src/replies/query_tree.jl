struct XCBQueryTreeReply <: XCBReply
	sequence:: UInt16
	root:: LibXCB.xcb_window_t
	parent:: LibXCB.xcb_window_t
	children:: Vector{LibXCB.xcb_window_t}
end

function XCBQueryTreeReply(replyptr:: Ptr{LibXCB.xcb_query_tree_reply_t})
	reply = unsafe_load(replyptr)
	XCBQueryTreeReply(
		reply.sequence,
		reply.root,
		reply.parent,
		unsafe_wrap(Array, LibXCB.xcb_query_tree_children(replyptr), reply.children_len)
	)
end
