function change_property(
	conn:: XCBConnection,
	mode:: Integer,
	window:: Integer,
	property:: Integer,
	type:: Integer,
	format:: Integer,
	data:: Vector{UInt8};
	checked:: Bool
):: XCBVoidFuture
	data_len = length(data)*8 / format
	isinteger(data_len) || throw(ArgumentError("length(data)*8 must be divisible by format"))
	fn = checked ? LibXCB.xcb_change_property_checked : LibXCB.xcb_change_property
	cookie = fn(
		conn.handle,
		mode,
		window,
		property,
		type,
		format,
		length(data)*8 / format,
		data
	)
	
	XCBVoidFuture(conn, cookie, checked)
end
