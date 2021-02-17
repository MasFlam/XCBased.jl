function get_input_focus(
	conn:: XCBConnection,
	revert_to:: Integer,
	focus:: Integer,
	time:: Integer;
	checked:: Bool
):: XCBGetInputFocusFuture
	fn = checked ? LibXCB.xcb_get_input_focus : LibXCB.xcb_get_input_focus_unchecked
	cookie = fn(
		conn.handle,
		revert_to,
		focus,
		time
	)
	
	XCBGetInputFocusFuture(conn, cookie, checked)
end
