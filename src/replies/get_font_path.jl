struct XCBGetFontPathReply <: XCBReply
	sequence:: UInt16
	fonts:: Vector{String}
end

function XCBGetFontPathReply(replyptr:: Ptr{LibXCB.xcb_get_font_path_reply_t})
	reply = unsafe_load(replyptr)
	fonts = String[]
	font_qty = reply.path_len # font_qty is how it's named in the request function, it's the count of fonts
	iter = Ref(LibXCB.xcb_get_font_path_path_iterator(replyptr))
	
	while font_qty > 0
		font_len = unsafe_load(iter[].data).name_len
		LibXCB.xcb_str_next(iter)
		
		font = unsafe_string(iter[].data |> Ptr{UInt8}, font_len)
		while font_len > 0
			LibXCB.xcb_str_next(iter)
			font_len -= 1
		end
		
		push!(fonts, font)
		font_qty -= 1
	end
	
	XCBGetFontPathReply(
		reply.sequence,
		fonts
	)
end
