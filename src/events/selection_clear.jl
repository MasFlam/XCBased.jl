struct XCBSelectionClearEvent <: XCBEvent
	sequence:: UInt16
	time:: LibXCB.xcb_timestamp_t
	owner:: LibXCB.xcb_window_t
	selection:: LibXCB.xcb_atom_t
end

function XCBSelectionClearEvent(evptr:: Ptr{LibXCB.xcb_generic_event_t})
	ev = unsafe_load(Ptr{LibXCB.xcb_selection_clear_event_t}(evptr))
	XCBSelectionClearEvent(
		ev.sequence,
		ev.time,
		ev.owner,
		ev.selection
	)
end

function libxcb_event(ev:: XCBSelectionClearEvent):: LibXCB.xcb_selection_clear_event_t
	LibXCB.xcb_selection_clear_event_t(
		LibXCB.XCB_SELECTION_CLEAR,
		0, # pad
		ev.sequence,
		ev.time,
		ev.owner,
		ev.selection
	)
end
