function xcb_get_selection_owner(
	conn:: XCBConnection,
	selection:: Integer;
	checked:: Bool
):: XCBGetSelectionOwnerFuture
	fn = checked ? LibXCB.xcb_get_selection_owner : LibXCB.xcb_get_selection_owner_unchecked
	cookie = fn(
		conn.handle,
		selection
	)
	
	XCBGetSelectionOwnerFuture(conn, cookie, checked)
end
