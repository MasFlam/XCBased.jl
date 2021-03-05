function xcb_set_input_focus(
	conn:: XCBConnection,
	revert_to:: Integer,
	focus:: Integer,
	time:: Integer;
	checked:: Bool
):: XCBVoidFuture
	fn = checked ? LibXCB.xcb_set_input_focus_checked : LibXCB.xcb_set_input_focus
	cookie = fn(
		conn.handle,
		revert_to,
		focus,
		time
	)
	
	XCBVoidFuture(conn, cookie, checked)
end
