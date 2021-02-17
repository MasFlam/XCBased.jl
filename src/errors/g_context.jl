struct XCBGContextError <: XCBError
	sequence:: UInt16
	minor_opcode:: UInt16
	major_opcode:: UInt8
	bad_id:: LibXCB.xcb_g_context_error_t
end

function XCBGContextError(errptr)
	err = unsafe_load(Ptr{LibXCB.xcb_g_context_error_t}(errptr))
	XCBGContextError(
		err.sequence,
		err.minor_opcode,
		err.major_opcode,
		err.bad_value
	)
end
