struct XCBMapRequestEvent <: XCBEvent
	sequence:: UInt16
	parent:: LibXCb.xcb_window_t
	window:: LibXCb.xcb_window_t
end

function XCBMapRequestEvent(evptr:: Ptr{LibXCB.xcb_generic_event_t})
	ev = unsafe_load(Ptr{LibXCB.xcb_map_request_event_t}(evptr))
	XCBMapRequestEvent(
		ev.sequence,
		ev.parent,
		ev.window
	)
end
