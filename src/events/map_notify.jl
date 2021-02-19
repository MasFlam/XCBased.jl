struct XCBMapNotifyEvent <: XCBEvent
	sequence:: UInt16
	event:: LibXCB.xcb_window_t
	window:: LibXCB.xcb_window_t
	override_redirect:: Bool
end

function XCBMapNotifyEvent(evptr:: Ptr{LibXCB.xcb_generic_event_t})
	ev = unsafe_load(Ptr{LibXCB.xcb_map_notify_event_t}(evptr))
	XCBMapNotifyEvent(
		ev.sequence,
		ev.event,
		ev.window,
		ev.override_redirect
	)
end

function libxcb_event(ev:: XCBMapNotifyEvent):: LibXCB.xcb_map_notify_event_t
	LibXCB.xcb_map_notify_event_t(
		LibXCB.XCB_MAP_NOTIFY,
		0, # pad
		ev.sequence,
		ev.event,
		ev.window,
		ev.override_redirect,
		(0, 0, 0) # pad
	)
end
