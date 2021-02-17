struct XCBLengthError <: XCBError
	sequence:: UInt16
	minor_opcode:: UInt16
	major_opcode:: UInt8
end

function XCBLengthError(errptr)
	err = unsafe_load(Ptr{LibXCB.xcb_length_error_t}(errptr))
	XCBLengthError(
		err.sequence,
		err.minor_opcode,
		err.major_opcode
	)
end
