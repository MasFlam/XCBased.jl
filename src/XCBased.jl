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

# TODO: Connection errors
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

export generate_id

function generate_id(conn:: XCBConnection):: UInt32
	LibXCB.xcb_generate_id(conn.handle)
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

include("requests/create_window.jl")
include("requests/change_window_attributes.jl")
include("requests/get_window_attributes.jl")
include("requests/destroy_window.jl")
include("requests/destroy_subwindows.jl")
include("requests/change_save_set.jl")
include("requests/reparent_window.jl")
include("requests/map_window.jl")
include("requests/map_subwindows.jl")
include("requests/unmap_window.jl")
include("requests/unmap_subwindows.jl")
include("requests/configure_window.jl")
include("requests/circulate_windows.jl")
include("requests/get_geometry.jl")
include("requests/query_tree.jl")
include("requests/intern_atom.jl")
include("requests/get_atom_name.jl")
include("requests/change_property.jl")
include("requests/delete_property.jl")
include("requests/get_property.jl")
include("requests/list_properties.jl")
include("requests/set_selection_owner.jl")
include("requests/get_selection_owner.jl")
include("requests/convert_selection.jl")
# TODO: send_event <- need to abstract events into sth -- all events are 32byte but the structs arent
include("requests/grab_pointer.jl")
include("requests/ungrab_pointer.jl")
include("requests/grab_button.jl")
include("requests/ungrab_button.jl")
include("requests/change_active_pointer_grab.jl")
include("requests/grab_keyboard.jl")
include("requests/ungrab_keyboard.jl")
include("requests/grab_key.jl")
include("requests/ungrab_key.jl")
include("requests/allow_events.jl")
include("requests/grab_server.jl")
include("requests/ungrab_server.jl")
include("requests/query_pointer.jl")
include("requests/get_motion_events.jl")
include("requests/translate_coordinates.jl")
include("requests/warp_pointer.jl")
include("requests/set_input_focus.jl")
include("requests/get_input_focus.jl")
include("requests/query_keymap.jl")
include("requests/open_font.jl")
include("requests/close_font.jl")
include("requests/query_font.jl")
include("requests/query_text_extents.jl")
include("requests/list_fonts.jl")
include("requests/get_font_path.jl")
include("requests/set_font_path.jl")
include("requests/create_pixmap.jl")
include("requests/free_pixmap.jl")
include("requests/create_gc.jl")
include("requests/change_gc.jl")
include("requests/set_dashes.jl")
include("requests/free_gc.jl")
include("requests/clear_area.jl")
include("requests/copy_area.jl")
include("requests/copy_plane.jl")
include("requests/poly_point.jl")
include("requests/poly_line.jl")
include("requests/poly_segment.jl")
include("requests/poly_rectangle.jl")
include("requests/poly_arc.jl")
include("requests/fill_poly.jl")
include("requests/poly_fill_rectangle.jl")
include("requests/poly_fill_arc.jl")
# TODO: put_image through image_text_16
include("requests/create_colormap.jl")
include("requests/free_colormap.jl")
include("requests/copy_colormap_and_free.jl")
include("requests/install_colormap.jl")
include("requests/uninstall_colormap.jl")
include("requests/list_installed_colormaps.jl")
include("requests/alloc_color.jl")
include("requests/alloc_named_color.jl")
# TODO: alloc_color_{cells,planes}
include("requests/free_colors.jl")
include("requests/store_colors.jl")
include("requests/store_named_color.jl")
include("requests/query_colors.jl")
include("requests/lookup_color.jl")
include("requests/create_cursor.jl")
include("requests/create_glyph_cursor.jl")
include("requests/free_cursor.jl")
include("requests/recolor_cursor.jl")
include("requests/query_best_size.jl")
include("requests/query_extension.jl")
include("requests/list_extensions.jl")
include("requests/change_keyboard_mapping.jl")
include("requests/get_keyboard_mapping.jl")
include("requests/change_keyboard_control.jl")
include("requests/get_keyboard_control.jl")
include("requests/bell.jl")
include("requests/change_pointer_control.jl")
include("requests/get_pointer_control.jl")
include("requests/set_screen_saver.jl")
include("requests/get_screen_saver.jl")
# TODO: Hosts / Access control requests
include("requests/set_close_down_mode.jl")
include("requests/kill_client.jl")
include("requests/rotate_properties.jl")
include("requests/force_screen_saver.jl")
include("requests/set_pointer_mapping.jl")
include("requests/get_pointer_mapping.jl")
include("requests/set_modifier_mapping.jl")
include("requests/get_modifier_mapping.jl")
include("requests/no_operation.jl")

end # module
