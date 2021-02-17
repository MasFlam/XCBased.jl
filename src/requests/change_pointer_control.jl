function change_pointer_control(
	conn:: XCBConnection,
	acceleration_numerator:: Integer,
	acceleration_denominator:: Integer,
	threshold:: Integer,
	do_acceleration:: Bool,
	do_threshold:: Bool;
	checked:: Bool
):: XCBVoidFuture
	fn = checked ? LibXCB.xcb_change_pointer_control_checked : LibXCB.xcb_change_pointer_control
	cookie = fn(
		conn.handle,
		acceleration_numerator,
		acceleration_denominator,
		threshold,
		do_acceleration,
		do_threshold
	)
	
	XCBVoidFuture(conn, cookie, checked)
end
