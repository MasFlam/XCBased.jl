struct XCBVisualType
	visual_id:: LibXCB.xcb_visualid_t
	class:: Int16
	bits_per_rgb_value:: Int16
	colormap_entries:: Int32
	red_mask:: Int64
	green_mask:: Int64
	blue_mask:: Int64
end

function XCBVisualType(vt:: LibXCB.xcb_visualtype_t)
	XCBVisualType(
		vt.visual_id,
		vt._class,
		vt.bits_per_rgb_value,
		vt.colormap_entries,
		vt.red_mask,
		vt.green_mask,
		vt.blue_mask
	)
end

struct XCBScreen
	root:: LibXCB.xcb_window_t
	default_colormap:: LibXCB.xcb_colormap_t
	white_pixel:: Int64
	black_pixel:: Int64
	current_input_masks:: Int64
	width_in_pixels:: Int32
	height_in_pixels:: Int32
	width_in_millimeters:: Int32
	height_in_millimeters:: Int32
	min_installed_maps:: Int32
	max_installed_maps:: Int32
	root_visual:: LibXCB.xcb_visualid_t
	backing_stores:: Int8
	save_unders:: Bool
	root_depth:: Int16
	allowed_depths:: Dict{Int16, Vector{XCBVisualType}}
end

function XCBScreen(screen:: LibXCB.xcb_screen_t)
	XCBScreen(
		screen.root,
		screen.default_colormap,
		screen.white_pixel,
		screen.black_pixel,
		screen.current_input_masks,
		screen.width_in_pixels,
		screen.height_in_pixels,
		screen.width_in_millimeters,
		screen.height_in_millimeters,
		screen.min_installed_maps,
		screen.max_installed_maps,
		screen.root_visual,
		screen.backing_stores,
		screen.save_unders != 0,
		screen.root_depth,
		Dict{Int16, Vector{XCBVisualType}}()
	)
end

struct XCBFormat
	depth:: Int16
	bits_per_pixel:: Int8
	scanline_pad:: Int8
end

function XCBFormat(format:: LibXCB.xcb_format_t)
	XCBFormat(
		format.depth,
		format.bits_per_pixel,
		format.scanline_pad
	)
end

struct XCBSetup
	protocol_major_version:: Int16
	protocol_minor_version:: Int16
	release_number:: Int64
	resource_id_base:: Int64
	resource_id_mask:: Int64
	motion_buffer_size:: Int64
	maximum_request_length:: Int32
	image_byte_order:: Int8
	bitmap_format_bit_order:: Int8
	bitmap_format_scanline_unit:: Int8
	bitmap_format_scanline_pad:: Int8
	min_keycode:: LibXCB.xcb_keycode_t
	max_keycode:: LibXCB.xcb_keycode_t
	vendor:: String
	screens:: Vector{XCBScreen}
	pixmap_formats:: Vector{XCBFormat}
end

function XCBSetup(setup:: LibXCB.xcb_setup_t, vendor:: AbstractString)
	XCBSetup(
		setup.protocol_major_version,
		setup.protocol_minor_version,
		setup.release_number,
		setup.resource_id_base,
		setup.resource_id_mask,
		setup.motion_buffer_size,
		setup.maximum_request_length,
		setup.image_byte_order,
		setup.bitmap_format_bit_order,
		setup.bitmap_format_scanline_unit,
		setup.bitmap_format_scanline_pad,
		setup.min_keycode,
		setup.max_keycode,
		vendor,
		XCBScreen[],
		XCBFormat[]
	)
end

function get_setup(conn:: XCBConnection):: XCBSetup
	# not to be freed
	setupptr = LibXCB.xcb_get_setup(conn.handle)
	_setup = unsafe_load(setupptr)
	vendor = unsafe_string(LibXCB.xcb_setup_vendor(setupptr) |> Ptr{UInt8}, _setup.vendor_len)
	setup = XCBSetup(_setup, vendor)
	screen_iter = Ref(LibXCB.xcb_setup_roots_iterator(setupptr))
	while screen_iter[].rem != 0
		screen = XCBScreen(unsafe_load(screen_iter[].data))
		
		depth_iter = Ref(LibXCB.xcb_screen_allowed_depths_iterator(screen_iter[].data))
		while depth_iter[].rem != 0
			depth = unsafe_load(depth_iter[].data).depth |> Int16
			
			vts = XCBVisualType[]
			screen.allowed_depths[depth] = vts
			
			visualtype_iter = Ref(LibXCB.xcb_depth_visuals_iterator(depth_iter[].data))
			while visualtype_iter[].rem != 0
				visualtype = XCBVisualType(unsafe_load(visualtype_iter[].data))
				
				push!(vts, visualtype)
				LibXCB.xcb_visualtype_next(visualtype_iter)
			end
			
			LibXCB.xcb_depth_next(depth_iter)
		end
		
		push!(setup.screens, screen)
		LibXCB.xcb_screen_next(screen_iter)
	end
	
	format_iter = Ref(LibXCB.xcb_setup_pixmap_formats_iterator(setupptr))
	while format_iter[].rem != 0
		format = XCBFormat(unsafe_load(format_iter[].data))
		
		push!(setup.pixmap_formats, format)
		LibXCB.xcb_format_next(format_iter)
	end
	
	setup
end
