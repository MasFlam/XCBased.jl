struct XCBExposeEvent <: XCBEvent
	sequence:: UInt16
	window:: LibXCB.xcb_window_t
	x:: Int16
	y:: Int16
	width:: UInt16
	height:: UInt16
	count:: UInt16
end

function XCBExposeEvent(evptr:: Ptr{LibXCB.xcb_generic_event_t})
	ev = unsafe_load(Ptr{LibXCB.xcb_expose_event_t}(evptr))
	XCBExposeEvent(
		ev.sequence,
		ev.window,
		ev.x,
		ev.y,
		ev.width,
		ev.height,
		ev.count
	)
end

function libxcb_event(ev:: XCBExposeEvent):: LibXCB.xcb_expose_event_t
	LibXCB.xcb_expose_event_t(
		LibXCB.XCB_EXPOSE,
		0, # pad
		ev.sequence,
		ev.window,
		ev.x,
		ev.y,
		ev.width,
		ev.height,
		ev.count,
		(0, 0) # pad
	)
end
