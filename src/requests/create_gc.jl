function xcb_create_gc(
	conn:: XCBConnection,
	gc:: Integer,
	drawable:: Integer;
	checked:: Bool,
	_function:: Union{Integer, Nothing} = nothing,
	plane_mask:: Union{Integer, Nothing} = nothing,
	foreground:: Union{Integer, Nothing} = nothing,
	background:: Union{Integer, Nothing} = nothing,
	line_width:: Union{Integer, Nothing} = nothing,
	line_style:: Union{Integer, Nothing} = nothing,
	cap_style:: Union{Integer, Nothing} = nothing,
	join_style:: Union{Integer, Nothing} = nothing,
	fill_style:: Union{Integer, Nothing} = nothing,
	fill_rule:: Union{Integer, Nothing} = nothing,
	tile:: Union{Integer, Nothing} = nothing,
	stipple:: Union{Integer, Nothing} = nothing,
	tile_stipple_x_origin:: Union{Integer, Nothing} = nothing,
	tile_stipple_y_origin:: Union{Integer, Nothing} = nothing,
	font:: Union{Integer, Nothing} = nothing,
	subwindow_mode:: Union{Integer, Nothing} = nothing,
	graphics_exposures:: Union{Bool, Nothing} = nothing,
	clip_x_origin:: Union{Integer, Nothing} = nothing,
	clip_y_origin:: Union{Integer, Nothing} = nothing,
	clip_mask:: Union{Integer, Nothing} = nothing,
	dash_offset:: Union{Integer, Nothing} = nothing,
	dashes:: Union{Integer, Nothing} = nothing,
	arc_mode:: Union{Integer, Nothing} = nothing
):: XCBVoidFuture
	value_mask = UInt32(0)
	value_list = Ref{LibXCB.xcb_create_gc_value_list_t}()
	
	_function === nothing             || (value_mask |= XCB_GC_FUNCTION;              value_list[]._function = _function)
	plane_mask === nothing            || (value_mask |= XCB_GC_PLANE_MASK;            value_list[].plane_mask = plane_mask)
	foreground === nothing            || (value_mask |= XCB_GC_FOREGROUND;            value_list[].foreground = foreground)
	background === nothing            || (value_mask |= XCB_GC_BACKGROUND;            value_list[].background = background)
	line_width === nothing            || (value_mask |= XCB_GC_LINE_WIDTH;            value_list[].line_width = line_width)
	line_style === nothing            || (value_mask |= XCB_GC_LINE_STYLE;            value_list[].line_style = line_style)
	cap_style === nothing             || (value_mask |= XCB_GC_CAP_STYLE;             value_list[].cap_style = cap_style)
	join_style === nothing            || (value_mask |= XCB_GC_JOIN_STYLE;            value_list[].join_style = join_style)
	fill_style === nothing            || (value_mask |= XCB_GC_FILL_STYLE;            value_list[].fill_style = fill_style)
	fill_rule === nothing             || (value_mask |= XCB_GC_FILL_RULE;             value_list[].fill_rule = fill_rule)
	tile === nothing                  || (value_mask |= XCB_GC_TILE;                  value_list[].tile = tile)
	stipple === nothing               || (value_mask |= XCB_GC_STIPPLE;               value_list[].stipple = stipple)
	tile_stipple_x_origin === nothing || (value_mask |= XCB_GC_TILE_STIPPLE_ORIGIN_X; value_list[].tile_stipple_x_origin = tile_stipple_x_origin)
	tile_stipple_y_origin === nothing || (value_mask |= XCB_GC_TILE_STIPPLE_ORIGIN_Y; value_list[].tile_stipple_y_origin = tile_stipple_y_origin)
	font === nothing                  || (value_mask |= XCB_GC_FONT;                  value_list[].font = font)
	subwindow_mode === nothing        || (value_mask |= XCB_GC_SUBWINDOW_MODE;        value_list[].subwindow_mode = subwindow_mode)
	graphics_exposures === nothing    || (value_mask |= XCB_GC_GRAPHICS_EXPOSURES;    value_list[].graphics_exposures = graphics_exposures)
	clip_x_origin === nothing         || (value_mask |= XCB_GC_CLIP_ORIGIN_X;         value_list[].clip_x_origin = clip_x_origin)
	clip_y_origin === nothing         || (value_mask |= XCB_GC_CLIP_ORIGIN_Y;         value_list[].clip_y_origin = clip_y_origin)
	clip_mask === nothing             || (value_mask |= XCB_GC_CLIP_MASK;             value_list[].clip_mask = clip_mask)
	dash_offset === nothing           || (value_mask |= XCB_GC_DASH_OFFSET;           value_list[].dash_offset = dash_offset)
	dashes === nothing                || (value_mask |= XCB_GC_DASH_LIST;             value_list[].dashes = dashes)
	arc_mode === nothing              || (value_mask |= XCB_GC_ARC_MODE;              value_list[].arc_mode = arc_mode)
	
	fn = checked ? LibXCB.xcb_create_gc_aux_checked : LibXCB.xcb_create_gc_aux
	cookie = fn(
		conn.handle,
		gc,
		drawable,
		value_mask,
		value_list
	)
	
	XCBVoidFuture(conn, cookie, checked)
end
