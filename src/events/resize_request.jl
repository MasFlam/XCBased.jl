struct XCBResizeRequestEvent <: XCBEvent
	sequence:: UInt16
	window:: LibXCb.xcb_window_t
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
