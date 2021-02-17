struct XCBMappingNotifyEvent <: XCBEvent
	sequence:: UInt16
	request:: UInt8
	first_keycode:: LibXCb.xcb_keycode_t
	count:: UInt8
end

function XCBMappingNotifyEvent(evptr:: Ptr{LibXCB.xcb_generic_event_t})
	ev = unsafe_load(Ptr{LibXCB.xcb_mapping_notify_event_t}(evptr))
	XCBMappingNotifyEvent(
		ev.sequence,
		ev.request,
		ev.first_keycode,
		ev.count
	)
end
