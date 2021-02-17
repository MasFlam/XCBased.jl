struct XCBValueError <: XCBError
	sequence:: UInt16
	minor_opcode:: UInt16
	major_opcode:: UInt8
	bad_value:: UInt32
end

function XCBValueError(errptr)
	err = unsafe_load(Ptr{LibXCB.xcb_value_error_t}(errptr))
	XCBValueError(
		err.sequence,
		err.minor_opcode,
		err.major_opcode,
		err.bad_value
	)
end
