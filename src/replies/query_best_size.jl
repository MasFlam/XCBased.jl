struct XCBQueryBestSizeReply <: XCBReply
	sequence:: UInt16
	width:: UInt16
	height:: UInt16
end

function XCBQueryBestSizeReply(replyptr:: Ptr{LibXCB.xcb_query_best_size_reply_t})
	reply = unsafe_load(replyptr)
	XCBQueryBestSizeReply(
		reply.sequence,
		reply.width,
		reply.height
	)
end
