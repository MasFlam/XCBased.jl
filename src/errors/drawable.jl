struct XCBDrawableError <: XCBError
	sequence:: UInt16
	minor_opcode:: UInt16
	major_opcode:: UInt8
	bad_id:: LibXCB.xcb_drawable_t
end

function XCBDrawableError(errptr)
	err = unsafe_load(Ptr{LibXCB.xcb_drawable_error_t}(errptr))
	XCBDrawableError(
		err.sequence,
		err.minor_opcode,
		err.major_opcode,
		err.bad_value
	)
end
