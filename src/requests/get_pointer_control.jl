function get_pointer_control(
	conn:: XCBConnection;
	checked:: Bool
):: XCBGetPointerControlFuture
	fn = checked ? LibXCB.xcb_get_pointer_control : LibXCB.xcb_get_pointer_control_unchecked
	cookie = fn(conn.handle)
	
	XCBGetPointerControlFuture(conn, cookie, checked)
end
