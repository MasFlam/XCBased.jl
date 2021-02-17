struct XCBVisibilityNotifyEvent <: XCBEvent
	sequence:: UInt16
	window:: LibXCb.xcb_window_t
	state:: UInt8
end

function XCBVisibilityNotifyEvent(evptr:: Ptr{LibXCB.xcb_generic_event_t})
	ev = unsafe_load(Ptr{LibXCB.xcb_visibility_notify_event_t}(evptr))
	XCBVisibilityNotifyEvent(
		ev.sequence,
		ev.window,
		ev.state
	)
end
