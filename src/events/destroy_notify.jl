struct XCBDestroyNotifyEvent <: XCBEvent
	sequence:: UInt16
	event:: LibXCb.xcb_window_t
	window:: LibXCb.xcb_window_t
end

function XCBDestroyNotifyEvent(evptr:: Ptr{LibXCB.xcb_generic_event_t})
	ev = unsafe_load(Ptr{LibXCB.xcb_destroy_notify_event_t}(evptr))
	XCBDestroyNotifyEvent(
		ev.sequence,
		ev.event,
		ev.window
	)
end
