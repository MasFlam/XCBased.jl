struct XCBGetGeometryReply <: XCBReply
	sequence:: UInt16
	depth:: UInt8
	root:: LibXCB.xcb_window_t
	x:: Int16
	y:: Int16
	width:: UInt16
	height:: UInt16
	border_width:: UInt16
end

function XCBGetGeometryReply(replyptr:: Ptr{LibXCB.xcb_get_geometry_reply_t})
	reply = unsafe_load(replyptr)
	XCBGetGeometryReply(
		reply.sequence,
		reply.depth,
		reply.root,
		reply.x,
		reply.y,
		reply.width,
		reply.height,
		reply.border_width
	)
end
