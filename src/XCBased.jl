module XCBased

import Base: wait, fetch

include("../gen/LibXCB.jl")


#= CONNECTION =#

export XCBConnection, xcb_connect, xcb_disconnect, XCBConnectionError
export XCBVisualType, XCBScreen, XCBFormat, XCBSetup, get_setup

# mutable so that we can attach a finalizer to it
mutable struct XCBConnection
	handle:: Ptr{LibXCB.xcb_connection_t}
	preferred_screen:: Cint
	
	function XCBConnection(args...)
		conn = new(args...)
		finalizer(c -> LibXCB.xcb_disconnect(c.handle), conn)
		conn
	end
end

function xcb_connect(display_name:: Union{AbstractString, Nothing} = nothing):: XCBConnection
	screenp = Ref{Cint}()
	connptr = LibXCB.xcb_connect(display_name === nothing ? C_NULL : display_name, screenp)
	conn = XCBConnection(connptr, screenp[])
	
	errtype = LibXCB.xcb_connection_has_error(connptr)
	errtype == 0 && return conn
	throw(XCBConnectionError(errtype))
end

function xcb_disconnect(conn:: XCBConnection)
	LibXCB.xcb_disconnect(conn.handle)
	conn.handle = C_NULL
	nothing
end

# TODO: Maybe create separate Exception types?
struct XCBConnectionError <: Exception
	type:: Cint
end

include("xcb_setup.jl")


#= CONSTS =#

include("consts.jl")

import .Consts: X_PROTOCOL, X_PROTOCOL_REVISION
export X_PROTOCOL, X_PROTOCOL_REVISION

for name in names(Consts, all = true, imported = true)
	if startswith(string(name), "XCB")
		@eval begin
			import .Consts.$name
			export $name
		end
	end
end


#= OTHERS =#

export generate_id, xcb_flush, get_maximum_request_length

function generate_id(conn:: XCBConnection):: UInt32
	LibXCB.xcb_generate_id(conn.handle)
end

function xcb_flush(conn:: XCBConnection):: Bool
	LibXCB.xcb_flush(conn.handle) == 1
end

function get_maximum_request_length(conn:: XCBConnection):: UInt32
	LibXCB.get_maximum_request_length(conn.handle)
end


#= ERRORS =#

export XCBError, sequence, minor_opcode, major_opcode

abstract type XCBError <: Exception end

sequence(e:: XCBError):: UInt16 = e.sequence
minor_opcode(e:: XCBError):: UInt16 = e.minor_opcode
major_opcode(e:: XCBError):: UInt8 = e.major_opcode

include("errors/request.jl");        export XCBRequestError
include("errors/value.jl");          export XCBValueError
include("errors/window.jl");         export XCBWindowError
include("errors/pixmap.jl");         export XCBPixmapError
include("errors/atom.jl");           export XCBAtomError
include("errors/cursor.jl");         export XCBCursorError
include("errors/font.jl");           export XCBFontError
include("errors/match.jl");          export XCBMatchError
include("errors/drawable.jl");       export XCBDrawableError
include("errors/access.jl");         export XCBAccessError
include("errors/alloc.jl");          export XCBAllocError
include("errors/colormap.jl");       export XCBColormapError
include("errors/g_context.jl");      export XCBGContextError
include("errors/id_choice.jl");      export XCBIdChoiceError
include("errors/name.jl");           export XCBNameError
include("errors/length.jl");         export XCBLengthError
include("errors/implementation.jl"); export XCBImplementationError

include("errors.jl")


#= EVENTS =#

export XCBEvent, sequence, wait_for_event, poll_for_event

abstract type XCBEvent end

sequence(e:: XCBEvent):: UInt16 = e.sequence
libxcb_event(::XCBEvent) = error("unimplemented")

