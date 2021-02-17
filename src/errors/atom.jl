struct XCBAtomError <: XCBError
	sequence:: UInt16
	minor_opcode:: UInt16
	major_opcode:: UInt8
	bad_id:: LibXCB.xcb_atom_t
end

function XCBAtomError(errptr)
	err = unsafe_load(Ptr{LibXCB.xcb_atom_error_t}(errptr))
	XCBAtomError(
		err.sequence,
		err.minor_opcode,
		err.major_opcode,
		err.bad_value
	)
end
