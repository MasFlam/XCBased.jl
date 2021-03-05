function xcb_change_window_attributes(
	conn:: XCBConnection,
	window:: Integer;
	checked:: Bool,
	background_pixmap:: Union{Integer, Nothing} = nothing,
	background_pixel:: Union{Integer, Nothing} = nothing,
	border_pixmap:: Union{Integer, Nothing} = nothing,
	border_pixel:: Union{Integer, Nothing} = nothing,
	bit_gravity:: Union{Integer, Nothing} = nothing,
	win_gravity:: Union{Integer, Nothing} = nothing,
	backing_store:: Union{Integer, Nothing} = nothing,
	backing_planes:: Union{Integer, Nothing} = nothing,
	backing_pixel:: Union{Integer, Nothing} = nothing,
	override_redirect:: Union{Bool, Nothing} = nothing,
	save_under:: Union{Bool, Nothing} = nothing,
	event_mask:: Union{Integer, Nothing} = nothing,
	do_not_propagate_mask:: Union{Integer, Nothing} = nothing,
	colormap:: Union{Integer, Nothing} = nothing,
	cursor:: Union{Integer, Nothing} = nothing
):: XCBVoidFuture
	value_mask = UInt32(0)
	value_list = Ref{LibXCB.xcb_create_window_value_list_t}()

	background_pixmap === nothing     || (value_mask |= LibXCB.XCB_CW_BACK_PIXMAP;       value_list[].background_pixmap = background_pixmap)
	background_pixel === nothing      || (value_mask |= LibXCB.XCB_CW_BACK_PIXEL;        value_list[].background_pixel = background_pixel)
	border_pixmap === nothing         || (value_mask |= LibXCB.XCB_CW_BORDER_PIXMAP;     value_list[].border_pixmap = border_pixmap)
	border_pixel === nothing          || (value_mask |= LibXCB.XCB_CW_BORDER_PIXEL;      value_list[].border_pixel = border_pixel)
	bit_gravity === nothing           || (value_mask |= LibXCB.XCB_CW_BIT_GRAVITY;       value_list[].bit_gravity = bit_gravity)
	win_gravity === nothing           || (value_mask |= LibXCB.XCB_CW_WIN_GRAVITY;       value_list[].win_gravity = win_gravity)
	backing_store === nothing         || (value_mask |= LibXCB.XCB_CW_BACKING_STORE;     value_list[].backing_store = backing_store)
	backing_planes === nothing        || (value_mask |= LibXCB.XCB_CW_BACKING_PLANES;    value_list[].backing_planes = backing_planes)
	backing_pixel === nothing         || (value_mask |= LibXCB.XCB_CW_BACKING_PIXEL;     value_list[].backing_pixel = backing_pixel)
	override_redirect === nothing     || (value_mask |= LibXCB.XCB_CW_OVERRIDE_REDIRECT; value_list[].override_redirect = override_redirect)
	save_under === nothing            || (value_mask |= LibXCB.XCB_CW_SAVE_UNDER;        value_list[].save_under = save_under)
	event_mask === nothing            || (value_mask |= LibXCB.XCB_CW_EVENT_MASK;        value_list[].event_mask = event_mask)
	do_not_propagate_mask === nothing || (value_mask |= LibXCB.XCB_CW_DONT_PROPAGATE;    value_list[].do_not_propagate_mask = do_not_propagate_mask)
	colormap === nothing              || (value_mask |= LibXCB.XCB_CW_COLORMAP;          value_list[].colormap = colormap)
	cursor === nothing                || (value_mask |= LibXCB.XCB_CW_CURSOR;            value_list[].cursor = cursor)
	
	fn = checked ? LibXCB.xcb_change_window_attributes_aux_checked : LibXCB.xcb_change_window_attributes_aux
	cookie = fn(conn.handle, window, value_mask, value_list)
	
	XCBVoidFuture(conn, cookie, checked)
end
