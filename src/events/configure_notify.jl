struct XCBConfigureNotifyEvent <: XCBEvent
	sequence:: UInt16
	event:: LibXCB.xcb_window_t
	window:: LibXCB.xcb_window_t
	above_sibling:: LibXCB.xcb_window_t
	x:: Int16
	y:: Int16
	width:: UInt16
	height:: UInt16
	border_width:: UInt16
	override_redirect:: Bool
end

function XCBConfigureNotifyEvent(evptr:: Ptr{LibXCB.xcb_generic_event_t})
	ev = unsafe_load(Ptr{LibXCB.xcb_configure_notify_event_t}(evptr))
	XCBConfigureNotifyEvent(
		ev.sequence,
		ev.event,
		ev.window,
		ev.above_sibling,
		ev.x,
		ev.y,
		ev.width,
		ev.height,
		ev.border_width,
		ev.override_redirect != 0
	)
end

function libxcb_event(ev:: XCBConfigureNotifyEvent):: LibXCB.xcb_configure_notify_event_t
	LibXCB.xcb_configure_notify_event_t(
		LibXCB.XCB_CONFIGURE_NOTIFY,
		0, # pad
		ev.sequence,
		ev.event,
		ev.window,
		ev.above_sibling,
		ev.x,
		ev.y,
		ev.width,
		ev.height,
		ev.border_width,
		ev.override_redirect,
		0 # pad
	)
end
