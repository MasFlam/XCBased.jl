struct XCBCursorError <: XCBError
	sequence:: UInt16
	minor_opcode:: UInt16
	major_opcode:: UInt8
	bad_id:: LibXCB.xcb_cursor_t
end

function XCBCursorError(errptr)
	err = unsafe_load(Ptr{LibXCB.xcb_cursor_error_t}(errptr))
	XCBCursorError(
		err.sequence,
		err.minor_opcode,
		err.major_opcode,
		err.bad_value
	)
end
