struct XCBCirculateNotifyEvent <: XCBEvent
	sequence:: UInt16
	event:: LibXCb.xcb_window_t
	window:: LibXCb.xcb_window_t
	place:: UInt8
end

function XCBCirculateNotifyEvent(evptr:: Ptr{LibXCB.xcb_generic_event_t})
	ev = unsafe_load(Ptr{LibXCB.xcb_circulate_notify_event_t}(evptr))
	XCBCirculateNotifyEvent(
		ev.sequence,
		ev.event,
		ev.window,
		ev.place
	)
end
