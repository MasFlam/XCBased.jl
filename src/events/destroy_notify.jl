struct XCBDestroyNotifyEvent <: XCBEvent
	sequence:: UInt16
	event:: LibXCB.xcb_window_t
	window:: LibXCB.xcb_window_t
end

function XCBDestroyNotifyEvent(evptr:: Ptr{LibXCB.xcb_generic_event_t})
	ev = unsafe_load(Ptr{LibXCB.xcb_destroy_notify_event_t}(evptr))
	XCBDestroyNotifyEvent(
		ev.sequence,
		ev.event,
		ev.window
	)
end

function libxcb_event(ev:: XCBDestroyNotifyEvent):: LibXCB.xcb_destroy_notify_event_t
	LibXCB.xcb_destroy_notify_event_t(
		LibXCB.XCB_DESTROY_NOTIFY,
		0,
		ev.sequence,
		ev.event,
		ev.window
	)
end
