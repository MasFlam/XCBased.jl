struct XCBListFontsReply <: XCBReply
	sequence:: UInt16
	names:: Vector{String}
end

function XCBListFontsReply(replyptr:: Ptr{LibXCB.xcb_list_fonts_reply_t})
	reply = unsafe_load(replyptr)
	names = String[]
	names_len = reply.names_len
	iter = Ref(LibXCB.xcb_list_fonts_names_iterator(replyptr))
	
	while names_len > 0
		name_len = unsafe_load(iter[].data).name_len
		LibXCB.xcb_str_next(iter)
		
		name = unsafe_string(iter[].data |> Ptr{UInt8}, name_len)
		while name_len > 0
			LibXCB.xcb_str_next(iter)
			name_len -= 1
		end
		
		push!(names, name)
		names_len -= 1
	end
	
	XCBListFontsReply(
		reply.sequence,
		names
	)
end
