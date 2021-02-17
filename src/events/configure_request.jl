struct XCBConfigureRequestEvent <: XCBEvent
	sequence:: UInt16
	stack_mode:: UInt8
	parent:: LibXCb.xcb_window_t
	window:: LibXCb.xcb_window_t
	sibling:: LibXCb.xcb_window_t
	x:: Int16
	y:: Int16
	width:: UInt16
	height:: UInt16
	border_width:: UInt16
	value_mask:: UInt16
end

function XCBConfigureRequestEvent(evptr:: Ptr{LibXCB.xcb_generic_event_t})
	ev = unsafe_load(Ptr{LibXCB.xcb_configure_request_event_t}(evptr))
	XCBConfigureRequestEvent(
		ev.sequence,
		ev.stack_mode,
		ev.parent,
		ev.window,
		ev.sibling,
		ev.x,
		ev.y,
		ev.width,
		ev.height,
		ev.border_width,
		ev.value_mask,
	)
end
