struct XCBGraphicsExposureEvent <: XCBEvent
	sequence:: UInt16
	drawable:: LibXCB.xcb_drawable_t
	x:: UInt16
	y:: UInt16
	width:: UInt16
	height:: UInt16
	minor_opcode:: UInt16
	count:: UInt16
	major_opcode:: UInt8
end

function XCBGraphicsExposureEvent(evptr:: Ptr{LibXCB.xcb_generic_event_t})
	ev = unsafe_load(Ptr{LibXCB.xcb_graphics_exposure_event_t}(evptr))
	XCBGraphicsExposureEvent(
		ev.sequence,
		ev.drawable,
		ev.x,
		ev.y,
		ev.width,
		ev.height,
		ev.minor_opcode,
		ev.count,
		ev.major_opcode
	)
end
