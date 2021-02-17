function open_font(
	conn:: XCBConnection,
	font:: Integer,
	name:: AbstractString;
	checked:: Bool
):: XCBVoidFuture
	fn = checked ? LibXCB.xcb_open_font_checked : LibXCB.xcb_open_font
	namebytes = Vector{UInt8}(name)
	cookie = fn(
		conn.handle,
		font,
		length(namebytes),
		namebytes
	)
	
	XCBVoidFuture(conn, cookie, checked)
end
