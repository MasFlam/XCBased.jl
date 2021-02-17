struct XCBImplementationError <: XCBError
	sequence:: UInt16
	minor_opcode:: UInt16
	major_opcode:: UInt8
end

function XCBImplementationError(errptr)
	err = unsafe_load(Ptr{LibXCB.xcb_implementation_error_t}(errptr))
	XCBImplementationError(
		err.sequence,
		err.minor_opcode,
		err.major_opcode
	)
end
