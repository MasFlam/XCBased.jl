struct XCBClientMessageEvent <: XCBEvent
	sequence:: UInt16
	format:: UInt8
	window:: LibXCB.xcb_window_t
	type:: LibXCB.xcb_atom_t
	data:: Vector{UInt8}
end

function XCBClientMessageEvent(evptr:: Ptr{LibXCB.xcb_generic_event_t})
	ev = unsafe_load(Ptr{LibXCB.xcb_client_message_event_t}(evptr))
	data = UInt8[ev.data...]
	XCBClientMessageEvent(
		ev.sequence,
		ev.format,
		ev.window,
		ev.type,
		data
	)
end
