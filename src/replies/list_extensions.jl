struct XCBListExtensionsReply <: XCBReply
	sequence:: UInt16
	extensions:: Vector{String}
end

function XCBListExtensionsReply(replyptr:: Ptr{LibXCB.xcb_list_extensions_reply_t})
	reply = unsafe_load(replyptr)
	exts = String[]
	ext_count = reply.names_len
	iter = Ref(LibXCB.xcb_list_extensions_names_iterator(replyptr))
	
	while ext_count > 0
		ext_len = unsafe_load(iter[].data).name_len
		LibXCB.xcb_str_next(iter)
		
		ext = unsafe_string(iter[].data |> Ptr{UInt8}, ext_len)
		while ext_len > 0
			LibXCB.xcb_str_next(iter)
			ext_len -= 1
		end
		
		push!(exts, ext)
		ext_count -= 1
	end
	
	XCBListExtensionsReply(
		reply.sequence,
		exts
	)
end
