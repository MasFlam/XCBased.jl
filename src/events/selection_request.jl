struct XCBSelectionRequestEvent <: XCBEvent
	sequence:: UInt16
	time:: LibXCB.xcb_timestamp_t
	owner:: LibXCB.xcb_window_t
	requestor:: LibXCB.xcb_window_t
	selection:: LibXCB.xcb_atom_t
	target:: LibXCB.xcb_atom_t
	property:: LibXCB.xcb_atom_t
end

function XCBSelectionRequestEvent(evptr:: Ptr{LibXCB.xcb_generic_event_t})
	ev = unsafe_load(Ptr{LibXCB.xcb_selection_request_event_t}(evptr))
	XCBSelectionRequestEvent(
		ev.sequence,
		ev.time,
		ev.owner,
		ev.requestor,
		ev.selection,
		ev.target,
		ev.property
	)
end

function libxcb_event(ev:: XCBSelectionRequestEvent):: LibXCB.xcb_selection_request_event_t
	LibXCB.xcb_selection_request_event_t(
		LibXCB.XCB_SELECTION_REQUEST,
		0, # pad
		ev.sequence,
		ev.time,
		ev.owner,
		ev.requestor,
		ev.selection,
		ev.target,
		ev.property
	)
end
