struct XCBMapNotifyEvent <: XCBEvent
	sequence:: UInt16
	event:: LibXCb.xcb_window_t
	window:: LibXCb.xcb_window_t
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
