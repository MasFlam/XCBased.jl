function xcb_get_geometry(
	conn:: XCBConnection,
	drawable:: Integer;
	checked:: Bool
):: XCBGetGeometryFuture
	fn = checked ? LibXCB.xcb_get_geometry : LibXCB.xcb_get_geometry_unchecked
	cookie = fn(conn.handle, drawable)
	
	XCBGetGeometryFuture(conn, cookie, checked)
end
