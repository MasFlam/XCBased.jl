struct XCBLeaveNotifyEvent <: XCBEvent
	sequence:: UInt16
	detail:: UInt8
	time:: LibXCB.xcb_timestamp_t
	root:: LibXCB.xcb_window_t
	event:: LibXCB.xcb_window_t
	child:: LibXCB.xcb_window_t
	root_x:: Int16
	root_y:: Int16
	event_x:: Int16
	event_y:: Int16
	state:: UInt16
	mode:: UInt8
	focus:: Bool
	same_screen:: Bool
end

function XCBLeaveNotifyEvent(evptr:: Ptr{LibXCB.xcb_generic_event_t})
	ev = unsafe_load(Ptr{LibXCB.xcb_leave_notify_event_t}(evptr))
	XCBLeaveNotifyEvent(
		ev.sequence,
		ev.detail,
		ev.time,
		ev.root,
		ev.event,
		ev.child,
		ev.root_x,
		ev.root_y,
		ev.event_x,
		ev.event_y,
		ev.state,
		ev.mode,
		ev.same_screen_focus & 0x1 != 0,
		ev.same_screen_focus & 0x2 != 0
	)
end

function libxcb_event(ev:: XCBLeaveNotifyEvent):: LibXCB.xcb_leave_notify_event_t
	LibXCB.xcb_leave_notify_event_t(
		LibXCB.XCB_LEAVE_NOTIFY,
		ev.detail,
		ev.sequence,
		ev.time,
		ev.root,
		ev.event,
		ev.child,
		ev.root_x,
		ev.root_y,
		ev.event_x,
		ev.event_y,
		ev.state,
		ev.mode,
		ev.same_screen
	)
end
