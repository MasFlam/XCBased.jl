const ERROR_TYPES = [
	XCBRequestError,
	XCBValueError,
	XCBWindowError,
	XCBPixmapError,
	XCBAtomError,
	XCBCursorError,
	XCBFontError,
	XCBMatchError,
	XCBDrawableError,
	XCBAccessError,
	XCBAllocError,
	XCBColormapError,
	XCBGContextError,
	XCBIdChoiceError,
	XCBNameError,
	XCBLengthError,
	XCBImplementationError
]

function throw_xcb_error(errptr:: Ptr{LibXCB.xcb_generic_error_t})
	errptr == C_NULL && error("error pointer is C_NULL")
	err = unsafe_load(errptr)
	code = err.error_code
	1 <= code <= 17 || error("unknown error: $code")
	error = ERROR_TYPES[code](errptr)
	Libc.free(errptr)
	throw(error)
end
