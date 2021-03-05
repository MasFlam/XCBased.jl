function xcb_set_dashes(
	conn:: XCBConnection,
	gc:: Integer,
	dash_offset:: Integer,
	dashes:: AbstractVector{<:Integer};
	checked:: Bool
):: XCBVoidFuture
	fn = checked ? LibXCB.xcb_set_dashes_checked : LibXCB.xcb_set_dashes
	_dashes = UInt8[dashes...]
	cookie = fn(
		conn.handle,
		gc,
		dash_offset,
		length(_dashes),
		_dashes
	)
	
	XCBVoidFuture(conn, cookie, checked)
end
