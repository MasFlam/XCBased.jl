struct XCBUnmapNotifyEvent <: XCBEvent
	sequence:: UInt16
	event:: LibXCB.xcb_window_t
	window:: LibXCB.xcb_window_t
	from_configure:: Bool
end

function XCBUnmapNotifyEvent(evptr:: Ptr{LibXCB.xcb_generic_event_t})
	ev = unsafe_load(Ptr{LibXCB.xcb_unmap_notify_event_t}(evptr))
	XCBUnmapNotifyEvent(
		ev.sequence,
		ev.event,
		ev.window,
		ev.from_configure
	)
end

function libxcb_event(ev:: XCBUnmapNotifyEvent):: LibXCB.xcb_unmap_notify_event_t
	LibXCB.xcb_unmap_notify_event_t(
		LibXCB.XCB_UNMAP_NOTIFY,
		0, # pad
		ev.sequence,
		ev.event,
		ev.window,
		ev.from_configure,
		(0, 0, 0) # pad
	)
end
