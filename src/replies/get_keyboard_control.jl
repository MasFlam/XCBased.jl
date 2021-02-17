struct XCBGetKeyboardControlReply <: XCBReply
	sequence:: UInt16
	global_auto_repeat:: Bool #UInt8 (defined as {On, Off})
	led_mask:: UInt32
	key_click_percent:: UInt8
	bell_percent:: UInt8
	bell_pitch:: UInt16
	bell_duration:: UInt16
	auto_repeats:: NTuple{256, Bool}
end

function XCBGetKeyboardControlReply(replyptr:: Ptr{LibXCB.xcb_get_keyboard_control_reply_t})
	reply = unsafe_load(replyptr)
	ars = falses(256)
	for i in 0:31
		byte = reply.auto_repeats[i]
		# LSB -- 8i, MSB -- 8i+7, and account for julian 1-based indexing
		for j in 0:7
			ars[8i + j + 1] = byte & (1 << j) != 0
		end
	end
	XCBGetKeyboardControlReply(
		reply.sequence,
		reply.global_auto_repeat != 0,
		reply.led_mask,
		reply.key_click_percent,
		reply.bell_percent,
		reply.bell_pitch,
		reply.bell_duration,
		(ars...,)
	)
end
