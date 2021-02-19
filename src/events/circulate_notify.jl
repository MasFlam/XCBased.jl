struct XCBCirculateNotifyEvent <: XCBEvent
	sequence:: UInt16
	event:: LibXCB.xcb_window_t
	window:: LibXCB.xcb_window_t
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

function libxcb_event(ev:: XCBCirculateNotifyEvent):: LibXCB.xcb_circulate_notify_event_t
	LibXCB.xcb_circulate_notify_event_t(
		LibXCB.XCB_CIRCULATE_NOTIFY,
		0, # pad
		ev.sequence,
		ev.event,
		ev.window,
		(0, 0, 0, 0), # pad
		ev.place,
		(0, 0, 0) # pad
	)
end
