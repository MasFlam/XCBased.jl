struct XCBGetAtomNameReply <: XCBReply
	sequence:: UInt16
	name:: String
end

function XCBGetAtomNameReply(replyptr:: Ptr{LibXCB.xcb_get_atom_name_reply_t})
	reply = unsafe_load(replyptr)
	XCBGetAtomNameReply(
		reply.sequence,
		unsafe_string(LibXCB.xcb_get_atom_name_name(replyptr) |> Ptr{UInt8}, reply.name_len)
	)
end
