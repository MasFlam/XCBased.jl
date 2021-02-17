struct XCBMatchError <: XCBError
	sequence:: UInt16
	minor_opcode:: UInt16
	major_opcode:: UInt8
end

function XCBMatchError(errptr)
	err = unsafe_load(Ptr{LibXCB.xcb_match_error_t}(errptr))
	XCBMatchError(
		err.sequence,
		err.minor_opcode,
		err.major_opcode
	)
end
