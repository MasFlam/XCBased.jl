struct XCBPixmapError <: XCBError
	sequence:: UInt16
	minor_opcode:: UInt16
	major_opcode:: UInt8
	bad_id:: LibXCB.xcb_pixmap_t
end

function XCBPixmapError(errptr)
	err = unsafe_load(Ptr{LibXCB.xcb_pixmap_error_t}(errptr))
	XCBPixmapError(
		err.sequence,
		err.minor_opcode,
		err.major_opcode,
		err.bad_value
	)
end
