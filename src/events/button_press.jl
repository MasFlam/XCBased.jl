struct XCBButtonPressEvent <: XCBEvent
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
	same_screen:: Bool
end

function XCBButtonPressEvent(evptr:: Ptr{LibXCB.xcb_generic_event_t})
	ev = unsafe_load(Ptr{LibXCB.xcb_button_press_event_t}(evptr))
	XCBButtonPressEvent(
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
		ev.same_screen != 0
	)
end

function libxcb_event(ev:: XCBButtonPressEvent):: LibXCB.xcb_button_press_event_t
	LibXCB.xcb_button_press_event_t(
		LibXCB.XCB_BUTTON_PRESS,
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
		ev.same_screen,
		0 # pad
	)
end
