struct XCBWindowError <: XCBError
	sequence:: UInt16
	minor_opcode:: UInt16
	major_opcode:: UInt8
	bad_id:: LibXCB.xcb_window_t
end

function XCBWindowError(errptr)
	err = unsafe_load(Ptr{LibXCB.xcb_window_error_t}(errptr))
	XCBWindowError(
		err.sequence,
		err.minor_opcode,
		err.major_opcode,
		err.bad_value
	)
end