include("events/key_press.jl");         export XCBKeyPressEvent
include("events/key_release.jl");       export XCBKeyReleaseEvent
include("events/button_press.jl");      export XCBButtonPressEvent
include("events/button_release.jl");    export XCBButtonReleaseEvent
include("events/motion_notify.jl");     export XCBMotionNotifyEvent
include("events/enter_notify.jl");      export XCBEnterNotifyEvent
include("events/leave_notify.jl");      export XCBLeaveNotifyEvent
include("events/focus_in.jl");          export XCBFocusInEvent
include("events/focus_out.jl");         export XCBFocusOutEvent
include("events/keymap_notify.jl");     export XCBKeymapNotifyEvent
include("events/expose.jl");            export XCBExposeEvent
include("events/graphics_exposure.jl"); export XCBGraphicsExposureEvent
include("events/no_exposure.jl");       export XCBNoExposureEvent
include("events/visibility_notify.jl"); export XCBVisibilityNotifyEvent
include("events/create_notify.jl");     export XCBCreateNotifyEvent
include("events/destroy_notify.jl");    export XCBDestroyNotifyEvent
include("events/unmap_notify.jl");      export XCBUnmapNotifyEvent
include("events/map_notify.jl");        export XCBMapNotifyEvent
include("events/map_request.jl");       export XCBMapRequestEvent
include("events/reparent_notify.jl");   export XCBReparentNotifyEvent
include("events/configure_notify.jl");  export XCBConfigureNotifyEvent
include("events/gravity_notify.jl");    export XCBGravityNotifyEvent
include("events/resize_request.jl");    export XCBResizeRequestEvent
include("events/configure_request.jl"); export XCBConfigureRequestEvent
include("events/circulate_notify.jl");  export XCBCirculateNotifyEvent
include("events/circulate_request.jl"); export XCBCirculateRequestEvent
include("events/property_notify.jl");   export XCBPropertyNotifyEvent
include("events/selection_clear.jl");   export XCBSelectionClearEvent
include("events/selection_request.jl"); export XCBSelectionRequestEvent
include("events/selection_notify.jl");  export XCBSelectionNotifyEvent
include("events/colormap_notify.jl");   export XCBColormapNotifyEvent
include("events/mapping_notify.jl");    export XCBMappingNotifyEvent
include("events/client_message.jl");    export XCBClientMessageEvent

include("events.jl")


#= REPLIES =#

export XCBReply, sequence

abstract type XCBReply end

sequence(reply:: XCBReply):: UInt16 = reply.sequence

include("replies/alloc_color.jl");              export XCBAllocColorReply
include("replies/alloc_named_color.jl");        export XCBAllocNamedColorReply
include("replies/get_atom_name.jl");            export XCBGetAtomNameReply
include("replies/get_font_path.jl");            export XCBGetFontPathReply
include("replies/get_geometry.jl");             export XCBGetGeometryReply
include("replies/get_image.jl");                export XCBGetImageReply
include("replies/get_input_focus.jl");          export XCBGetInputFocusReply
include("replies/get_keyboard_control.jl");     export XCBGetKeyboardControlReply
include("replies/get_keyboard_mapping.jl");     export XCBGetKeyboardMappingReply
include("replies/get_modifier_mapping.jl");     export XCBGetModifierMappingReply
include("replies/get_motion_events.jl");        export XCBGetMotionEventsReply
include("replies/get_pointer_control.jl");      export XCBGetPointerControlReply
include("replies/get_pointer_mapping.jl");      export XCBGetPointerMappingReply
include("replies/get_property.jl");             export XCBGetPropertyReply
include("replies/get_screen_saver.jl");         export XCBGetScreenSaverReply
include("replies/get_selection_owner.jl");      export XCBGetSelectionOwnerReply
include("replies/get_window_attributes.jl");    export XCBGetWindowAttributesReply
include("replies/grab_keyboard.jl");            export XCBGrabKeyboardReply
include("replies/grab_pointer.jl");             export XCBGrabPointerReply
include("replies/list_extensions.jl");          export XCBListExtensionsReply
include("replies/list_fonts.jl");               export XCBListFontsReply
include("replies/list_fonts_with_info.jl");     export XCBListFontsWithInfoReply
include("replies/list_installed_colormaps.jl"); export XCBListInstalledColormapsReply
include("replies/list_properties.jl");          export XCBListPropertyReply
include("replies/lookup_color.jl");             export XCBLookupColorReply
include("replies/query_best_size.jl");          export XCBQueryBestSizeReply
include("replies/query_colors.jl");             export XCBQueryColorsReply
include("replies/query_extension.jl");          export XCBQueryExtensionReply
include("replies/query_font.jl");               export XCBQueryFontReply
include("replies/query_keymap.jl");             export XCBQueryKeymapReply
include("replies/query_pointer.jl");            export XCBQueryPointerReply
include("replies/query_text_extents.jl");       export XCBQueryTextExtentsReply
include("replies/query_tree.jl");               export XCBQueryTreeReply
include("replies/set_modifier_mapping.jl");     export XCBSetModifierMappingReply
include("replies/set_pointer_mapping.jl");      export XCBSetPointerMappingReply
include("replies/translate_coordinates.jl");    export XCBTranslateCoordinatesReply


#= FUTURES =#

export XCBFuture, sequence, discard, XCBVoidFuture

abstract type XCBFuture end

sequence(f:: XCBFuture):: UInt16 = UInt16(f.cookie.sequence & 0xffff)
fetch(::XCBFuture) = error("unimplemented")
wait(f:: XCBFuture) = (fetch(f); nothing)

function discard(f:: XCBFuture)
	LibXCB.xcb_discard_reply(f.conn.handle, f.cookie.sequence)
	f.reply = nothing
end

