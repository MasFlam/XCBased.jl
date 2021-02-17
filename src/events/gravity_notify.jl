struct XCBGravityNotifyEvent <: XCBEvent
	sequence:: UInt16
	event:: LibXCb.xcb_window_t
	window:: LibXCb.xcb_window_t
	x:: Int16
	y:: Int16
end

function XCBGravityNotifyEvent(evptr:: Ptr{LibXCB.xcb_generic_event_t})
	ev = unsafe_load(Ptr{LibXCB.xcb_gravity_notify_event_t}(evptr))
	XCBGravityNotifyEvent(
		ev.sequence,
		ev.event,
		ev.window,
		ev.x,
		ev.y
	)
end
