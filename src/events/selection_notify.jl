struct XCBSelectionNotifyEvent <: XCBEvent
	sequence:: UInt16
	time:: LibXCB.xcb_timestamp_t
	requestor:: LibXCB.xcb_window_t
	selection:: LibXCB.xcb_atom_t
	target:: LibXCB.xcb_atom_t
	property:: LibXCB.xcb_atom_t
end

function XCBSelectionNotifyEvent(evptr:: Ptr{LibXCB.xcb_generic_event_t})
	ev = unsafe_load(Ptr{LibXCB.xcb_selection_notify_event_t}(evptr))
	XCBSelectionNotifyEvent(
		ev.sequence,
		ev.time,
		ev.requestor,
		ev.selection,
		ev.target,
		ev.property
	)
end

function libxcb_event(ev:: XCBSelectionNotifyEvent):: LibXCB.xcb_selection_notify_event_t
	LibXCB.xcb_selection_notify_event_t(
		LibXCB.XCB_SELECTION_NOTIFY,
		0, # pad
		ev.sequence,
		ev.time,
		ev.requestor,
		ev.selection,
		ev.target,
		ev.property
	)
end
