struct XCBPropertyNotifyEvent <: XCBEvent
	sequence:: UInt16
	window:: LibXCB.xcb_window_t
	atom:: LibXCB.xcb_atom_t
	time:: LibXCB.xcb_timestamp_t
	state:: UInt8
end

function XCBPropertyNotifyEvent(evptr:: Ptr{LibXCB.xcb_generic_event_t})
	ev = unsafe_load(Ptr{LibXCB.xcb_property_notify_event_t}(evptr))
	XCBPropertyNotifyEvent(
		ev.sequence,
		ev.window,
		ev.atom,
		ev.time,
		ev.state
	)
end
