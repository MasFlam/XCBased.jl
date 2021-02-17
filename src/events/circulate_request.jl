struct XCBCirculateRequestEvent <: XCBEvent
	sequence:: UInt16
	event:: LibXCb.xcb_window_t
	window:: LibXCb.xcb_window_t
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
