function ungrab_button(
	conn:: XCBConnection,
	button:: Integer,
	grab_window:: Integer,
	modifiers:: Integer;
	checked:: Bool
):: XCBVoidFuture
	fn = checked ? LibXCB.xcb_ungrab_button_checked : LibXCB.xcb_ungrab_button
	cookie = fn(
		conn.handle,
		button,
		grab_window,
		modifiers
	)
	
	XCBVoidFuture(conn, cookie, checked)
end