include("futures/alloc_color.jl");              export XCBAllocColorFuture
include("futures/alloc_named_color.jl");        export XCBAllocNamedColorFuture
include("futures/get_atom_name.jl");            export XCBGetAtomNameFuture
include("futures/get_font_path.jl");            export XCBGetFontPathFuture
include("futures/get_geometry.jl");             export XCBGetGeometryFuture
include("futures/get_image.jl");                export XCBGetImageFuture
include("futures/get_input_focus.jl");          export XCBGetInputFocusFuture
include("futures/get_keyboard_control.jl");     export XCBGetKeyboardControlFuture
include("futures/get_keyboard_mapping.jl");     export XCBGetKeyboardMappingFuture
include("futures/get_modifier_mapping.jl");     export XCBGetModifierMappingFuture
include("futures/get_motion_events.jl");        export XCBGetMotionEventsFuture
include("futures/get_pointer_control.jl");      export XCBGetPointerControlFuture
include("futures/get_pointer_mapping.jl");      export XCBGetPointerMappingFuture
include("futures/get_property.jl");             export XCBGetPropertyFuture
include("futures/get_screen_saver.jl");         export XCBGetScreenSaverFuture
include("futures/get_selection_owner.jl");      export XCBGetSelectionOwnerFuture
include("futures/get_window_attributes.jl");    export XCBGetWindowAttributesFuture
include("futures/grab_keyboard.jl");            export XCBGrabKeyboardFuture
include("futures/grab_pointer.jl");             export XCBGrabPointerFuture
include("futures/list_extensions.jl");          export XCBListExtensionsFuture
include("futures/list_fonts.jl");               export XCBListFontsFuture
include("futures/list_fonts_with_info.jl");     export XCBListFontsWithInfoFuture
include("futures/list_installed_colormaps.jl"); export XCBListInstalledColormapsFuture
include("futures/list_properties.jl");          export XCBListPropertiesFuture
include("futures/lookup_color.jl");             export XCBLookupColorFuture
include("futures/query_best_size.jl");          export XCBQueryBestSizeFuture
include("futures/query_colors.jl");             export XCBQueryColorsFuture
include("futures/query_extension.jl");          export XCBQueryExtensionFuture
include("futures/query_font.jl");               export XCBQueryFontFuture
include("futures/query_keymap.jl");             export XCBQueryKeymapFuture
include("futures/query_pointer.jl");            export XCBQueryPointerFuture
include("futures/query_text_extents.jl");       export XCBQueryTextExtentsFuture
include("futures/query_tree.jl");               export XCBQueryTreeFuture
include("futures/set_modifier_mapping.jl");     export XCBSetModifierMappingFuture
include("futures/set_pointer_mapping.jl");      export XCBSetPointerMappingFuture
include("futures/translate_coordinates.jl");    export XCBTranslateCoordinatesFuture

include("futures.jl")


#= REQUESTS =#

