struct XCBCirculateRequestEvent <: XCBEvent
	sequence:: UInt16
	event:: LibXCB.xcb_window_t
	window:: LibXCB.xcb_window_t
	place:: UInt8
end

function XCBCirculateRequestEvent(evptr:: Ptr{LibXCB.xcb_generic_event_t})
	ev = unsafe_load(Ptr{LibXCB.xcb_circulate_request_event_t}(evptr))
	XCBCirculateRequestEvent(
		ev.sequence,
		ev.event,
		ev.window,
		ev.place
	)
end

function libxcb_event(ev:: XCBCirculateRequestEvent):: LibXCB.xcb_circulate_request_event_t
	LibXCB.xcb_circulate_request_event_t(
		LibXCB.XCB_CIRCULATE_REQUEST,
		0, # pad
		ev.sequence,
		ev.event,
		ev.window,
		(0, 0, 0, 0), # pad
		ev.place,
		(0, 0, 0) # pad
	)
end
