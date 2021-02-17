struct XCBUnmapNotifyEvent <: XCBEvent
	sequence:: UInt16
	event:: LibXCb.xcb_window_t
	window:: LibXCb.xcb_window_t
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
