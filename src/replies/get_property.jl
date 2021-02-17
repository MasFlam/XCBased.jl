struct XCBGetPropertyReply <: XCBReply
	sequence:: UInt16
	format:: UInt8
	type:: LibXCB.xcb_atom_t
	value:: Vector{UInt8}
end

function XCBGetPropertyReply(replyptr:: Ptr{LibXCB.xcb_get_property_reply_t})
	reply = unsafe_load(replyptr)
	XCBGetPropertyReply(
		reply.sequence,
		reply.format,
		reply.type,
		unsafe_wrap(Array, LibXCB.xcb_get_property_value(replyptr) |> Ptr{UInt8}, reply.bytes_after) # bytes after aka .value_len * .format / 8
	)
end
