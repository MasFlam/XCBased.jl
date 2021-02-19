struct XCBMappingNotifyEvent <: XCBEvent
	sequence:: UInt16
	request:: UInt8
	first_keycode:: LibXCB.xcb_keycode_t
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

function libxcb_event(ev:: XCBMappingNotifyEvent):: LibXCB.xcb_mapping_notify_event_t
	LibXCB.xcb_mapping_notify_event_t(
		LibXCB.XCB_MAPPING_NOTIFY,
		0, # pad
		ev.sequence,
		ev.request,
		ev.first_keycode,
		ev.count,
		0 # pad
	)
end
