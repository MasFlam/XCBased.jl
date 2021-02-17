struct XCBFocusOutEvent <: XCBEvent
	sequence:: UInt16
	detail:: UInt8
	event:: LibXCB.xcb_window_t
	mode:: UInt8
end

function XCBFocusOutEvent(evptr:: Ptr{LibXCB.xcb_generic_event_t})
	ev = unsafe_load(Ptr{LibXCB.xcb_focus_out_event_t}(evptr))
	XCBFocusOutEvent(
		ev.sequence,
		ev.detail,
		ev.event,
		ev.mode
	)
end
