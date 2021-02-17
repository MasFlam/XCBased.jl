struct XCBReparentNotifyEvent <: XCBEvent
	sequence:: UInt16
	event:: LibXCb.xcb_window_t
	window:: LibXCb.xcb_window_t
	parent:: LibXCb.xcb_window_t
	x:: Int16
	y:: Int16
	override_redirect:: Bool
end

function XCBReparentNotifyEvent(evptr:: Ptr{LibXCB.xcb_generic_event_t})
	ev = unsafe_load(Ptr{LibXCB.xcb_reparent_notify_event_t}(evptr))
	XCBReparentNotifyEvent(
		ev.sequence,
		ev.event,
		ev.window,
		ev.parent,
		ev.x,
		ev.y,
		ev.override_redirect != 0
	)
end
