const EVENT_TYPES = [
	XCBKeyPressEvent,
	XCBKeyReleaseEvent,
	XCBButtonPressEvent,
	XCBButtonReleaseEvent,
	XCBMotionNotifyEvent,
	XCBEnterNotifyEvent,
	XCBLeaveNotifyEvent,
	XCBFocusInEvent,
	XCBFocusOutEvent,
	XCBKeymapNotifyEvent,
	XCBExposeEvent,
	XCBGraphicsExposureEvent,
	XCBNoExposureEvent,
	XCBVisibilityNotifyEvent,
	XCBCreateNotifyEvent,
	XCBDestroyNotifyEvent,
	XCBUnmapNotifyEvent,
	XCBMapNotifyEvent,
	XCBMapRequestEvent,
	XCBReparentNotifyEvent,
	XCBConfigureNotifyEvent,
	XCBGravityNotifyEvent,
	XCBResizeRequestEvent,
	XCBConfigureRequestEvent,
	XCBCirculateNotifyEvent,
	XCBCirculateRequestEvent,
	XCBPropertyNotifyEvent,
	XCBSelectionClearEvent,
	XCBSelectionRequestEvent,
	XCBSelectionNotifyEvent,
	XCBColormapNotifyEvent,
	XCBMappingNotifyEvent,
	XCBClientMessageEvent
]

"""
	wait_for_event(conn:: XCBConnection) -> (XCBEvent, Bool)
Block until an event arrives from the server. Returns the event and whether it was sent using the
SendEvent request.
"""
function wait_for_event(conn:: XCBConnection):: Tuple{XCBEvent, Bool}
	evptr = LibXCB.xcb_wait_for_event(conn.handle)
	ev = unsafe_load(evptr)
	
	event_type = ev.response_type & 0x7f
	2 <= event_type <= 34 && error("unknown event type: $event_type (response_type = $(ev.response_type))")
	
	event = EVENT_TYPES[event_type - 1](evptr)
	Libc.free(evptr)
	
	event, ev.response_type & 0x80 != 0
end

"""
	poll_for_event(conn:: XCBConnection) -> Union{(XCBEvent, Bool), Nothing}
Pop an event from the queue of received events. Returns the event and whether it was sent using the
SendEvent request, or `nothing` if no events are queued.
"""
function poll_for_event(conn:: XCBConnection):: Union{Tuple{XCBEvent, Bool}, Nothing}
	evptr = LibXCB.xcb_poll_for_event(conn.handle)
	evptr == C_NULL && return nothing
	ev = unsafe_load(evptr)
	
	event_type = ev.response_type & 0x7f
	2 <= event_type <= 34 && error("unknown event type: $event_type (response_type = $(ev.response_type))")
	
	event = EVENT_TYPES[event_type - 1](evptr)
	Libc.free(evptr)
	
	event, ev.response_type & 0x80 != 0
end
