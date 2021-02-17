struct XCBGetScreenSaverReply <: XCBReply
	sequence:: UInt16
	timeout:: UInt16
	interval:: UInt16
	prefer_blanking:: Bool
	allow_exposures:: Bool
end

function XCBGetScreenSaverReply(replyptr:: Ptr{LibXCB.xcb_get_screen_saver_reply_t})
	reply = unsafe_load(replyptr)
	XCBGetScreenSaverReply(
		reply.sequence,
		reply.timeout,
		reply.interval,
		reply.prefer_blanking != 0,
		reply.allow_exposures != 0
	)
end
