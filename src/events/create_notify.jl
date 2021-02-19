struct XCBCreateNotifyEvent <: XCBEvent
	sequence:: UInt16
	parent:: LibXCB.xcb_window_t
	window:: LibXCB.xcb_window_t
	x:: Int16
	y:: Int16
	width:: UInt16
	height:: UInt16
	border_width:: UInt16
	override_redirect:: Bool
end

function XCBCreateNotifyEvent(evptr:: Ptr{LibXCB.xcb_generic_event_t})
	ev = unsafe_load(Ptr{LibXCB.xcb_create_notify_event_t}(evptr))
	XCBCreateNotifyEvent(
		ev.sequence,
		ev.parent,
		ev.window,
		ev.x,
		ev.y,
		ev.width,
		ev.height,
		ev.border_width,
		ev.override_redirect != 0,
	)
end

function libxcb_event(ev:: XCBCreateNotifyEvent):: LibXCB.xcb_create_notify_event_t
	LibXCB.xcb_create_notify_event_t(
		LibXCB.XCB_CREATE_NOTIFY,
		0, # pad
		ev.sequence,
		ev.parent,
		ev.window,
		ev.x,
		ev.y,
		ev.width,
		ev.height,
		ev.border_width,
		ev.override_redirect,
		0 # pad
	)
end
