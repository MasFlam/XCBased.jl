struct XCBListInstalledColormapsReply <: XCBReply
	sequence:: UInt16
	colormaps:: Vector{LibXCB.xcb_colormap_t}
end

function XCBListInstalledColormapsReply(replyptr:: Ptr{LibXCB.xcb_list_installed_colormaps_reply_t})
	reply = unsafe_load(replyptr)
	XCBListInstalledColormapsReply(
		reply.sequence,
		unsafe_wrap(Array, LibXCB.xcb_list_installed_colormaps_cmaps(replyptr), reply.cmaps_len)
	)
end
