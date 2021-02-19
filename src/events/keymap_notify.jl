struct XCBKeymapNotifyEvent <: XCBEvent
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
		(keys...,)
	)
end

function libxcb_event(ev:: XCBKeymapNotifyEvent):: LibXCB.xcb_keymap_notify_event_t
	keys = (fill(UInt8(0), 31)...,)
	tupind = 1
	bitnum = 0
	for bit in ev.keys
		keys[tupind] |= bit << bitnum
		if bitnum == 7
			bitnum = 0
			tupind += 1
		else
			bitnum += 1
		end
	end
	LibXCB.xcb_keymap_notify_event_t(
		LibXCB.XCB_KEYMAP_NOTIFY,
		keys
	)
end

sequence(::XCBKeymapNotifyEvent) = error("KeymapNotify events do not have a sequence")
