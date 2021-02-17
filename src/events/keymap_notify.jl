struct XCBKeymapNotifyEvent <: XCBEvent
	sequence:: UInt16
	keys:: NTuple{248, Bool}
end

function XCBKeymapNotifyEvent(evptr:: Ptr{LibXCB.xcb_generic_event_t})
	ev = unsafe_load(Ptr{LibXCB.xcb_keymap_notify_event_t}(evptr))
	# the first byte (for keys 0..7) is omitted here by the protocol :c
	keys = falses(248)
	for i in 0:30
		byte = ev.keys[i]
		for j in 0:7
			keys[8i + j + 1] = byte & (1 << j) != 0
		end
	end
	XCBKeymapNotifyEvent(
		ev.sequence,
		(keys...,)
	)
end
