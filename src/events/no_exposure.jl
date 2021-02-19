struct XCBNoExposureEvent <: XCBEvent
	sequence:: UInt16
	drawable:: LibXCB.xcb_drawable_t
	minor_opcode:: UInt16
	major_opcode:: UInt8
end

function XCBNoExposureEvent(evptr:: Ptr{LibXCB.xcb_generic_event_t})
	ev = unsafe_load(Ptr{LibXCB.xcb_no_exposure_event_t}(evptr))
	XCBNoExposureEvent(
		ev.sequence,
		ev.drawable,
		ev.minor_opcode,
		ev.major_opcode
	)
end

function libxcb_event(ev:: XCBNoExposureEvent):: LibXCB.xcb_no_exposure_event_t
	LibXCB.xcb_no_exposure_event_t(
		LibXCB.XCB_NO_EXPOSURE,
		0, # pad
		ev.sequence,
		ev.drawable,
		ev.minor_opcode,
		ev.major_opcode,
		0 # pad
	)
end
