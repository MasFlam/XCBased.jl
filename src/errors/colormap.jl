struct XCBColormapError <: XCBError
	sequence:: UInt16
	minor_opcode:: UInt16
	major_opcode:: UInt8
	bad_id:: LibXCB.xcb_colormap_t
end

function XCBColormapError(errptr)
	err = unsafe_load(Ptr{LibXCB.xcb_colormap_error_t}(errptr))
	XCBColormapError(
		err.sequence,
		err.minor_opcode,
		err.major_opcode,
		err.bad_value
	)
end
