struct XCBListHostsReply <: XCBReply
	sequence:: UInt16
	mode:: UInt8
	hosts:: Vector{Vector{UInt8}}
end

function XCBListHostsReply(replyptr:: Ptr{LibXCB.xcb_list_hosts_reply_t})
	reply = unsafe_load(replyptr)
	hosts = Vector{UInt8}[]
	
	iter = Ref(LibXCB.xcb_list_hosts_hosts_iterator(replyptr))
	while iter[].rem > 0
		address_len = LibXCB.xcb_host_address_length(iter[].data)
		address = LibXCB.xcb_host_address(iter[].data)
		
		push!(hosts, unsafe_wrap(Array, address, address_len))
		LibXCB.xcb_host_next(iter)
	end
	
	XCBListHostsReply(
		reply.sequence,
		reply.mode,
		hosts
	)
end
