struct XCBResizeRequestEvent <: XCBEvent
	sequence:: UInt16
	window:: LibXCB.xcb_window_t
	width:: Int16
	height:: Int16
end

function XCBResizeRequestEvent(evptr:: Ptr{LibXCB.xcb_generic_event_t})
	ev = unsafe_load(Ptr{LibXCB.xcb_resize_request_event_t}(evptr))
	XCBResizeRequestEvent(
		ev.sequence,
		ev.window,
		ev.width,
		ev.height
	)
end

function libxcb_event(ev:: XCBResizeRequestEvent):: LibXCB.xcb_resize_request_event_t
	LibXCB.xcb_resize_request_event_t(
		LibXCB.XCB_RESIZE_REQUEST,
		0, # pad
		ev.sequence,
		ev.window,
		ev.width,
		ev.height
	)
end
