function ungrab_key(
	conn:: XCBConnection,
	key:: Integer,
	grab_window:: Integer,
	modifiers:: Integer;
	checked:: Bool
):: XCBVoidFuture
	fn = checked ? LibXCB.xcb_ungrab_key_checked : LibXCB.xcb_ungrab_key
	cookie = fn(
		conn.handle,
		key,
		grab_window,
		modifiers
	)
	
	XCBVoidFuture(conn, cookie, checked)
end
