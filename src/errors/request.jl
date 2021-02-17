struct XCBRequestError <: XCBError
	sequence:: UInt16
	minor_opcode:: UInt16
	major_opcode:: UInt8
end

function XCBRequestError(errptr)
	err = unsafe_load(Ptr{LibXCB.xcb_request_error_t}(errptr))
	XCBRequestError(
		err.sequence,
		err.minor_opcode,
		err.major_opcode
	)
end
