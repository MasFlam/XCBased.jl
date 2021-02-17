function configure_window(
	conn:: XCBConnection,
	window:: Integer;
	checked:: Bool,
	x:: Union{Integer, Nothing} = nothing,
	y:: Union{Integer, Nothing} = nothing,
	width:: Union{Integer, Nothing} = nothing,
	height:: Union{Integer, Nothing} = nothing,
	border_width:: Union{Integer, Nothing} = nothing,
	sibling:: Union{Integer, Nothing} = nothing,
	stack_mode:: Union{Integer, Nothing} = nothing
):: XCBVoidFuture
	value_mask = UInt16(0)
	value_list = Ref{LibXCB.xcb_configure_window_value_list_t}()
	
	x === nothing            || (value_mask |= LibXCB.XCB_CONFIG_WINDOW_X;            value_list.x = x)
	y === nothing            || (value_mask |= LibXCB.XCB_CONFIG_WINDOW_Y;            value_list.y = y)
	width === nothing        || (value_mask |= LibXCB.XCB_CONFIG_WINDOW_WIDTH;        value_list.width = width)
	height === nothing       || (value_mask |= LibXCB.XCB_CONFIG_WINDOW_HEIGHT;       value_list.height = height)
	border_width === nothing || (value_mask |= LibXCB.XCB_CONFIG_WINDOW_BORDER_WIDTH; value_list.border_width = border_width)
	sibling === nothing      || (value_mask |= LibXCB.XCB_CONFIG_WINDOW_SIBLING;      value_list.sibling = sibling)
	stack_mode === nothing   || (value_mask |= LibXCB.XCB_CONFIG_WINDOW_STACK_MODE;   value_list.stack_mode = stack_mode)
	
	fn = checked ? LibXCB.xcb_configure_window_aux_checked : LibXCB.xcb_configure_window_aux
	cookie = fn(conn.handle, window, value_mask, value_list)
	
	XCBVoidFuture(conn, cookie, checked)
end
