function change_hosts(
	conn:: XCBConnection,
	mode:: Integer,
	family:: Integer,
	address:: Vector{UInt8};
	checked:: Bool
):: XCBVoidFuture
	fn = checked ? LibXCB.xcb_change_hosts_checked : LibXCB.xcb_change_hosts
	cookie = fn(
		conn.handle,
		mode,
		family,
		length(address),
		address
	)
	
	XCBVoidFuture(conn, cookie, checked)
end
