struct XCBQueryKeymapReply <: XCBReply
	sequence:: UInt16
	keys:: NTuple{256, Bool}
end

function XCBQueryKeymapReply(replyptr:: Ptr{LibXCB.xcb_query_keymap_reply_t})
	reply = unsafe_load(replyptr)
	keys = falses(256)
	for i in 0:31
		byte = reply.keys[i]
		# LSB -- 8i, MSB -- 8i+7, and account for julian 1-based indexing
		for j in 0:7
			keys[8i + j + 1] = byte & (1 << j) != 0
		end
	end
	XCBQueryKeymapReply(
		reply.sequence,
		(keys...,)
	)
end
