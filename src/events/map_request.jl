struct XCBMapRequestEvent <: XCBEvent
	sequence:: UInt16
	parent:: LibXCB.xcb_window_t
	window:: LibXCB.xcb_window_t
end

function XCBMapRequestEvent(evptr:: Ptr{LibXCB.xcb_generic_event_t})
	ev = unsafe_load(Ptr{LibXCB.xcb_map_request_event_t}(evptr))
	XCBMapRequestEvent(
		ev.sequence,
		ev.parent,
		ev.window
	)
end

function libxcb_event(ev:: XCBMapRequestEvent):: LibXCB.xcb_map_request_event_t
	LibXCB.xcb_map_request_event_t(
		LibXCB.XCB_MAP_REQUEST,
		0, # pad
		ev.sequence,
		ev.parent,
		ev.window
	)
end
