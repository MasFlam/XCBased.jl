struct XCBFocusInEvent <: XCBEvent
	sequence:: UInt16
	detail:: UInt8
	event:: LibXCB.xcb_window_t
	mode:: UInt8
end

function XCBFocusInEvent(evptr:: Ptr{LibXCB.xcb_generic_event_t})
	ev = unsafe_load(Ptr{LibXCB.xcb_focus_in_event_t}(evptr))
	XCBFocusInEvent(
		ev.sequence,
		ev.detail,
		ev.event,
		ev.mode
	)
end

function libxcb_event(ev:: XCBFocusInEvent):: LibXCB.xcb_focus_in_event_t
	LibXCB.xcb_focus_in_event_t(
		LibXCB.XCB_FOCUS_IN,
		ev.detail,
		ev.sequence,
		ev.event,
		ev.mode,
		(0, 0, 0) # pad
	)
end
