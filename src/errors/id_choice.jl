struct XCBIdChoiceError <: XCBError
	sequence:: UInt16
	minor_opcode:: UInt16
	major_opcode:: UInt8
	bad_id:: Union{LibXCB.xcb_window_t, LibXCB.xcb_font_t, LibXCB.xcb_pixmap_t, LibXCB.xcb_gcontext_t, LibXCB.xcb_colormap_t, LibXCB.xcb_cursor_t}
end

function XCBIdChoiceError(errptr)
	err = unsafe_load(Ptr{LibXCB.xcb_id_choice_error_t}(errptr))
	XCBIdChoiceError(
		err.sequence,
		err.minor_opcode,
		err.major_opcode,
		err.bad_value
	)
end
