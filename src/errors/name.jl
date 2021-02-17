struct XCBNameError <: XCBError
	sequence:: UInt16
	minor_opcode:: UInt16
	major_opcode:: UInt8
end

function XCBNameError(errptr)
	err = unsafe_load(Ptr{LibXCB.xcb_name_error_t}(errptr))
	XCBNameError(
		err.sequence,
		err.minor_opcode,
		err.major_opcode
	)
end
