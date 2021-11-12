struct XCBGetImageReply <: XCBReply
	sequence:: UInt16
	depth:: UInt8
	visual:: LibXCB.xcb_visualid_t
	data:: Vector{UInt8}
end

function XCBGetImageReply(replyptr:: Ptr{LibXCB.xcb_get_image_reply_t})
	reply = unsafe_load(replyptr)
	XCBGetImageReply(
		reply.sequence,
		reply.depth,
		reply.visual,
		unsafe_wrap(
			Array,
			LibXCB.xcb_get_image_data(replyptr),
			LibXCB.xcb_get_image_data_length(replyptr)
		)
	)
end
