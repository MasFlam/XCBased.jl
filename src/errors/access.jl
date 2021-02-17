struct XCBAccessError <: XCBError
	sequence:: UInt16
	minor_opcode:: UInt16
	major_opcode:: UInt8
end

function XCBAccessError(errptr)
	err = unsafe_load(Ptr{LibXCB.xcb_access_error_t}(errptr))
	XCBAccessError(
		err.sequence,
		err.minor_opcode,
		err.major_opcode
	)
end
