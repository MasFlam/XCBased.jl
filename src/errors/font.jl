struct XCBFontError <: XCBError
	sequence:: UInt16
	minor_opcode:: UInt16
	major_opcode:: UInt8
	bad_id:: LibXCB.xcb_font_t
end

function XCBFontError(errptr)
	err = unsafe_load(Ptr{LibXCB.xcb_font_error_t}(errptr))
	XCBFontError(
		err.sequence,
		err.minor_opcode,
		err.major_opcode,
		err.bad_value
	)
end