include("requests/create_window.jl");              export create_window
include("requests/change_window_attributes.jl");   export change_window_attributes
include("requests/get_window_attributes.jl");      export get_window_attributes
include("requests/destroy_window.jl");             export destroy_window
include("requests/destroy_subwindows.jl");         export destroy_subwindows
include("requests/change_save_set.jl");            export change_save_set
include("requests/reparent_window.jl");            export reparent_window
include("requests/map_window.jl");                 export map_window
include("requests/map_subwindows.jl");             export map_subwindows
include("requests/unmap_window.jl");               export unmap_window
include("requests/unmap_subwindows.jl");           export unmap_subwindows
include("requests/configure_window.jl");           export configure_window
include("requests/circulate_windows.jl");          export circulate_windows
include("requests/get_geometry.jl");               export get_geometry
include("requests/query_tree.jl");                 export query_tree
include("requests/intern_atom.jl");                export intern_atom
include("requests/get_atom_name.jl");              export get_atom_name
include("requests/change_property.jl");            export change_property
include("requests/delete_property.jl");            export delete_property
include("requests/get_property.jl");               export get_property
include("requests/list_properties.jl");            export list_properties
include("requests/set_selection_owner.jl");        export set_selection_owner
include("requests/get_selection_owner.jl");        export get_selection_owner
include("requests/convert_selection.jl");          export convert_selection
include("requests/send_event.jl");                 export send_event
include("requests/grab_pointer.jl");               export grab_pointer
include("requests/ungrab_pointer.jl");             export ungrab_pointer
include("requests/grab_button.jl");                export grab_button
include("requests/ungrab_button.jl");              export ungrab_button
include("requests/change_active_pointer_grab.jl"); export change_active_pointer_grab
include("requests/grab_keyboard.jl");              export grab_keyboard
include("requests/ungrab_keyboard.jl");            export ungrab_keyboard
include("requests/grab_key.jl");                   export grab_key
include("requests/ungrab_key.jl");                 export ungrab_key
include("requests/allow_events.jl");               export allow_events
include("requests/grab_server.jl");                export grab_server
include("requests/ungrab_server.jl");              export ungrab_server
include("requests/query_pointer.jl");              export query_pointer
include("requests/get_motion_events.jl");          export get_motion_events
include("requests/translate_coordinates.jl");      export translate_coordinates
include("requests/warp_pointer.jl");               export warp_pointer
include("requests/set_input_focus.jl");            export set_input_focus
include("requests/get_input_focus.jl");            export get_input_focus
include("requests/query_keymap.jl");               export query_keymap
include("requests/open_font.jl");                  export open_font
include("requests/close_font.jl");                 export close_font
include("requests/query_font.jl");                 export query_font
include("requests/query_text_extents.jl");         export query_text_extents
include("requests/list_fonts.jl");                 export list_fonts
include("requests/get_font_path.jl");              export get_font_path
include("requests/set_font_path.jl");              export set_font_path
include("requests/create_pixmap.jl");              export create_pixmap
include("requests/free_pixmap.jl");                export free_pixmap
include("requests/create_gc.jl");                  export create_gc
include("requests/change_gc.jl");                  export change_gc
include("requests/set_dashes.jl");                 export set_dashes
include("requests/free_gc.jl");                    export free_gc
include("requests/clear_area.jl");                 export clear_area
include("requests/copy_area.jl");                  export copy_area
include("requests/copy_plane.jl");                 export copy_plane
include("requests/poly_point.jl");                 export poly_point
include("requests/poly_line.jl");                  export poly_line
include("requests/poly_segment.jl");               export poly_segment
include("requests/poly_rectangle.jl");             export poly_rectangle
include("requests/poly_arc.jl");                   export poly_arc
include("requests/fill_poly.jl");                  export fill_poly
include("requests/poly_fill_rectangle.jl");        export poly_fill_rectangle
include("requests/poly_fill_arc.jl");              export poly_fill_arc
include("requests/put_image.jl");                  export put_image
include("requests/get_image.jl");                  export get_image
include("requests/poly_text_8.jl");                export poly_text_8
include("requests/poly_text_16.jl");               export poly_text_16
include("requests/image_text_8.jl");               export image_text_8
include("requests/image_text_16.jl");              export image_text_16
include("requests/create_colormap.jl");            export create_colormap
include("requests/free_colormap.jl");              export free_colormap
include("requests/copy_colormap_and_free.jl");     export copy_colormap_and_free
include("requests/install_colormap.jl");           export install_colormap
include("requests/uninstall_colormap.jl");         export uninstall_colormap
include("requests/list_installed_colormaps.jl");   export list_installed_colormaps
include("requests/alloc_color.jl");                export alloc_color
include("requests/alloc_named_color.jl");          export alloc_named_color
# TODO: alloc_color_{cells,planes}
include("requests/free_colors.jl");                export free_colors
include("requests/store_colors.jl");               export store_colors
include("requests/store_named_color.jl");          export store_named_color
include("requests/query_colors.jl");               export query_colors
include("requests/lookup_color.jl");               export lookup_color
include("requests/create_cursor.jl");              export create_cursor
include("requests/create_glyph_cursor.jl");        export create_glyph_cursor
include("requests/free_cursor.jl");                export free_cursor
include("requests/recolor_cursor.jl");             export recolor_cursor
include("requests/query_best_size.jl");            export query_best_size
include("requests/query_extension.jl");            export query_extension
include("requests/list_extensions.jl");            export list_extensions
include("requests/change_keyboard_mapping.jl");    export change_keyboard_mapping
include("requests/get_keyboard_mapping.jl");       export get_keyboard_mapping
include("requests/change_keyboard_control.jl");    export change_keyboard_control
include("requests/get_keyboard_control.jl");       export get_keyboard_control
include("requests/bell.jl");                       export bell
include("requests/change_pointer_control.jl");     export change_pointer_control
include("requests/get_pointer_control.jl");        export get_pointer_control
include("requests/set_screen_saver.jl");           export set_screen_saver
include("requests/get_screen_saver.jl");           export get_screen_saver
# TODO: Hosts / Access control requests
include("requests/set_close_down_mode.jl");        export set_close_down_mode
include("requests/kill_client.jl");                export kill_client
include("requests/rotate_properties.jl");          export rotate_properties
include("requests/force_screen_saver.jl");         export force_screen_saver
include("requests/set_pointer_mapping.jl");        export set_pointer_mapping
include("requests/get_pointer_mapping.jl");        export get_pointer_mapping
include("requests/set_modifier_mapping.jl");       export set_modifier_mapping
include("requests/get_modifier_mapping.jl");       export get_modifier_mapping
include("requests/no_operation.jl");               export no_operation

end # module
