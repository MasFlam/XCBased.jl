struct XCBListPropertiesReply <: XCBReply
	sequence:: UInt16
	atoms:: Vector{LibXCB.xcb_atom_t}
end

function XCBListPropertiesReply(replyptr:: Ptr{LibXCB.xcb_list_properties_reply_t})
	reply = unsafe_load(replyptr)
	XCBListPropertiesReply(
		reply.sequence,
		unsafe_wrap(Array, LibXCB.xcb_list_properties_atoms(replyptr), reply.atoms_len)
	)
end
