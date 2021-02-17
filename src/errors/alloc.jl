struct XCBAllocError <: XCBError
	sequence:: UInt16
	minor_opcode:: UInt16
	major_opcode:: UInt8
end

function XCBAllocError(errptr)
	err = unsafe_load(Ptr{LibXCB.xcb_alloc_error_t}(errptr))
	XCBAllocError(
		err.sequence,
		err.minor_opcode,
		err.major_opcode
	)
end
