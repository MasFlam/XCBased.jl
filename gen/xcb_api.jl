# Julia wrapper for header: xcb.h
# Automatically generated using Clang.jl


function xcb_flush(c)
    ccall((:xcb_flush, var"libxcb.so.1"), Cint, (Ptr{xcb_connection_t},), c)
end

function xcb_get_maximum_request_length(c)
    ccall((:xcb_get_maximum_request_length, var"libxcb.so.1"), UInt32, (Ptr{xcb_connection_t},), c)
end

function xcb_prefetch_maximum_request_length(c)
    ccall((:xcb_prefetch_maximum_request_length, var"libxcb.so.1"), Cvoid, (Ptr{xcb_connection_t},), c)
end

function xcb_wait_for_event(c)
    ccall((:xcb_wait_for_event, var"libxcb.so.1"), Ptr{xcb_generic_event_t}, (Ptr{xcb_connection_t},), c)
end

function xcb_poll_for_event(c)
    ccall((:xcb_poll_for_event, var"libxcb.so.1"), Ptr{xcb_generic_event_t}, (Ptr{xcb_connection_t},), c)
end

function xcb_poll_for_queued_event(c)
    ccall((:xcb_poll_for_queued_event, var"libxcb.so.1"), Ptr{xcb_generic_event_t}, (Ptr{xcb_connection_t},), c)
end

function xcb_poll_for_special_event(c, se)
    ccall((:xcb_poll_for_special_event, var"libxcb.so.1"), Ptr{xcb_generic_event_t}, (Ptr{xcb_connection_t}, Ptr{xcb_special_event_t}), c, se)
end

function xcb_wait_for_special_event(c, se)
    ccall((:xcb_wait_for_special_event, var"libxcb.so.1"), Ptr{xcb_generic_event_t}, (Ptr{xcb_connection_t}, Ptr{xcb_special_event_t}), c, se)
end

function xcb_register_for_special_xge(c, ext, eid, stamp)
    ccall((:xcb_register_for_special_xge, var"libxcb.so.1"), Ptr{xcb_special_event_t}, (Ptr{xcb_connection_t}, Ptr{xcb_extension_t}, UInt32, Ptr{UInt32}), c, ext, eid, stamp)
end

function xcb_unregister_for_special_event(c, se)
    ccall((:xcb_unregister_for_special_event, var"libxcb.so.1"), Cvoid, (Ptr{xcb_connection_t}, Ptr{xcb_special_event_t}), c, se)
end

function xcb_request_check(c, cookie)
    ccall((:xcb_request_check, var"libxcb.so.1"), Ptr{xcb_generic_error_t}, (Ptr{xcb_connection_t}, xcb_void_cookie_t), c, cookie)
end

function xcb_discard_reply(c, sequence)
    ccall((:xcb_discard_reply, var"libxcb.so.1"), Cvoid, (Ptr{xcb_connection_t}, UInt32), c, sequence)
end

function xcb_discard_reply64(c, sequence)
    ccall((:xcb_discard_reply64, var"libxcb.so.1"), Cvoid, (Ptr{xcb_connection_t}, UInt64), c, sequence)
end

function xcb_get_extension_data(c, ext)
    ccall((:xcb_get_extension_data, var"libxcb.so.1"), Ptr{xcb_query_extension_reply_t}, (Ptr{xcb_connection_t}, Ptr{xcb_extension_t}), c, ext)
end

function xcb_prefetch_extension_data(c, ext)
    ccall((:xcb_prefetch_extension_data, var"libxcb.so.1"), Cvoid, (Ptr{xcb_connection_t}, Ptr{xcb_extension_t}), c, ext)
end

function xcb_get_setup(c)
    ccall((:xcb_get_setup, var"libxcb.so.1"), Ptr{xcb_setup_t}, (Ptr{xcb_connection_t},), c)
end

function xcb_get_file_descriptor(c)
    ccall((:xcb_get_file_descriptor, var"libxcb.so.1"), Cint, (Ptr{xcb_connection_t},), c)
end

function xcb_connection_has_error(c)
    ccall((:xcb_connection_has_error, var"libxcb.so.1"), Cint, (Ptr{xcb_connection_t},), c)
end

function xcb_connect_to_fd(fd, auth_info)
    ccall((:xcb_connect_to_fd, var"libxcb.so.1"), Ptr{xcb_connection_t}, (Cint, Ptr{xcb_auth_info_t}), fd, auth_info)
end

function xcb_disconnect(c)
    ccall((:xcb_disconnect, var"libxcb.so.1"), Cvoid, (Ptr{xcb_connection_t},), c)
end

function xcb_parse_display(name, host, display, screen)
    ccall((:xcb_parse_display, var"libxcb.so.1"), Cint, (Cstring, Ptr{Cstring}, Ptr{Cint}, Ptr{Cint}), name, host, display, screen)
end

function xcb_connect(displayname, screenp)
    ccall((:xcb_connect, var"libxcb.so.1"), Ptr{xcb_connection_t}, (Cstring, Ptr{Cint}), displayname, screenp)
end

function xcb_connect_to_display_with_auth_info(display, auth, screen)
    ccall((:xcb_connect_to_display_with_auth_info, var"libxcb.so.1"), Ptr{xcb_connection_t}, (Cstring, Ptr{xcb_auth_info_t}, Ptr{Cint}), display, auth, screen)
end

function xcb_generate_id(c)
    ccall((:xcb_generate_id, var"libxcb.so.1"), UInt32, (Ptr{xcb_connection_t},), c)
end
# Julia wrapper for header: xproto.h
# Automatically generated using Clang.jl


function xcb_char2b_next(i)
    ccall((:xcb_char2b_next, var"libxcb.so.1"), Cvoid, (Ptr{xcb_char2b_iterator_t},), i)
end

function xcb_char2b_end(i)
    ccall((:xcb_char2b_end, var"libxcb.so.1"), xcb_generic_iterator_t, (xcb_char2b_iterator_t,), i)
end

function xcb_window_next(i)
    ccall((:xcb_window_next, var"libxcb.so.1"), Cvoid, (Ptr{xcb_window_iterator_t},), i)
end

function xcb_window_end(i)
    ccall((:xcb_window_end, var"libxcb.so.1"), xcb_generic_iterator_t, (xcb_window_iterator_t,), i)
end

function xcb_pixmap_next(i)
    ccall((:xcb_pixmap_next, var"libxcb.so.1"), Cvoid, (Ptr{xcb_pixmap_iterator_t},), i)
end

function xcb_pixmap_end(i)
    ccall((:xcb_pixmap_end, var"libxcb.so.1"), xcb_generic_iterator_t, (xcb_pixmap_iterator_t,), i)
end

function xcb_cursor_next(i)
    ccall((:xcb_cursor_next, var"libxcb.so.1"), Cvoid, (Ptr{xcb_cursor_iterator_t},), i)
end

function xcb_cursor_end(i)
    ccall((:xcb_cursor_end, var"libxcb.so.1"), xcb_generic_iterator_t, (xcb_cursor_iterator_t,), i)
end

function xcb_font_next(i)
    ccall((:xcb_font_next, var"libxcb.so.1"), Cvoid, (Ptr{xcb_font_iterator_t},), i)
end

function xcb_font_end(i)
    ccall((:xcb_font_end, var"libxcb.so.1"), xcb_generic_iterator_t, (xcb_font_iterator_t,), i)
end

function xcb_gcontext_next(i)
    ccall((:xcb_gcontext_next, var"libxcb.so.1"), Cvoid, (Ptr{xcb_gcontext_iterator_t},), i)
end

function xcb_gcontext_end(i)
    ccall((:xcb_gcontext_end, var"libxcb.so.1"), xcb_generic_iterator_t, (xcb_gcontext_iterator_t,), i)
end

function xcb_colormap_next(i)
    ccall((:xcb_colormap_next, var"libxcb.so.1"), Cvoid, (Ptr{xcb_colormap_iterator_t},), i)
end

function xcb_colormap_end(i)
    ccall((:xcb_colormap_end, var"libxcb.so.1"), xcb_generic_iterator_t, (xcb_colormap_iterator_t,), i)
end

function xcb_atom_next(i)
    ccall((:xcb_atom_next, var"libxcb.so.1"), Cvoid, (Ptr{xcb_atom_iterator_t},), i)
end

function xcb_atom_end(i)
    ccall((:xcb_atom_end, var"libxcb.so.1"), xcb_generic_iterator_t, (xcb_atom_iterator_t,), i)
end

function xcb_drawable_next(i)
    ccall((:xcb_drawable_next, var"libxcb.so.1"), Cvoid, (Ptr{xcb_drawable_iterator_t},), i)
end

function xcb_drawable_end(i)
    ccall((:xcb_drawable_end, var"libxcb.so.1"), xcb_generic_iterator_t, (xcb_drawable_iterator_t,), i)
end

function xcb_fontable_next(i)
    ccall((:xcb_fontable_next, var"libxcb.so.1"), Cvoid, (Ptr{xcb_fontable_iterator_t},), i)
end

function xcb_fontable_end(i)
    ccall((:xcb_fontable_end, var"libxcb.so.1"), xcb_generic_iterator_t, (xcb_fontable_iterator_t,), i)
end

function xcb_bool32_next(i)
    ccall((:xcb_bool32_next, var"libxcb.so.1"), Cvoid, (Ptr{xcb_bool32_iterator_t},), i)
end

function xcb_bool32_end(i)
    ccall((:xcb_bool32_end, var"libxcb.so.1"), xcb_generic_iterator_t, (xcb_bool32_iterator_t,), i)
end

function xcb_visualid_next(i)
    ccall((:xcb_visualid_next, var"libxcb.so.1"), Cvoid, (Ptr{xcb_visualid_iterator_t},), i)
end

function xcb_visualid_end(i)
    ccall((:xcb_visualid_end, var"libxcb.so.1"), xcb_generic_iterator_t, (xcb_visualid_iterator_t,), i)
end

function xcb_timestamp_next(i)
    ccall((:xcb_timestamp_next, var"libxcb.so.1"), Cvoid, (Ptr{xcb_timestamp_iterator_t},), i)
end

function xcb_timestamp_end(i)
    ccall((:xcb_timestamp_end, var"libxcb.so.1"), xcb_generic_iterator_t, (xcb_timestamp_iterator_t,), i)
end

function xcb_keysym_next(i)
    ccall((:xcb_keysym_next, var"libxcb.so.1"), Cvoid, (Ptr{xcb_keysym_iterator_t},), i)
end

function xcb_keysym_end(i)
    ccall((:xcb_keysym_end, var"libxcb.so.1"), xcb_generic_iterator_t, (xcb_keysym_iterator_t,), i)
end

function xcb_keycode_next(i)
    ccall((:xcb_keycode_next, var"libxcb.so.1"), Cvoid, (Ptr{xcb_keycode_iterator_t},), i)
end

function xcb_keycode_end(i)
    ccall((:xcb_keycode_end, var"libxcb.so.1"), xcb_generic_iterator_t, (xcb_keycode_iterator_t,), i)
end

function xcb_keycode32_next(i)
    ccall((:xcb_keycode32_next, var"libxcb.so.1"), Cvoid, (Ptr{xcb_keycode32_iterator_t},), i)
end

function xcb_keycode32_end(i)
    ccall((:xcb_keycode32_end, var"libxcb.so.1"), xcb_generic_iterator_t, (xcb_keycode32_iterator_t,), i)
end

function xcb_button_next(i)
    ccall((:xcb_button_next, var"libxcb.so.1"), Cvoid, (Ptr{xcb_button_iterator_t},), i)
end

function xcb_button_end(i)
    ccall((:xcb_button_end, var"libxcb.so.1"), xcb_generic_iterator_t, (xcb_button_iterator_t,), i)
end

function xcb_point_next(i)
    ccall((:xcb_point_next, var"libxcb.so.1"), Cvoid, (Ptr{xcb_point_iterator_t},), i)
end

function xcb_point_end(i)
    ccall((:xcb_point_end, var"libxcb.so.1"), xcb_generic_iterator_t, (xcb_point_iterator_t,), i)
end

function xcb_rectangle_next(i)
    ccall((:xcb_rectangle_next, var"libxcb.so.1"), Cvoid, (Ptr{xcb_rectangle_iterator_t},), i)
end

function xcb_rectangle_end(i)
    ccall((:xcb_rectangle_end, var"libxcb.so.1"), xcb_generic_iterator_t, (xcb_rectangle_iterator_t,), i)
end

function xcb_arc_next(i)
    ccall((:xcb_arc_next, var"libxcb.so.1"), Cvoid, (Ptr{xcb_arc_iterator_t},), i)
end

function xcb_arc_end(i)
    ccall((:xcb_arc_end, var"libxcb.so.1"), xcb_generic_iterator_t, (xcb_arc_iterator_t,), i)
end

function xcb_format_next(i)
    ccall((:xcb_format_next, var"libxcb.so.1"), Cvoid, (Ptr{xcb_format_iterator_t},), i)
end

function xcb_format_end(i)
    ccall((:xcb_format_end, var"libxcb.so.1"), xcb_generic_iterator_t, (xcb_format_iterator_t,), i)
end

function xcb_visualtype_next(i)
    ccall((:xcb_visualtype_next, var"libxcb.so.1"), Cvoid, (Ptr{xcb_visualtype_iterator_t},), i)
end

function xcb_visualtype_end(i)
    ccall((:xcb_visualtype_end, var"libxcb.so.1"), xcb_generic_iterator_t, (xcb_visualtype_iterator_t,), i)
end

function xcb_depth_sizeof(_buffer)
    ccall((:xcb_depth_sizeof, var"libxcb.so.1"), Cint, (Ptr{Cvoid},), _buffer)
end

function xcb_depth_visuals(R)
    ccall((:xcb_depth_visuals, var"libxcb.so.1"), Ptr{xcb_visualtype_t}, (Ptr{xcb_depth_t},), R)
end

function xcb_depth_visuals_length(R)
    ccall((:xcb_depth_visuals_length, var"libxcb.so.1"), Cint, (Ptr{xcb_depth_t},), R)
end

function xcb_depth_visuals_iterator(R)
    ccall((:xcb_depth_visuals_iterator, var"libxcb.so.1"), xcb_visualtype_iterator_t, (Ptr{xcb_depth_t},), R)
end

function xcb_depth_next(i)
    ccall((:xcb_depth_next, var"libxcb.so.1"), Cvoid, (Ptr{xcb_depth_iterator_t},), i)
end

function xcb_depth_end(i)
    ccall((:xcb_depth_end, var"libxcb.so.1"), xcb_generic_iterator_t, (xcb_depth_iterator_t,), i)
end

function xcb_screen_sizeof(_buffer)
    ccall((:xcb_screen_sizeof, var"libxcb.so.1"), Cint, (Ptr{Cvoid},), _buffer)
end

function xcb_screen_allowed_depths_length(R)
    ccall((:xcb_screen_allowed_depths_length, var"libxcb.so.1"), Cint, (Ptr{xcb_screen_t},), R)
end

function xcb_screen_allowed_depths_iterator(R)
    ccall((:xcb_screen_allowed_depths_iterator, var"libxcb.so.1"), xcb_depth_iterator_t, (Ptr{xcb_screen_t},), R)
end

function xcb_screen_next(i)
    ccall((:xcb_screen_next, var"libxcb.so.1"), Cvoid, (Ptr{xcb_screen_iterator_t},), i)
end

function xcb_screen_end(i)
    ccall((:xcb_screen_end, var"libxcb.so.1"), xcb_generic_iterator_t, (xcb_screen_iterator_t,), i)
end

function xcb_setup_request_sizeof(_buffer)
    ccall((:xcb_setup_request_sizeof, var"libxcb.so.1"), Cint, (Ptr{Cvoid},), _buffer)
end

function xcb_setup_request_authorization_protocol_name(R)
    ccall((:xcb_setup_request_authorization_protocol_name, var"libxcb.so.1"), Cstring, (Ptr{xcb_setup_request_t},), R)
end

function xcb_setup_request_authorization_protocol_name_length(R)
    ccall((:xcb_setup_request_authorization_protocol_name_length, var"libxcb.so.1"), Cint, (Ptr{xcb_setup_request_t},), R)
end

function xcb_setup_request_authorization_protocol_name_end(R)
    ccall((:xcb_setup_request_authorization_protocol_name_end, var"libxcb.so.1"), xcb_generic_iterator_t, (Ptr{xcb_setup_request_t},), R)
end

function xcb_setup_request_authorization_protocol_data(R)
    ccall((:xcb_setup_request_authorization_protocol_data, var"libxcb.so.1"), Cstring, (Ptr{xcb_setup_request_t},), R)
end

function xcb_setup_request_authorization_protocol_data_length(R)
    ccall((:xcb_setup_request_authorization_protocol_data_length, var"libxcb.so.1"), Cint, (Ptr{xcb_setup_request_t},), R)
end

function xcb_setup_request_authorization_protocol_data_end(R)
    ccall((:xcb_setup_request_authorization_protocol_data_end, var"libxcb.so.1"), xcb_generic_iterator_t, (Ptr{xcb_setup_request_t},), R)
end

function xcb_setup_request_next(i)
    ccall((:xcb_setup_request_next, var"libxcb.so.1"), Cvoid, (Ptr{xcb_setup_request_iterator_t},), i)
end

function xcb_setup_request_end(i)
    ccall((:xcb_setup_request_end, var"libxcb.so.1"), xcb_generic_iterator_t, (xcb_setup_request_iterator_t,), i)
end

function xcb_setup_failed_sizeof(_buffer)
    ccall((:xcb_setup_failed_sizeof, var"libxcb.so.1"), Cint, (Ptr{Cvoid},), _buffer)
end

function xcb_setup_failed_reason(R)
    ccall((:xcb_setup_failed_reason, var"libxcb.so.1"), Cstring, (Ptr{xcb_setup_failed_t},), R)
end

function xcb_setup_failed_reason_length(R)
    ccall((:xcb_setup_failed_reason_length, var"libxcb.so.1"), Cint, (Ptr{xcb_setup_failed_t},), R)
end

function xcb_setup_failed_reason_end(R)
    ccall((:xcb_setup_failed_reason_end, var"libxcb.so.1"), xcb_generic_iterator_t, (Ptr{xcb_setup_failed_t},), R)
end

function xcb_setup_failed_next(i)
    ccall((:xcb_setup_failed_next, var"libxcb.so.1"), Cvoid, (Ptr{xcb_setup_failed_iterator_t},), i)
end

function xcb_setup_failed_end(i)
    ccall((:xcb_setup_failed_end, var"libxcb.so.1"), xcb_generic_iterator_t, (xcb_setup_failed_iterator_t,), i)
end

function xcb_setup_authenticate_sizeof(_buffer)
    ccall((:xcb_setup_authenticate_sizeof, var"libxcb.so.1"), Cint, (Ptr{Cvoid},), _buffer)
end

function xcb_setup_authenticate_reason(R)
    ccall((:xcb_setup_authenticate_reason, var"libxcb.so.1"), Cstring, (Ptr{xcb_setup_authenticate_t},), R)
end

function xcb_setup_authenticate_reason_length(R)
    ccall((:xcb_setup_authenticate_reason_length, var"libxcb.so.1"), Cint, (Ptr{xcb_setup_authenticate_t},), R)
end

function xcb_setup_authenticate_reason_end(R)
    ccall((:xcb_setup_authenticate_reason_end, var"libxcb.so.1"), xcb_generic_iterator_t, (Ptr{xcb_setup_authenticate_t},), R)
end

function xcb_setup_authenticate_next(i)
    ccall((:xcb_setup_authenticate_next, var"libxcb.so.1"), Cvoid, (Ptr{xcb_setup_authenticate_iterator_t},), i)
end

function xcb_setup_authenticate_end(i)
    ccall((:xcb_setup_authenticate_end, var"libxcb.so.1"), xcb_generic_iterator_t, (xcb_setup_authenticate_iterator_t,), i)
end

function xcb_setup_sizeof(_buffer)
    ccall((:xcb_setup_sizeof, var"libxcb.so.1"), Cint, (Ptr{Cvoid},), _buffer)
end

function xcb_setup_vendor(R)
    ccall((:xcb_setup_vendor, var"libxcb.so.1"), Cstring, (Ptr{xcb_setup_t},), R)
end

function xcb_setup_vendor_length(R)
    ccall((:xcb_setup_vendor_length, var"libxcb.so.1"), Cint, (Ptr{xcb_setup_t},), R)
end

function xcb_setup_vendor_end(R)
    ccall((:xcb_setup_vendor_end, var"libxcb.so.1"), xcb_generic_iterator_t, (Ptr{xcb_setup_t},), R)
end

function xcb_setup_pixmap_formats(R)
    ccall((:xcb_setup_pixmap_formats, var"libxcb.so.1"), Ptr{xcb_format_t}, (Ptr{xcb_setup_t},), R)
end

function xcb_setup_pixmap_formats_length(R)
    ccall((:xcb_setup_pixmap_formats_length, var"libxcb.so.1"), Cint, (Ptr{xcb_setup_t},), R)
end

function xcb_setup_pixmap_formats_iterator(R)
    ccall((:xcb_setup_pixmap_formats_iterator, var"libxcb.so.1"), xcb_format_iterator_t, (Ptr{xcb_setup_t},), R)
end

function xcb_setup_roots_length(R)
    ccall((:xcb_setup_roots_length, var"libxcb.so.1"), Cint, (Ptr{xcb_setup_t},), R)
end

function xcb_setup_roots_iterator(R)
    ccall((:xcb_setup_roots_iterator, var"libxcb.so.1"), xcb_screen_iterator_t, (Ptr{xcb_setup_t},), R)
end

function xcb_setup_next(i)
    ccall((:xcb_setup_next, var"libxcb.so.1"), Cvoid, (Ptr{xcb_setup_iterator_t},), i)
end

function xcb_setup_end(i)
    ccall((:xcb_setup_end, var"libxcb.so.1"), xcb_generic_iterator_t, (xcb_setup_iterator_t,), i)
end

function xcb_client_message_data_next(i)
    ccall((:xcb_client_message_data_next, var"libxcb.so.1"), Cvoid, (Ptr{xcb_client_message_data_iterator_t},), i)
end

function xcb_client_message_data_end(i)
    ccall((:xcb_client_message_data_end, var"libxcb.so.1"), xcb_generic_iterator_t, (xcb_client_message_data_iterator_t,), i)
end

function xcb_create_window_value_list_serialize(_buffer, value_mask, _aux)
    ccall((:xcb_create_window_value_list_serialize, var"libxcb.so.1"), Cint, (Ptr{Ptr{Cvoid}}, UInt32, Ptr{xcb_create_window_value_list_t}), _buffer, value_mask, _aux)
end

function xcb_create_window_value_list_unpack(_buffer, value_mask, _aux)
    ccall((:xcb_create_window_value_list_unpack, var"libxcb.so.1"), Cint, (Ptr{Cvoid}, UInt32, Ptr{xcb_create_window_value_list_t}), _buffer, value_mask, _aux)
end

function xcb_create_window_value_list_sizeof(_buffer, value_mask)
    ccall((:xcb_create_window_value_list_sizeof, var"libxcb.so.1"), Cint, (Ptr{Cvoid}, UInt32), _buffer, value_mask)
end

function xcb_create_window_sizeof(_buffer)
    ccall((:xcb_create_window_sizeof, var"libxcb.so.1"), Cint, (Ptr{Cvoid},), _buffer)
end

function xcb_create_window_checked(c, depth, wid, parent, x, y, width, height, border_width, _class, visual, value_mask, value_list)
    ccall((:xcb_create_window_checked, var"libxcb.so.1"), xcb_void_cookie_t, (Ptr{xcb_connection_t}, UInt8, xcb_window_t, xcb_window_t, Int16, Int16, UInt16, UInt16, UInt16, UInt16, xcb_visualid_t, UInt32, Ptr{Cvoid}), c, depth, wid, parent, x, y, width, height, border_width, _class, visual, value_mask, value_list)
end

function xcb_create_window(c, depth, wid, parent, x, y, width, height, border_width, _class, visual, value_mask, value_list)
    ccall((:xcb_create_window, var"libxcb.so.1"), xcb_void_cookie_t, (Ptr{xcb_connection_t}, UInt8, xcb_window_t, xcb_window_t, Int16, Int16, UInt16, UInt16, UInt16, UInt16, xcb_visualid_t, UInt32, Ptr{Cvoid}), c, depth, wid, parent, x, y, width, height, border_width, _class, visual, value_mask, value_list)
end

function xcb_create_window_aux_checked(c, depth, wid, parent, x, y, width, height, border_width, _class, visual, value_mask, value_list)
    ccall((:xcb_create_window_aux_checked, var"libxcb.so.1"), xcb_void_cookie_t, (Ptr{xcb_connection_t}, UInt8, xcb_window_t, xcb_window_t, Int16, Int16, UInt16, UInt16, UInt16, UInt16, xcb_visualid_t, UInt32, Ptr{xcb_create_window_value_list_t}), c, depth, wid, parent, x, y, width, height, border_width, _class, visual, value_mask, value_list)
end

function xcb_create_window_aux(c, depth, wid, parent, x, y, width, height, border_width, _class, visual, value_mask, value_list)
    ccall((:xcb_create_window_aux, var"libxcb.so.1"), xcb_void_cookie_t, (Ptr{xcb_connection_t}, UInt8, xcb_window_t, xcb_window_t, Int16, Int16, UInt16, UInt16, UInt16, UInt16, xcb_visualid_t, UInt32, Ptr{xcb_create_window_value_list_t}), c, depth, wid, parent, x, y, width, height, border_width, _class, visual, value_mask, value_list)
end

function xcb_create_window_value_list(R)
    ccall((:xcb_create_window_value_list, var"libxcb.so.1"), Ptr{Cvoid}, (Ptr{xcb_create_window_request_t},), R)
end

function xcb_change_window_attributes_value_list_serialize(_buffer, value_mask, _aux)
    ccall((:xcb_change_window_attributes_value_list_serialize, var"libxcb.so.1"), Cint, (Ptr{Ptr{Cvoid}}, UInt32, Ptr{xcb_change_window_attributes_value_list_t}), _buffer, value_mask, _aux)
end

function xcb_change_window_attributes_value_list_unpack(_buffer, value_mask, _aux)
    ccall((:xcb_change_window_attributes_value_list_unpack, var"libxcb.so.1"), Cint, (Ptr{Cvoid}, UInt32, Ptr{xcb_change_window_attributes_value_list_t}), _buffer, value_mask, _aux)
end

function xcb_change_window_attributes_value_list_sizeof(_buffer, value_mask)
    ccall((:xcb_change_window_attributes_value_list_sizeof, var"libxcb.so.1"), Cint, (Ptr{Cvoid}, UInt32), _buffer, value_mask)
end

function xcb_change_window_attributes_sizeof(_buffer)
    ccall((:xcb_change_window_attributes_sizeof, var"libxcb.so.1"), Cint, (Ptr{Cvoid},), _buffer)
end

function xcb_change_window_attributes_checked(c, window, value_mask, value_list)
    ccall((:xcb_change_window_attributes_checked, var"libxcb.so.1"), xcb_void_cookie_t, (Ptr{xcb_connection_t}, xcb_window_t, UInt32, Ptr{Cvoid}), c, window, value_mask, value_list)
end

function xcb_change_window_attributes(c, window, value_mask, value_list)
    ccall((:xcb_change_window_attributes, var"libxcb.so.1"), xcb_void_cookie_t, (Ptr{xcb_connection_t}, xcb_window_t, UInt32, Ptr{Cvoid}), c, window, value_mask, value_list)
end

function xcb_change_window_attributes_aux_checked(c, window, value_mask, value_list)
    ccall((:xcb_change_window_attributes_aux_checked, var"libxcb.so.1"), xcb_void_cookie_t, (Ptr{xcb_connection_t}, xcb_window_t, UInt32, Ptr{xcb_change_window_attributes_value_list_t}), c, window, value_mask, value_list)
end

function xcb_change_window_attributes_aux(c, window, value_mask, value_list)
    ccall((:xcb_change_window_attributes_aux, var"libxcb.so.1"), xcb_void_cookie_t, (Ptr{xcb_connection_t}, xcb_window_t, UInt32, Ptr{xcb_change_window_attributes_value_list_t}), c, window, value_mask, value_list)
end

function xcb_change_window_attributes_value_list(R)
    ccall((:xcb_change_window_attributes_value_list, var"libxcb.so.1"), Ptr{Cvoid}, (Ptr{xcb_change_window_attributes_request_t},), R)
end

function xcb_get_window_attributes(c, window)
    ccall((:xcb_get_window_attributes, var"libxcb.so.1"), xcb_get_window_attributes_cookie_t, (Ptr{xcb_connection_t}, xcb_window_t), c, window)
end

function xcb_get_window_attributes_unchecked(c, window)
    ccall((:xcb_get_window_attributes_unchecked, var"libxcb.so.1"), xcb_get_window_attributes_cookie_t, (Ptr{xcb_connection_t}, xcb_window_t), c, window)
end

function xcb_get_window_attributes_reply(c, cookie, e)
    ccall((:xcb_get_window_attributes_reply, var"libxcb.so.1"), Ptr{xcb_get_window_attributes_reply_t}, (Ptr{xcb_connection_t}, xcb_get_window_attributes_cookie_t, Ptr{Ptr{xcb_generic_error_t}}), c, cookie, e)
end

function xcb_destroy_window_checked(c, window)
    ccall((:xcb_destroy_window_checked, var"libxcb.so.1"), xcb_void_cookie_t, (Ptr{xcb_connection_t}, xcb_window_t), c, window)
end

function xcb_destroy_window(c, window)
    ccall((:xcb_destroy_window, var"libxcb.so.1"), xcb_void_cookie_t, (Ptr{xcb_connection_t}, xcb_window_t), c, window)
end

function xcb_destroy_subwindows_checked(c, window)
    ccall((:xcb_destroy_subwindows_checked, var"libxcb.so.1"), xcb_void_cookie_t, (Ptr{xcb_connection_t}, xcb_window_t), c, window)
end

function xcb_destroy_subwindows(c, window)
    ccall((:xcb_destroy_subwindows, var"libxcb.so.1"), xcb_void_cookie_t, (Ptr{xcb_connection_t}, xcb_window_t), c, window)
end

function xcb_change_save_set_checked(c, mode, window)
    ccall((:xcb_change_save_set_checked, var"libxcb.so.1"), xcb_void_cookie_t, (Ptr{xcb_connection_t}, UInt8, xcb_window_t), c, mode, window)
end

function xcb_change_save_set(c, mode, window)
    ccall((:xcb_change_save_set, var"libxcb.so.1"), xcb_void_cookie_t, (Ptr{xcb_connection_t}, UInt8, xcb_window_t), c, mode, window)
end

function xcb_reparent_window_checked(c, window, parent, x, y)
    ccall((:xcb_reparent_window_checked, var"libxcb.so.1"), xcb_void_cookie_t, (Ptr{xcb_connection_t}, xcb_window_t, xcb_window_t, Int16, Int16), c, window, parent, x, y)
end

function xcb_reparent_window(c, window, parent, x, y)
    ccall((:xcb_reparent_window, var"libxcb.so.1"), xcb_void_cookie_t, (Ptr{xcb_connection_t}, xcb_window_t, xcb_window_t, Int16, Int16), c, window, parent, x, y)
end

function xcb_map_window_checked(c, window)
    ccall((:xcb_map_window_checked, var"libxcb.so.1"), xcb_void_cookie_t, (Ptr{xcb_connection_t}, xcb_window_t), c, window)
end

function xcb_map_window(c, window)
    ccall((:xcb_map_window, var"libxcb.so.1"), xcb_void_cookie_t, (Ptr{xcb_connection_t}, xcb_window_t), c, window)
end

function xcb_map_subwindows_checked(c, window)
    ccall((:xcb_map_subwindows_checked, var"libxcb.so.1"), xcb_void_cookie_t, (Ptr{xcb_connection_t}, xcb_window_t), c, window)
end

function xcb_map_subwindows(c, window)
    ccall((:xcb_map_subwindows, var"libxcb.so.1"), xcb_void_cookie_t, (Ptr{xcb_connection_t}, xcb_window_t), c, window)
end

function xcb_unmap_window_checked(c, window)
    ccall((:xcb_unmap_window_checked, var"libxcb.so.1"), xcb_void_cookie_t, (Ptr{xcb_connection_t}, xcb_window_t), c, window)
end

function xcb_unmap_window(c, window)
    ccall((:xcb_unmap_window, var"libxcb.so.1"), xcb_void_cookie_t, (Ptr{xcb_connection_t}, xcb_window_t), c, window)
end

function xcb_unmap_subwindows_checked(c, window)
    ccall((:xcb_unmap_subwindows_checked, var"libxcb.so.1"), xcb_void_cookie_t, (Ptr{xcb_connection_t}, xcb_window_t), c, window)
end

function xcb_unmap_subwindows(c, window)
    ccall((:xcb_unmap_subwindows, var"libxcb.so.1"), xcb_void_cookie_t, (Ptr{xcb_connection_t}, xcb_window_t), c, window)
end

function xcb_configure_window_value_list_serialize(_buffer, value_mask, _aux)
    ccall((:xcb_configure_window_value_list_serialize, var"libxcb.so.1"), Cint, (Ptr{Ptr{Cvoid}}, UInt16, Ptr{xcb_configure_window_value_list_t}), _buffer, value_mask, _aux)
end

function xcb_configure_window_value_list_unpack(_buffer, value_mask, _aux)
    ccall((:xcb_configure_window_value_list_unpack, var"libxcb.so.1"), Cint, (Ptr{Cvoid}, UInt16, Ptr{xcb_configure_window_value_list_t}), _buffer, value_mask, _aux)
end

function xcb_configure_window_value_list_sizeof(_buffer, value_mask)
    ccall((:xcb_configure_window_value_list_sizeof, var"libxcb.so.1"), Cint, (Ptr{Cvoid}, UInt16), _buffer, value_mask)
end

function xcb_configure_window_sizeof(_buffer)
    ccall((:xcb_configure_window_sizeof, var"libxcb.so.1"), Cint, (Ptr{Cvoid},), _buffer)
end

function xcb_configure_window_checked(c, window, value_mask, value_list)
    ccall((:xcb_configure_window_checked, var"libxcb.so.1"), xcb_void_cookie_t, (Ptr{xcb_connection_t}, xcb_window_t, UInt16, Ptr{Cvoid}), c, window, value_mask, value_list)
end

function xcb_configure_window(c, window, value_mask, value_list)
    ccall((:xcb_configure_window, var"libxcb.so.1"), xcb_void_cookie_t, (Ptr{xcb_connection_t}, xcb_window_t, UInt16, Ptr{Cvoid}), c, window, value_mask, value_list)
end

function xcb_configure_window_aux_checked(c, window, value_mask, value_list)
    ccall((:xcb_configure_window_aux_checked, var"libxcb.so.1"), xcb_void_cookie_t, (Ptr{xcb_connection_t}, xcb_window_t, UInt16, Ptr{xcb_configure_window_value_list_t}), c, window, value_mask, value_list)
end

function xcb_configure_window_aux(c, window, value_mask, value_list)
    ccall((:xcb_configure_window_aux, var"libxcb.so.1"), xcb_void_cookie_t, (Ptr{xcb_connection_t}, xcb_window_t, UInt16, Ptr{xcb_configure_window_value_list_t}), c, window, value_mask, value_list)
end

function xcb_configure_window_value_list(R)
    ccall((:xcb_configure_window_value_list, var"libxcb.so.1"), Ptr{Cvoid}, (Ptr{xcb_configure_window_request_t},), R)
end

function xcb_circulate_window_checked(c, direction, window)
    ccall((:xcb_circulate_window_checked, var"libxcb.so.1"), xcb_void_cookie_t, (Ptr{xcb_connection_t}, UInt8, xcb_window_t), c, direction, window)
end

function xcb_circulate_window(c, direction, window)
    ccall((:xcb_circulate_window, var"libxcb.so.1"), xcb_void_cookie_t, (Ptr{xcb_connection_t}, UInt8, xcb_window_t), c, direction, window)
end

function xcb_get_geometry(c, drawable)
    ccall((:xcb_get_geometry, var"libxcb.so.1"), xcb_get_geometry_cookie_t, (Ptr{xcb_connection_t}, xcb_drawable_t), c, drawable)
end

function xcb_get_geometry_unchecked(c, drawable)
    ccall((:xcb_get_geometry_unchecked, var"libxcb.so.1"), xcb_get_geometry_cookie_t, (Ptr{xcb_connection_t}, xcb_drawable_t), c, drawable)
end

function xcb_get_geometry_reply(c, cookie, e)
    ccall((:xcb_get_geometry_reply, var"libxcb.so.1"), Ptr{xcb_get_geometry_reply_t}, (Ptr{xcb_connection_t}, xcb_get_geometry_cookie_t, Ptr{Ptr{xcb_generic_error_t}}), c, cookie, e)
end

function xcb_query_tree_sizeof(_buffer)
    ccall((:xcb_query_tree_sizeof, var"libxcb.so.1"), Cint, (Ptr{Cvoid},), _buffer)
end

function xcb_query_tree(c, window)
    ccall((:xcb_query_tree, var"libxcb.so.1"), xcb_query_tree_cookie_t, (Ptr{xcb_connection_t}, xcb_window_t), c, window)
end

function xcb_query_tree_unchecked(c, window)
    ccall((:xcb_query_tree_unchecked, var"libxcb.so.1"), xcb_query_tree_cookie_t, (Ptr{xcb_connection_t}, xcb_window_t), c, window)
end

function xcb_query_tree_children(R)
    ccall((:xcb_query_tree_children, var"libxcb.so.1"), Ptr{xcb_window_t}, (Ptr{xcb_query_tree_reply_t},), R)
end

function xcb_query_tree_children_length(R)
    ccall((:xcb_query_tree_children_length, var"libxcb.so.1"), Cint, (Ptr{xcb_query_tree_reply_t},), R)
end

function xcb_query_tree_children_end(R)
    ccall((:xcb_query_tree_children_end, var"libxcb.so.1"), xcb_generic_iterator_t, (Ptr{xcb_query_tree_reply_t},), R)
end

function xcb_query_tree_reply(c, cookie, e)
    ccall((:xcb_query_tree_reply, var"libxcb.so.1"), Ptr{xcb_query_tree_reply_t}, (Ptr{xcb_connection_t}, xcb_query_tree_cookie_t, Ptr{Ptr{xcb_generic_error_t}}), c, cookie, e)
end

function xcb_intern_atom_sizeof(_buffer)
    ccall((:xcb_intern_atom_sizeof, var"libxcb.so.1"), Cint, (Ptr{Cvoid},), _buffer)
end

function xcb_intern_atom(c, only_if_exists, name_len, name)
    ccall((:xcb_intern_atom, var"libxcb.so.1"), xcb_intern_atom_cookie_t, (Ptr{xcb_connection_t}, UInt8, UInt16, Cstring), c, only_if_exists, name_len, name)
end

function xcb_intern_atom_unchecked(c, only_if_exists, name_len, name)
    ccall((:xcb_intern_atom_unchecked, var"libxcb.so.1"), xcb_intern_atom_cookie_t, (Ptr{xcb_connection_t}, UInt8, UInt16, Cstring), c, only_if_exists, name_len, name)
end

function xcb_intern_atom_reply(c, cookie, e)
    ccall((:xcb_intern_atom_reply, var"libxcb.so.1"), Ptr{xcb_intern_atom_reply_t}, (Ptr{xcb_connection_t}, xcb_intern_atom_cookie_t, Ptr{Ptr{xcb_generic_error_t}}), c, cookie, e)
end

function xcb_get_atom_name_sizeof(_buffer)
    ccall((:xcb_get_atom_name_sizeof, var"libxcb.so.1"), Cint, (Ptr{Cvoid},), _buffer)
end

function xcb_get_atom_name(c, atom)
    ccall((:xcb_get_atom_name, var"libxcb.so.1"), xcb_get_atom_name_cookie_t, (Ptr{xcb_connection_t}, xcb_atom_t), c, atom)
end

function xcb_get_atom_name_unchecked(c, atom)
    ccall((:xcb_get_atom_name_unchecked, var"libxcb.so.1"), xcb_get_atom_name_cookie_t, (Ptr{xcb_connection_t}, xcb_atom_t), c, atom)
end

function xcb_get_atom_name_name(R)
    ccall((:xcb_get_atom_name_name, var"libxcb.so.1"), Cstring, (Ptr{xcb_get_atom_name_reply_t},), R)
end

function xcb_get_atom_name_name_length(R)
    ccall((:xcb_get_atom_name_name_length, var"libxcb.so.1"), Cint, (Ptr{xcb_get_atom_name_reply_t},), R)
end

function xcb_get_atom_name_name_end(R)
    ccall((:xcb_get_atom_name_name_end, var"libxcb.so.1"), xcb_generic_iterator_t, (Ptr{xcb_get_atom_name_reply_t},), R)
end

function xcb_get_atom_name_reply(c, cookie, e)
    ccall((:xcb_get_atom_name_reply, var"libxcb.so.1"), Ptr{xcb_get_atom_name_reply_t}, (Ptr{xcb_connection_t}, xcb_get_atom_name_cookie_t, Ptr{Ptr{xcb_generic_error_t}}), c, cookie, e)
end

function xcb_change_property_sizeof(_buffer)
    ccall((:xcb_change_property_sizeof, var"libxcb.so.1"), Cint, (Ptr{Cvoid},), _buffer)
end

function xcb_change_property_checked(c, mode, window, property, type, format, data_len, data)
    ccall((:xcb_change_property_checked, var"libxcb.so.1"), xcb_void_cookie_t, (Ptr{xcb_connection_t}, UInt8, xcb_window_t, xcb_atom_t, xcb_atom_t, UInt8, UInt32, Ptr{Cvoid}), c, mode, window, property, type, format, data_len, data)
end

function xcb_change_property(c, mode, window, property, type, format, data_len, data)
    ccall((:xcb_change_property, var"libxcb.so.1"), xcb_void_cookie_t, (Ptr{xcb_connection_t}, UInt8, xcb_window_t, xcb_atom_t, xcb_atom_t, UInt8, UInt32, Ptr{Cvoid}), c, mode, window, property, type, format, data_len, data)
end

function xcb_change_property_data(R)
    ccall((:xcb_change_property_data, var"libxcb.so.1"), Ptr{Cvoid}, (Ptr{xcb_change_property_request_t},), R)
end

function xcb_change_property_data_length(R)
    ccall((:xcb_change_property_data_length, var"libxcb.so.1"), Cint, (Ptr{xcb_change_property_request_t},), R)
end

function xcb_change_property_data_end(R)
    ccall((:xcb_change_property_data_end, var"libxcb.so.1"), xcb_generic_iterator_t, (Ptr{xcb_change_property_request_t},), R)
end

function xcb_delete_property_checked(c, window, property)
    ccall((:xcb_delete_property_checked, var"libxcb.so.1"), xcb_void_cookie_t, (Ptr{xcb_connection_t}, xcb_window_t, xcb_atom_t), c, window, property)
end

function xcb_delete_property(c, window, property)
    ccall((:xcb_delete_property, var"libxcb.so.1"), xcb_void_cookie_t, (Ptr{xcb_connection_t}, xcb_window_t, xcb_atom_t), c, window, property)
end

function xcb_get_property_sizeof(_buffer)
    ccall((:xcb_get_property_sizeof, var"libxcb.so.1"), Cint, (Ptr{Cvoid},), _buffer)
end

function xcb_get_property(c, _delete, window, property, type, long_offset, long_length)
    ccall((:xcb_get_property, var"libxcb.so.1"), xcb_get_property_cookie_t, (Ptr{xcb_connection_t}, UInt8, xcb_window_t, xcb_atom_t, xcb_atom_t, UInt32, UInt32), c, _delete, window, property, type, long_offset, long_length)
end

function xcb_get_property_unchecked(c, _delete, window, property, type, long_offset, long_length)
    ccall((:xcb_get_property_unchecked, var"libxcb.so.1"), xcb_get_property_cookie_t, (Ptr{xcb_connection_t}, UInt8, xcb_window_t, xcb_atom_t, xcb_atom_t, UInt32, UInt32), c, _delete, window, property, type, long_offset, long_length)
end

function xcb_get_property_value(R)
    ccall((:xcb_get_property_value, var"libxcb.so.1"), Ptr{Cvoid}, (Ptr{xcb_get_property_reply_t},), R)
end

function xcb_get_property_value_length(R)
    ccall((:xcb_get_property_value_length, var"libxcb.so.1"), Cint, (Ptr{xcb_get_property_reply_t},), R)
end

function xcb_get_property_value_end(R)
    ccall((:xcb_get_property_value_end, var"libxcb.so.1"), xcb_generic_iterator_t, (Ptr{xcb_get_property_reply_t},), R)
end

function xcb_get_property_reply(c, cookie, e)
    ccall((:xcb_get_property_reply, var"libxcb.so.1"), Ptr{xcb_get_property_reply_t}, (Ptr{xcb_connection_t}, xcb_get_property_cookie_t, Ptr{Ptr{xcb_generic_error_t}}), c, cookie, e)
end

function xcb_list_properties_sizeof(_buffer)
    ccall((:xcb_list_properties_sizeof, var"libxcb.so.1"), Cint, (Ptr{Cvoid},), _buffer)
end

function xcb_list_properties(c, window)
    ccall((:xcb_list_properties, var"libxcb.so.1"), xcb_list_properties_cookie_t, (Ptr{xcb_connection_t}, xcb_window_t), c, window)
end

function xcb_list_properties_unchecked(c, window)
    ccall((:xcb_list_properties_unchecked, var"libxcb.so.1"), xcb_list_properties_cookie_t, (Ptr{xcb_connection_t}, xcb_window_t), c, window)
end

function xcb_list_properties_atoms(R)
    ccall((:xcb_list_properties_atoms, var"libxcb.so.1"), Ptr{xcb_atom_t}, (Ptr{xcb_list_properties_reply_t},), R)
end

function xcb_list_properties_atoms_length(R)
    ccall((:xcb_list_properties_atoms_length, var"libxcb.so.1"), Cint, (Ptr{xcb_list_properties_reply_t},), R)
end

function xcb_list_properties_atoms_end(R)
    ccall((:xcb_list_properties_atoms_end, var"libxcb.so.1"), xcb_generic_iterator_t, (Ptr{xcb_list_properties_reply_t},), R)
end

function xcb_list_properties_reply(c, cookie, e)
    ccall((:xcb_list_properties_reply, var"libxcb.so.1"), Ptr{xcb_list_properties_reply_t}, (Ptr{xcb_connection_t}, xcb_list_properties_cookie_t, Ptr{Ptr{xcb_generic_error_t}}), c, cookie, e)
end

function xcb_set_selection_owner_checked(c, owner, selection, time)
    ccall((:xcb_set_selection_owner_checked, var"libxcb.so.1"), xcb_void_cookie_t, (Ptr{xcb_connection_t}, xcb_window_t, xcb_atom_t, xcb_timestamp_t), c, owner, selection, time)
end

function xcb_set_selection_owner(c, owner, selection, time)
    ccall((:xcb_set_selection_owner, var"libxcb.so.1"), xcb_void_cookie_t, (Ptr{xcb_connection_t}, xcb_window_t, xcb_atom_t, xcb_timestamp_t), c, owner, selection, time)
end

function xcb_get_selection_owner(c, selection)
    ccall((:xcb_get_selection_owner, var"libxcb.so.1"), xcb_get_selection_owner_cookie_t, (Ptr{xcb_connection_t}, xcb_atom_t), c, selection)
end

function xcb_get_selection_owner_unchecked(c, selection)
    ccall((:xcb_get_selection_owner_unchecked, var"libxcb.so.1"), xcb_get_selection_owner_cookie_t, (Ptr{xcb_connection_t}, xcb_atom_t), c, selection)
end

function xcb_get_selection_owner_reply(c, cookie, e)
    ccall((:xcb_get_selection_owner_reply, var"libxcb.so.1"), Ptr{xcb_get_selection_owner_reply_t}, (Ptr{xcb_connection_t}, xcb_get_selection_owner_cookie_t, Ptr{Ptr{xcb_generic_error_t}}), c, cookie, e)
end

function xcb_convert_selection_checked(c, requestor, selection, target, property, time)
    ccall((:xcb_convert_selection_checked, var"libxcb.so.1"), xcb_void_cookie_t, (Ptr{xcb_connection_t}, xcb_window_t, xcb_atom_t, xcb_atom_t, xcb_atom_t, xcb_timestamp_t), c, requestor, selection, target, property, time)
end

function xcb_convert_selection(c, requestor, selection, target, property, time)
    ccall((:xcb_convert_selection, var"libxcb.so.1"), xcb_void_cookie_t, (Ptr{xcb_connection_t}, xcb_window_t, xcb_atom_t, xcb_atom_t, xcb_atom_t, xcb_timestamp_t), c, requestor, selection, target, property, time)
end

function xcb_send_event_checked(c, propagate, destination, event_mask, event)
    ccall((:xcb_send_event_checked, var"libxcb.so.1"), xcb_void_cookie_t, (Ptr{xcb_connection_t}, UInt8, xcb_window_t, UInt32, Cstring), c, propagate, destination, event_mask, event)
end

function xcb_send_event(c, propagate, destination, event_mask, event)
    ccall((:xcb_send_event, var"libxcb.so.1"), xcb_void_cookie_t, (Ptr{xcb_connection_t}, UInt8, xcb_window_t, UInt32, Cstring), c, propagate, destination, event_mask, event)
end

function xcb_grab_pointer(c, owner_events, grab_window, event_mask, pointer_mode, keyboard_mode, confine_to, cursor, time)
    ccall((:xcb_grab_pointer, var"libxcb.so.1"), xcb_grab_pointer_cookie_t, (Ptr{xcb_connection_t}, UInt8, xcb_window_t, UInt16, UInt8, UInt8, xcb_window_t, xcb_cursor_t, xcb_timestamp_t), c, owner_events, grab_window, event_mask, pointer_mode, keyboard_mode, confine_to, cursor, time)
end

function xcb_grab_pointer_unchecked(c, owner_events, grab_window, event_mask, pointer_mode, keyboard_mode, confine_to, cursor, time)
    ccall((:xcb_grab_pointer_unchecked, var"libxcb.so.1"), xcb_grab_pointer_cookie_t, (Ptr{xcb_connection_t}, UInt8, xcb_window_t, UInt16, UInt8, UInt8, xcb_window_t, xcb_cursor_t, xcb_timestamp_t), c, owner_events, grab_window, event_mask, pointer_mode, keyboard_mode, confine_to, cursor, time)
end

function xcb_grab_pointer_reply(c, cookie, e)
    ccall((:xcb_grab_pointer_reply, var"libxcb.so.1"), Ptr{xcb_grab_pointer_reply_t}, (Ptr{xcb_connection_t}, xcb_grab_pointer_cookie_t, Ptr{Ptr{xcb_generic_error_t}}), c, cookie, e)
end

function xcb_ungrab_pointer_checked(c, time)
    ccall((:xcb_ungrab_pointer_checked, var"libxcb.so.1"), xcb_void_cookie_t, (Ptr{xcb_connection_t}, xcb_timestamp_t), c, time)
end

function xcb_ungrab_pointer(c, time)
    ccall((:xcb_ungrab_pointer, var"libxcb.so.1"), xcb_void_cookie_t, (Ptr{xcb_connection_t}, xcb_timestamp_t), c, time)
end

function xcb_grab_button_checked(c, owner_events, grab_window, event_mask, pointer_mode, keyboard_mode, confine_to, cursor, button, modifiers)
    ccall((:xcb_grab_button_checked, var"libxcb.so.1"), xcb_void_cookie_t, (Ptr{xcb_connection_t}, UInt8, xcb_window_t, UInt16, UInt8, UInt8, xcb_window_t, xcb_cursor_t, UInt8, UInt16), c, owner_events, grab_window, event_mask, pointer_mode, keyboard_mode, confine_to, cursor, button, modifiers)
end

function xcb_grab_button(c, owner_events, grab_window, event_mask, pointer_mode, keyboard_mode, confine_to, cursor, button, modifiers)
    ccall((:xcb_grab_button, var"libxcb.so.1"), xcb_void_cookie_t, (Ptr{xcb_connection_t}, UInt8, xcb_window_t, UInt16, UInt8, UInt8, xcb_window_t, xcb_cursor_t, UInt8, UInt16), c, owner_events, grab_window, event_mask, pointer_mode, keyboard_mode, confine_to, cursor, button, modifiers)
end

function xcb_ungrab_button_checked(c, button, grab_window, modifiers)
    ccall((:xcb_ungrab_button_checked, var"libxcb.so.1"), xcb_void_cookie_t, (Ptr{xcb_connection_t}, UInt8, xcb_window_t, UInt16), c, button, grab_window, modifiers)
end

function xcb_ungrab_button(c, button, grab_window, modifiers)
    ccall((:xcb_ungrab_button, var"libxcb.so.1"), xcb_void_cookie_t, (Ptr{xcb_connection_t}, UInt8, xcb_window_t, UInt16), c, button, grab_window, modifiers)
end

function xcb_change_active_pointer_grab_checked(c, cursor, time, event_mask)
    ccall((:xcb_change_active_pointer_grab_checked, var"libxcb.so.1"), xcb_void_cookie_t, (Ptr{xcb_connection_t}, xcb_cursor_t, xcb_timestamp_t, UInt16), c, cursor, time, event_mask)
end

function xcb_change_active_pointer_grab(c, cursor, time, event_mask)
    ccall((:xcb_change_active_pointer_grab, var"libxcb.so.1"), xcb_void_cookie_t, (Ptr{xcb_connection_t}, xcb_cursor_t, xcb_timestamp_t, UInt16), c, cursor, time, event_mask)
end

function xcb_grab_keyboard(c, owner_events, grab_window, time, pointer_mode, keyboard_mode)
    ccall((:xcb_grab_keyboard, var"libxcb.so.1"), xcb_grab_keyboard_cookie_t, (Ptr{xcb_connection_t}, UInt8, xcb_window_t, xcb_timestamp_t, UInt8, UInt8), c, owner_events, grab_window, time, pointer_mode, keyboard_mode)
end

function xcb_grab_keyboard_unchecked(c, owner_events, grab_window, time, pointer_mode, keyboard_mode)
    ccall((:xcb_grab_keyboard_unchecked, var"libxcb.so.1"), xcb_grab_keyboard_cookie_t, (Ptr{xcb_connection_t}, UInt8, xcb_window_t, xcb_timestamp_t, UInt8, UInt8), c, owner_events, grab_window, time, pointer_mode, keyboard_mode)
end

function xcb_grab_keyboard_reply(c, cookie, e)
    ccall((:xcb_grab_keyboard_reply, var"libxcb.so.1"), Ptr{xcb_grab_keyboard_reply_t}, (Ptr{xcb_connection_t}, xcb_grab_keyboard_cookie_t, Ptr{Ptr{xcb_generic_error_t}}), c, cookie, e)
end

function xcb_ungrab_keyboard_checked(c, time)
    ccall((:xcb_ungrab_keyboard_checked, var"libxcb.so.1"), xcb_void_cookie_t, (Ptr{xcb_connection_t}, xcb_timestamp_t), c, time)
end

function xcb_ungrab_keyboard(c, time)
    ccall((:xcb_ungrab_keyboard, var"libxcb.so.1"), xcb_void_cookie_t, (Ptr{xcb_connection_t}, xcb_timestamp_t), c, time)
end

function xcb_grab_key_checked(c, owner_events, grab_window, modifiers, key, pointer_mode, keyboard_mode)
    ccall((:xcb_grab_key_checked, var"libxcb.so.1"), xcb_void_cookie_t, (Ptr{xcb_connection_t}, UInt8, xcb_window_t, UInt16, xcb_keycode_t, UInt8, UInt8), c, owner_events, grab_window, modifiers, key, pointer_mode, keyboard_mode)
end

function xcb_grab_key(c, owner_events, grab_window, modifiers, key, pointer_mode, keyboard_mode)
    ccall((:xcb_grab_key, var"libxcb.so.1"), xcb_void_cookie_t, (Ptr{xcb_connection_t}, UInt8, xcb_window_t, UInt16, xcb_keycode_t, UInt8, UInt8), c, owner_events, grab_window, modifiers, key, pointer_mode, keyboard_mode)
end

function xcb_ungrab_key_checked(c, key, grab_window, modifiers)
    ccall((:xcb_ungrab_key_checked, var"libxcb.so.1"), xcb_void_cookie_t, (Ptr{xcb_connection_t}, xcb_keycode_t, xcb_window_t, UInt16), c, key, grab_window, modifiers)
end

function xcb_ungrab_key(c, key, grab_window, modifiers)
    ccall((:xcb_ungrab_key, var"libxcb.so.1"), xcb_void_cookie_t, (Ptr{xcb_connection_t}, xcb_keycode_t, xcb_window_t, UInt16), c, key, grab_window, modifiers)
end

function xcb_allow_events_checked(c, mode, time)
    ccall((:xcb_allow_events_checked, var"libxcb.so.1"), xcb_void_cookie_t, (Ptr{xcb_connection_t}, UInt8, xcb_timestamp_t), c, mode, time)
end

function xcb_allow_events(c, mode, time)
    ccall((:xcb_allow_events, var"libxcb.so.1"), xcb_void_cookie_t, (Ptr{xcb_connection_t}, UInt8, xcb_timestamp_t), c, mode, time)
end

function xcb_grab_server_checked(c)
    ccall((:xcb_grab_server_checked, var"libxcb.so.1"), xcb_void_cookie_t, (Ptr{xcb_connection_t},), c)
end

function xcb_grab_server(c)
    ccall((:xcb_grab_server, var"libxcb.so.1"), xcb_void_cookie_t, (Ptr{xcb_connection_t},), c)
end

function xcb_ungrab_server_checked(c)
    ccall((:xcb_ungrab_server_checked, var"libxcb.so.1"), xcb_void_cookie_t, (Ptr{xcb_connection_t},), c)
end

function xcb_ungrab_server(c)
    ccall((:xcb_ungrab_server, var"libxcb.so.1"), xcb_void_cookie_t, (Ptr{xcb_connection_t},), c)
end

function xcb_query_pointer(c, window)
    ccall((:xcb_query_pointer, var"libxcb.so.1"), xcb_query_pointer_cookie_t, (Ptr{xcb_connection_t}, xcb_window_t), c, window)
end

function xcb_query_pointer_unchecked(c, window)
    ccall((:xcb_query_pointer_unchecked, var"libxcb.so.1"), xcb_query_pointer_cookie_t, (Ptr{xcb_connection_t}, xcb_window_t), c, window)
end

function xcb_query_pointer_reply(c, cookie, e)
    ccall((:xcb_query_pointer_reply, var"libxcb.so.1"), Ptr{xcb_query_pointer_reply_t}, (Ptr{xcb_connection_t}, xcb_query_pointer_cookie_t, Ptr{Ptr{xcb_generic_error_t}}), c, cookie, e)
end

function xcb_timecoord_next(i)
    ccall((:xcb_timecoord_next, var"libxcb.so.1"), Cvoid, (Ptr{xcb_timecoord_iterator_t},), i)
end

function xcb_timecoord_end(i)
    ccall((:xcb_timecoord_end, var"libxcb.so.1"), xcb_generic_iterator_t, (xcb_timecoord_iterator_t,), i)
end

function xcb_get_motion_events_sizeof(_buffer)
    ccall((:xcb_get_motion_events_sizeof, var"libxcb.so.1"), Cint, (Ptr{Cvoid},), _buffer)
end

function xcb_get_motion_events(c, window, start, stop)
    ccall((:xcb_get_motion_events, var"libxcb.so.1"), xcb_get_motion_events_cookie_t, (Ptr{xcb_connection_t}, xcb_window_t, xcb_timestamp_t, xcb_timestamp_t), c, window, start, stop)
end

function xcb_get_motion_events_unchecked(c, window, start, stop)
    ccall((:xcb_get_motion_events_unchecked, var"libxcb.so.1"), xcb_get_motion_events_cookie_t, (Ptr{xcb_connection_t}, xcb_window_t, xcb_timestamp_t, xcb_timestamp_t), c, window, start, stop)
end

function xcb_get_motion_events_events(R)
    ccall((:xcb_get_motion_events_events, var"libxcb.so.1"), Ptr{xcb_timecoord_t}, (Ptr{xcb_get_motion_events_reply_t},), R)
end

function xcb_get_motion_events_events_length(R)
    ccall((:xcb_get_motion_events_events_length, var"libxcb.so.1"), Cint, (Ptr{xcb_get_motion_events_reply_t},), R)
end

function xcb_get_motion_events_events_iterator(R)
    ccall((:xcb_get_motion_events_events_iterator, var"libxcb.so.1"), xcb_timecoord_iterator_t, (Ptr{xcb_get_motion_events_reply_t},), R)
end

function xcb_get_motion_events_reply(c, cookie, e)
    ccall((:xcb_get_motion_events_reply, var"libxcb.so.1"), Ptr{xcb_get_motion_events_reply_t}, (Ptr{xcb_connection_t}, xcb_get_motion_events_cookie_t, Ptr{Ptr{xcb_generic_error_t}}), c, cookie, e)
end

function xcb_translate_coordinates(c, src_window, dst_window, src_x, src_y)
    ccall((:xcb_translate_coordinates, var"libxcb.so.1"), xcb_translate_coordinates_cookie_t, (Ptr{xcb_connection_t}, xcb_window_t, xcb_window_t, Int16, Int16), c, src_window, dst_window, src_x, src_y)
end

function xcb_translate_coordinates_unchecked(c, src_window, dst_window, src_x, src_y)
    ccall((:xcb_translate_coordinates_unchecked, var"libxcb.so.1"), xcb_translate_coordinates_cookie_t, (Ptr{xcb_connection_t}, xcb_window_t, xcb_window_t, Int16, Int16), c, src_window, dst_window, src_x, src_y)
end

function xcb_translate_coordinates_reply(c, cookie, e)
    ccall((:xcb_translate_coordinates_reply, var"libxcb.so.1"), Ptr{xcb_translate_coordinates_reply_t}, (Ptr{xcb_connection_t}, xcb_translate_coordinates_cookie_t, Ptr{Ptr{xcb_generic_error_t}}), c, cookie, e)
end

function xcb_warp_pointer_checked(c, src_window, dst_window, src_x, src_y, src_width, src_height, dst_x, dst_y)
    ccall((:xcb_warp_pointer_checked, var"libxcb.so.1"), xcb_void_cookie_t, (Ptr{xcb_connection_t}, xcb_window_t, xcb_window_t, Int16, Int16, UInt16, UInt16, Int16, Int16), c, src_window, dst_window, src_x, src_y, src_width, src_height, dst_x, dst_y)
end

function xcb_warp_pointer(c, src_window, dst_window, src_x, src_y, src_width, src_height, dst_x, dst_y)
    ccall((:xcb_warp_pointer, var"libxcb.so.1"), xcb_void_cookie_t, (Ptr{xcb_connection_t}, xcb_window_t, xcb_window_t, Int16, Int16, UInt16, UInt16, Int16, Int16), c, src_window, dst_window, src_x, src_y, src_width, src_height, dst_x, dst_y)
end

function xcb_set_input_focus_checked(c, revert_to, focus, time)
    ccall((:xcb_set_input_focus_checked, var"libxcb.so.1"), xcb_void_cookie_t, (Ptr{xcb_connection_t}, UInt8, xcb_window_t, xcb_timestamp_t), c, revert_to, focus, time)
end

function xcb_set_input_focus(c, revert_to, focus, time)
    ccall((:xcb_set_input_focus, var"libxcb.so.1"), xcb_void_cookie_t, (Ptr{xcb_connection_t}, UInt8, xcb_window_t, xcb_timestamp_t), c, revert_to, focus, time)
end

function xcb_get_input_focus(c)
    ccall((:xcb_get_input_focus, var"libxcb.so.1"), xcb_get_input_focus_cookie_t, (Ptr{xcb_connection_t},), c)
end

function xcb_get_input_focus_unchecked(c)
    ccall((:xcb_get_input_focus_unchecked, var"libxcb.so.1"), xcb_get_input_focus_cookie_t, (Ptr{xcb_connection_t},), c)
end

function xcb_get_input_focus_reply(c, cookie, e)
    ccall((:xcb_get_input_focus_reply, var"libxcb.so.1"), Ptr{xcb_get_input_focus_reply_t}, (Ptr{xcb_connection_t}, xcb_get_input_focus_cookie_t, Ptr{Ptr{xcb_generic_error_t}}), c, cookie, e)
end

function xcb_query_keymap(c)
    ccall((:xcb_query_keymap, var"libxcb.so.1"), xcb_query_keymap_cookie_t, (Ptr{xcb_connection_t},), c)
end

function xcb_query_keymap_unchecked(c)
    ccall((:xcb_query_keymap_unchecked, var"libxcb.so.1"), xcb_query_keymap_cookie_t, (Ptr{xcb_connection_t},), c)
end

function xcb_query_keymap_reply(c, cookie, e)
    ccall((:xcb_query_keymap_reply, var"libxcb.so.1"), Ptr{xcb_query_keymap_reply_t}, (Ptr{xcb_connection_t}, xcb_query_keymap_cookie_t, Ptr{Ptr{xcb_generic_error_t}}), c, cookie, e)
end

function xcb_open_font_sizeof(_buffer)
    ccall((:xcb_open_font_sizeof, var"libxcb.so.1"), Cint, (Ptr{Cvoid},), _buffer)
end

function xcb_open_font_checked(c, fid, name_len, name)
    ccall((:xcb_open_font_checked, var"libxcb.so.1"), xcb_void_cookie_t, (Ptr{xcb_connection_t}, xcb_font_t, UInt16, Cstring), c, fid, name_len, name)
end

function xcb_open_font(c, fid, name_len, name)
    ccall((:xcb_open_font, var"libxcb.so.1"), xcb_void_cookie_t, (Ptr{xcb_connection_t}, xcb_font_t, UInt16, Cstring), c, fid, name_len, name)
end

function xcb_open_font_name(R)
    ccall((:xcb_open_font_name, var"libxcb.so.1"), Cstring, (Ptr{xcb_open_font_request_t},), R)
end

function xcb_open_font_name_length(R)
    ccall((:xcb_open_font_name_length, var"libxcb.so.1"), Cint, (Ptr{xcb_open_font_request_t},), R)
end

function xcb_open_font_name_end(R)
    ccall((:xcb_open_font_name_end, var"libxcb.so.1"), xcb_generic_iterator_t, (Ptr{xcb_open_font_request_t},), R)
end

function xcb_close_font_checked(c, font)
    ccall((:xcb_close_font_checked, var"libxcb.so.1"), xcb_void_cookie_t, (Ptr{xcb_connection_t}, xcb_font_t), c, font)
end

function xcb_close_font(c, font)
    ccall((:xcb_close_font, var"libxcb.so.1"), xcb_void_cookie_t, (Ptr{xcb_connection_t}, xcb_font_t), c, font)
end

function xcb_fontprop_next(i)
    ccall((:xcb_fontprop_next, var"libxcb.so.1"), Cvoid, (Ptr{xcb_fontprop_iterator_t},), i)
end

function xcb_fontprop_end(i)
    ccall((:xcb_fontprop_end, var"libxcb.so.1"), xcb_generic_iterator_t, (xcb_fontprop_iterator_t,), i)
end

function xcb_charinfo_next(i)
    ccall((:xcb_charinfo_next, var"libxcb.so.1"), Cvoid, (Ptr{xcb_charinfo_iterator_t},), i)
end

function xcb_charinfo_end(i)
    ccall((:xcb_charinfo_end, var"libxcb.so.1"), xcb_generic_iterator_t, (xcb_charinfo_iterator_t,), i)
end

function xcb_query_font_sizeof(_buffer)
    ccall((:xcb_query_font_sizeof, var"libxcb.so.1"), Cint, (Ptr{Cvoid},), _buffer)
end

function xcb_query_font(c, font)
    ccall((:xcb_query_font, var"libxcb.so.1"), xcb_query_font_cookie_t, (Ptr{xcb_connection_t}, xcb_fontable_t), c, font)
end

function xcb_query_font_unchecked(c, font)
    ccall((:xcb_query_font_unchecked, var"libxcb.so.1"), xcb_query_font_cookie_t, (Ptr{xcb_connection_t}, xcb_fontable_t), c, font)
end

function xcb_query_font_properties(R)
    ccall((:xcb_query_font_properties, var"libxcb.so.1"), Ptr{xcb_fontprop_t}, (Ptr{xcb_query_font_reply_t},), R)
end

function xcb_query_font_properties_length(R)
    ccall((:xcb_query_font_properties_length, var"libxcb.so.1"), Cint, (Ptr{xcb_query_font_reply_t},), R)
end

function xcb_query_font_properties_iterator(R)
    ccall((:xcb_query_font_properties_iterator, var"libxcb.so.1"), xcb_fontprop_iterator_t, (Ptr{xcb_query_font_reply_t},), R)
end

function xcb_query_font_char_infos(R)
    ccall((:xcb_query_font_char_infos, var"libxcb.so.1"), Ptr{xcb_charinfo_t}, (Ptr{xcb_query_font_reply_t},), R)
end

function xcb_query_font_char_infos_length(R)
    ccall((:xcb_query_font_char_infos_length, var"libxcb.so.1"), Cint, (Ptr{xcb_query_font_reply_t},), R)
end

function xcb_query_font_char_infos_iterator(R)
    ccall((:xcb_query_font_char_infos_iterator, var"libxcb.so.1"), xcb_charinfo_iterator_t, (Ptr{xcb_query_font_reply_t},), R)
end

function xcb_query_font_reply(c, cookie, e)
    ccall((:xcb_query_font_reply, var"libxcb.so.1"), Ptr{xcb_query_font_reply_t}, (Ptr{xcb_connection_t}, xcb_query_font_cookie_t, Ptr{Ptr{xcb_generic_error_t}}), c, cookie, e)
end

function xcb_query_text_extents_sizeof(_buffer, string_len)
    ccall((:xcb_query_text_extents_sizeof, var"libxcb.so.1"), Cint, (Ptr{Cvoid}, UInt32), _buffer, string_len)
end

function xcb_query_text_extents(c, font, string_len, string)
    ccall((:xcb_query_text_extents, var"libxcb.so.1"), xcb_query_text_extents_cookie_t, (Ptr{xcb_connection_t}, xcb_fontable_t, UInt32, Ptr{xcb_char2b_t}), c, font, string_len, string)
end

function xcb_query_text_extents_unchecked(c, font, string_len, string)
    ccall((:xcb_query_text_extents_unchecked, var"libxcb.so.1"), xcb_query_text_extents_cookie_t, (Ptr{xcb_connection_t}, xcb_fontable_t, UInt32, Ptr{xcb_char2b_t}), c, font, string_len, string)
end

function xcb_query_text_extents_reply(c, cookie, e)
    ccall((:xcb_query_text_extents_reply, var"libxcb.so.1"), Ptr{xcb_query_text_extents_reply_t}, (Ptr{xcb_connection_t}, xcb_query_text_extents_cookie_t, Ptr{Ptr{xcb_generic_error_t}}), c, cookie, e)
end

function xcb_str_sizeof(_buffer)
    ccall((:xcb_str_sizeof, var"libxcb.so.1"), Cint, (Ptr{Cvoid},), _buffer)
end

function xcb_str_name(R)
    ccall((:xcb_str_name, var"libxcb.so.1"), Cstring, (Ptr{xcb_str_t},), R)
end

function xcb_str_name_length(R)
    ccall((:xcb_str_name_length, var"libxcb.so.1"), Cint, (Ptr{xcb_str_t},), R)
end

function xcb_str_name_end(R)
    ccall((:xcb_str_name_end, var"libxcb.so.1"), xcb_generic_iterator_t, (Ptr{xcb_str_t},), R)
end

function xcb_str_next(i)
    ccall((:xcb_str_next, var"libxcb.so.1"), Cvoid, (Ptr{xcb_str_iterator_t},), i)
end

function xcb_str_end(i)
    ccall((:xcb_str_end, var"libxcb.so.1"), xcb_generic_iterator_t, (xcb_str_iterator_t,), i)
end

function xcb_list_fonts_sizeof(_buffer)
    ccall((:xcb_list_fonts_sizeof, var"libxcb.so.1"), Cint, (Ptr{Cvoid},), _buffer)
end

function xcb_list_fonts(c, max_names, pattern_len, pattern)
    ccall((:xcb_list_fonts, var"libxcb.so.1"), xcb_list_fonts_cookie_t, (Ptr{xcb_connection_t}, UInt16, UInt16, Cstring), c, max_names, pattern_len, pattern)
end

function xcb_list_fonts_unchecked(c, max_names, pattern_len, pattern)
    ccall((:xcb_list_fonts_unchecked, var"libxcb.so.1"), xcb_list_fonts_cookie_t, (Ptr{xcb_connection_t}, UInt16, UInt16, Cstring), c, max_names, pattern_len, pattern)
end

function xcb_list_fonts_names_length(R)
    ccall((:xcb_list_fonts_names_length, var"libxcb.so.1"), Cint, (Ptr{xcb_list_fonts_reply_t},), R)
end

function xcb_list_fonts_names_iterator(R)
    ccall((:xcb_list_fonts_names_iterator, var"libxcb.so.1"), xcb_str_iterator_t, (Ptr{xcb_list_fonts_reply_t},), R)
end

function xcb_list_fonts_reply(c, cookie, e)
    ccall((:xcb_list_fonts_reply, var"libxcb.so.1"), Ptr{xcb_list_fonts_reply_t}, (Ptr{xcb_connection_t}, xcb_list_fonts_cookie_t, Ptr{Ptr{xcb_generic_error_t}}), c, cookie, e)
end

function xcb_list_fonts_with_info_sizeof(_buffer)
    ccall((:xcb_list_fonts_with_info_sizeof, var"libxcb.so.1"), Cint, (Ptr{Cvoid},), _buffer)
end

function xcb_list_fonts_with_info(c, max_names, pattern_len, pattern)
    ccall((:xcb_list_fonts_with_info, var"libxcb.so.1"), xcb_list_fonts_with_info_cookie_t, (Ptr{xcb_connection_t}, UInt16, UInt16, Cstring), c, max_names, pattern_len, pattern)
end

function xcb_list_fonts_with_info_unchecked(c, max_names, pattern_len, pattern)
    ccall((:xcb_list_fonts_with_info_unchecked, var"libxcb.so.1"), xcb_list_fonts_with_info_cookie_t, (Ptr{xcb_connection_t}, UInt16, UInt16, Cstring), c, max_names, pattern_len, pattern)
end

function xcb_list_fonts_with_info_properties(R)
    ccall((:xcb_list_fonts_with_info_properties, var"libxcb.so.1"), Ptr{xcb_fontprop_t}, (Ptr{xcb_list_fonts_with_info_reply_t},), R)
end

function xcb_list_fonts_with_info_properties_length(R)
    ccall((:xcb_list_fonts_with_info_properties_length, var"libxcb.so.1"), Cint, (Ptr{xcb_list_fonts_with_info_reply_t},), R)
end

function xcb_list_fonts_with_info_properties_iterator(R)
    ccall((:xcb_list_fonts_with_info_properties_iterator, var"libxcb.so.1"), xcb_fontprop_iterator_t, (Ptr{xcb_list_fonts_with_info_reply_t},), R)
end

function xcb_list_fonts_with_info_name(R)
    ccall((:xcb_list_fonts_with_info_name, var"libxcb.so.1"), Cstring, (Ptr{xcb_list_fonts_with_info_reply_t},), R)
end

function xcb_list_fonts_with_info_name_length(R)
    ccall((:xcb_list_fonts_with_info_name_length, var"libxcb.so.1"), Cint, (Ptr{xcb_list_fonts_with_info_reply_t},), R)
end

function xcb_list_fonts_with_info_name_end(R)
    ccall((:xcb_list_fonts_with_info_name_end, var"libxcb.so.1"), xcb_generic_iterator_t, (Ptr{xcb_list_fonts_with_info_reply_t},), R)
end

function xcb_list_fonts_with_info_reply(c, cookie, e)
    ccall((:xcb_list_fonts_with_info_reply, var"libxcb.so.1"), Ptr{xcb_list_fonts_with_info_reply_t}, (Ptr{xcb_connection_t}, xcb_list_fonts_with_info_cookie_t, Ptr{Ptr{xcb_generic_error_t}}), c, cookie, e)
end

function xcb_set_font_path_sizeof(_buffer)
    ccall((:xcb_set_font_path_sizeof, var"libxcb.so.1"), Cint, (Ptr{Cvoid},), _buffer)
end

function xcb_set_font_path_checked(c, font_qty, font)
    ccall((:xcb_set_font_path_checked, var"libxcb.so.1"), xcb_void_cookie_t, (Ptr{xcb_connection_t}, UInt16, Ptr{xcb_str_t}), c, font_qty, font)
end

function xcb_set_font_path(c, font_qty, font)
    ccall((:xcb_set_font_path, var"libxcb.so.1"), xcb_void_cookie_t, (Ptr{xcb_connection_t}, UInt16, Ptr{xcb_str_t}), c, font_qty, font)
end

function xcb_set_font_path_font_length(R)
    ccall((:xcb_set_font_path_font_length, var"libxcb.so.1"), Cint, (Ptr{xcb_set_font_path_request_t},), R)
end

function xcb_set_font_path_font_iterator(R)
    ccall((:xcb_set_font_path_font_iterator, var"libxcb.so.1"), xcb_str_iterator_t, (Ptr{xcb_set_font_path_request_t},), R)
end

function xcb_get_font_path_sizeof(_buffer)
    ccall((:xcb_get_font_path_sizeof, var"libxcb.so.1"), Cint, (Ptr{Cvoid},), _buffer)
end

function xcb_get_font_path(c)
    ccall((:xcb_get_font_path, var"libxcb.so.1"), xcb_get_font_path_cookie_t, (Ptr{xcb_connection_t},), c)
end

function xcb_get_font_path_unchecked(c)
    ccall((:xcb_get_font_path_unchecked, var"libxcb.so.1"), xcb_get_font_path_cookie_t, (Ptr{xcb_connection_t},), c)
end

function xcb_get_font_path_path_length(R)
    ccall((:xcb_get_font_path_path_length, var"libxcb.so.1"), Cint, (Ptr{xcb_get_font_path_reply_t},), R)
end

function xcb_get_font_path_path_iterator(R)
    ccall((:xcb_get_font_path_path_iterator, var"libxcb.so.1"), xcb_str_iterator_t, (Ptr{xcb_get_font_path_reply_t},), R)
end

function xcb_get_font_path_reply(c, cookie, e)
    ccall((:xcb_get_font_path_reply, var"libxcb.so.1"), Ptr{xcb_get_font_path_reply_t}, (Ptr{xcb_connection_t}, xcb_get_font_path_cookie_t, Ptr{Ptr{xcb_generic_error_t}}), c, cookie, e)
end

function xcb_create_pixmap_checked(c, depth, pid, drawable, width, height)
    ccall((:xcb_create_pixmap_checked, var"libxcb.so.1"), xcb_void_cookie_t, (Ptr{xcb_connection_t}, UInt8, xcb_pixmap_t, xcb_drawable_t, UInt16, UInt16), c, depth, pid, drawable, width, height)
end

function xcb_create_pixmap(c, depth, pid, drawable, width, height)
    ccall((:xcb_create_pixmap, var"libxcb.so.1"), xcb_void_cookie_t, (Ptr{xcb_connection_t}, UInt8, xcb_pixmap_t, xcb_drawable_t, UInt16, UInt16), c, depth, pid, drawable, width, height)
end

function xcb_free_pixmap_checked(c, pixmap)
    ccall((:xcb_free_pixmap_checked, var"libxcb.so.1"), xcb_void_cookie_t, (Ptr{xcb_connection_t}, xcb_pixmap_t), c, pixmap)
end

function xcb_free_pixmap(c, pixmap)
    ccall((:xcb_free_pixmap, var"libxcb.so.1"), xcb_void_cookie_t, (Ptr{xcb_connection_t}, xcb_pixmap_t), c, pixmap)
end

function xcb_create_gc_value_list_serialize(_buffer, value_mask, _aux)
    ccall((:xcb_create_gc_value_list_serialize, var"libxcb.so.1"), Cint, (Ptr{Ptr{Cvoid}}, UInt32, Ptr{xcb_create_gc_value_list_t}), _buffer, value_mask, _aux)
end

function xcb_create_gc_value_list_unpack(_buffer, value_mask, _aux)
    ccall((:xcb_create_gc_value_list_unpack, var"libxcb.so.1"), Cint, (Ptr{Cvoid}, UInt32, Ptr{xcb_create_gc_value_list_t}), _buffer, value_mask, _aux)
end

function xcb_create_gc_value_list_sizeof(_buffer, value_mask)
    ccall((:xcb_create_gc_value_list_sizeof, var"libxcb.so.1"), Cint, (Ptr{Cvoid}, UInt32), _buffer, value_mask)
end

function xcb_create_gc_sizeof(_buffer)
    ccall((:xcb_create_gc_sizeof, var"libxcb.so.1"), Cint, (Ptr{Cvoid},), _buffer)
end

function xcb_create_gc_checked(c, cid, drawable, value_mask, value_list)
    ccall((:xcb_create_gc_checked, var"libxcb.so.1"), xcb_void_cookie_t, (Ptr{xcb_connection_t}, xcb_gcontext_t, xcb_drawable_t, UInt32, Ptr{Cvoid}), c, cid, drawable, value_mask, value_list)
end

function xcb_create_gc(c, cid, drawable, value_mask, value_list)
    ccall((:xcb_create_gc, var"libxcb.so.1"), xcb_void_cookie_t, (Ptr{xcb_connection_t}, xcb_gcontext_t, xcb_drawable_t, UInt32, Ptr{Cvoid}), c, cid, drawable, value_mask, value_list)
end

function xcb_create_gc_aux_checked(c, cid, drawable, value_mask, value_list)
    ccall((:xcb_create_gc_aux_checked, var"libxcb.so.1"), xcb_void_cookie_t, (Ptr{xcb_connection_t}, xcb_gcontext_t, xcb_drawable_t, UInt32, Ptr{xcb_create_gc_value_list_t}), c, cid, drawable, value_mask, value_list)
end

function xcb_create_gc_aux(c, cid, drawable, value_mask, value_list)
    ccall((:xcb_create_gc_aux, var"libxcb.so.1"), xcb_void_cookie_t, (Ptr{xcb_connection_t}, xcb_gcontext_t, xcb_drawable_t, UInt32, Ptr{xcb_create_gc_value_list_t}), c, cid, drawable, value_mask, value_list)
end

function xcb_create_gc_value_list(R)
    ccall((:xcb_create_gc_value_list, var"libxcb.so.1"), Ptr{Cvoid}, (Ptr{xcb_create_gc_request_t},), R)
end

function xcb_change_gc_value_list_serialize(_buffer, value_mask, _aux)
    ccall((:xcb_change_gc_value_list_serialize, var"libxcb.so.1"), Cint, (Ptr{Ptr{Cvoid}}, UInt32, Ptr{xcb_change_gc_value_list_t}), _buffer, value_mask, _aux)
end

function xcb_change_gc_value_list_unpack(_buffer, value_mask, _aux)
    ccall((:xcb_change_gc_value_list_unpack, var"libxcb.so.1"), Cint, (Ptr{Cvoid}, UInt32, Ptr{xcb_change_gc_value_list_t}), _buffer, value_mask, _aux)
end

function xcb_change_gc_value_list_sizeof(_buffer, value_mask)
    ccall((:xcb_change_gc_value_list_sizeof, var"libxcb.so.1"), Cint, (Ptr{Cvoid}, UInt32), _buffer, value_mask)
end

function xcb_change_gc_sizeof(_buffer)
    ccall((:xcb_change_gc_sizeof, var"libxcb.so.1"), Cint, (Ptr{Cvoid},), _buffer)
end

function xcb_change_gc_checked(c, gc, value_mask, value_list)
    ccall((:xcb_change_gc_checked, var"libxcb.so.1"), xcb_void_cookie_t, (Ptr{xcb_connection_t}, xcb_gcontext_t, UInt32, Ptr{Cvoid}), c, gc, value_mask, value_list)
end

function xcb_change_gc(c, gc, value_mask, value_list)
    ccall((:xcb_change_gc, var"libxcb.so.1"), xcb_void_cookie_t, (Ptr{xcb_connection_t}, xcb_gcontext_t, UInt32, Ptr{Cvoid}), c, gc, value_mask, value_list)
end

function xcb_change_gc_aux_checked(c, gc, value_mask, value_list)
    ccall((:xcb_change_gc_aux_checked, var"libxcb.so.1"), xcb_void_cookie_t, (Ptr{xcb_connection_t}, xcb_gcontext_t, UInt32, Ptr{xcb_change_gc_value_list_t}), c, gc, value_mask, value_list)
end

function xcb_change_gc_aux(c, gc, value_mask, value_list)
    ccall((:xcb_change_gc_aux, var"libxcb.so.1"), xcb_void_cookie_t, (Ptr{xcb_connection_t}, xcb_gcontext_t, UInt32, Ptr{xcb_change_gc_value_list_t}), c, gc, value_mask, value_list)
end

function xcb_change_gc_value_list(R)
    ccall((:xcb_change_gc_value_list, var"libxcb.so.1"), Ptr{Cvoid}, (Ptr{xcb_change_gc_request_t},), R)
end

function xcb_copy_gc_checked(c, src_gc, dst_gc, value_mask)
    ccall((:xcb_copy_gc_checked, var"libxcb.so.1"), xcb_void_cookie_t, (Ptr{xcb_connection_t}, xcb_gcontext_t, xcb_gcontext_t, UInt32), c, src_gc, dst_gc, value_mask)
end

function xcb_copy_gc(c, src_gc, dst_gc, value_mask)
    ccall((:xcb_copy_gc, var"libxcb.so.1"), xcb_void_cookie_t, (Ptr{xcb_connection_t}, xcb_gcontext_t, xcb_gcontext_t, UInt32), c, src_gc, dst_gc, value_mask)
end

function xcb_set_dashes_sizeof(_buffer)
    ccall((:xcb_set_dashes_sizeof, var"libxcb.so.1"), Cint, (Ptr{Cvoid},), _buffer)
end

function xcb_set_dashes_checked(c, gc, dash_offset, dashes_len, dashes)
    ccall((:xcb_set_dashes_checked, var"libxcb.so.1"), xcb_void_cookie_t, (Ptr{xcb_connection_t}, xcb_gcontext_t, UInt16, UInt16, Ptr{UInt8}), c, gc, dash_offset, dashes_len, dashes)
end

function xcb_set_dashes(c, gc, dash_offset, dashes_len, dashes)
    ccall((:xcb_set_dashes, var"libxcb.so.1"), xcb_void_cookie_t, (Ptr{xcb_connection_t}, xcb_gcontext_t, UInt16, UInt16, Ptr{UInt8}), c, gc, dash_offset, dashes_len, dashes)
end

function xcb_set_dashes_dashes(R)
    ccall((:xcb_set_dashes_dashes, var"libxcb.so.1"), Ptr{UInt8}, (Ptr{xcb_set_dashes_request_t},), R)
end

function xcb_set_dashes_dashes_length(R)
    ccall((:xcb_set_dashes_dashes_length, var"libxcb.so.1"), Cint, (Ptr{xcb_set_dashes_request_t},), R)
end

function xcb_set_dashes_dashes_end(R)
    ccall((:xcb_set_dashes_dashes_end, var"libxcb.so.1"), xcb_generic_iterator_t, (Ptr{xcb_set_dashes_request_t},), R)
end

function xcb_set_clip_rectangles_sizeof(_buffer, rectangles_len)
    ccall((:xcb_set_clip_rectangles_sizeof, var"libxcb.so.1"), Cint, (Ptr{Cvoid}, UInt32), _buffer, rectangles_len)
end

function xcb_set_clip_rectangles_checked(c, ordering, gc, clip_x_origin, clip_y_origin, rectangles_len, rectangles)
    ccall((:xcb_set_clip_rectangles_checked, var"libxcb.so.1"), xcb_void_cookie_t, (Ptr{xcb_connection_t}, UInt8, xcb_gcontext_t, Int16, Int16, UInt32, Ptr{xcb_rectangle_t}), c, ordering, gc, clip_x_origin, clip_y_origin, rectangles_len, rectangles)
end

function xcb_set_clip_rectangles(c, ordering, gc, clip_x_origin, clip_y_origin, rectangles_len, rectangles)
    ccall((:xcb_set_clip_rectangles, var"libxcb.so.1"), xcb_void_cookie_t, (Ptr{xcb_connection_t}, UInt8, xcb_gcontext_t, Int16, Int16, UInt32, Ptr{xcb_rectangle_t}), c, ordering, gc, clip_x_origin, clip_y_origin, rectangles_len, rectangles)
end

function xcb_set_clip_rectangles_rectangles(R)
    ccall((:xcb_set_clip_rectangles_rectangles, var"libxcb.so.1"), Ptr{xcb_rectangle_t}, (Ptr{xcb_set_clip_rectangles_request_t},), R)
end

function xcb_set_clip_rectangles_rectangles_length(R)
    ccall((:xcb_set_clip_rectangles_rectangles_length, var"libxcb.so.1"), Cint, (Ptr{xcb_set_clip_rectangles_request_t},), R)
end

function xcb_set_clip_rectangles_rectangles_iterator(R)
    ccall((:xcb_set_clip_rectangles_rectangles_iterator, var"libxcb.so.1"), xcb_rectangle_iterator_t, (Ptr{xcb_set_clip_rectangles_request_t},), R)
end

function xcb_free_gc_checked(c, gc)
    ccall((:xcb_free_gc_checked, var"libxcb.so.1"), xcb_void_cookie_t, (Ptr{xcb_connection_t}, xcb_gcontext_t), c, gc)
end

function xcb_free_gc(c, gc)
    ccall((:xcb_free_gc, var"libxcb.so.1"), xcb_void_cookie_t, (Ptr{xcb_connection_t}, xcb_gcontext_t), c, gc)
end

function xcb_clear_area_checked(c, exposures, window, x, y, width, height)
    ccall((:xcb_clear_area_checked, var"libxcb.so.1"), xcb_void_cookie_t, (Ptr{xcb_connection_t}, UInt8, xcb_window_t, Int16, Int16, UInt16, UInt16), c, exposures, window, x, y, width, height)
end

function xcb_clear_area(c, exposures, window, x, y, width, height)
    ccall((:xcb_clear_area, var"libxcb.so.1"), xcb_void_cookie_t, (Ptr{xcb_connection_t}, UInt8, xcb_window_t, Int16, Int16, UInt16, UInt16), c, exposures, window, x, y, width, height)
end

function xcb_copy_area_checked(c, src_drawable, dst_drawable, gc, src_x, src_y, dst_x, dst_y, width, height)
    ccall((:xcb_copy_area_checked, var"libxcb.so.1"), xcb_void_cookie_t, (Ptr{xcb_connection_t}, xcb_drawable_t, xcb_drawable_t, xcb_gcontext_t, Int16, Int16, Int16, Int16, UInt16, UInt16), c, src_drawable, dst_drawable, gc, src_x, src_y, dst_x, dst_y, width, height)
end

function xcb_copy_area(c, src_drawable, dst_drawable, gc, src_x, src_y, dst_x, dst_y, width, height)
    ccall((:xcb_copy_area, var"libxcb.so.1"), xcb_void_cookie_t, (Ptr{xcb_connection_t}, xcb_drawable_t, xcb_drawable_t, xcb_gcontext_t, Int16, Int16, Int16, Int16, UInt16, UInt16), c, src_drawable, dst_drawable, gc, src_x, src_y, dst_x, dst_y, width, height)
end

function xcb_copy_plane_checked(c, src_drawable, dst_drawable, gc, src_x, src_y, dst_x, dst_y, width, height, bit_plane)
    ccall((:xcb_copy_plane_checked, var"libxcb.so.1"), xcb_void_cookie_t, (Ptr{xcb_connection_t}, xcb_drawable_t, xcb_drawable_t, xcb_gcontext_t, Int16, Int16, Int16, Int16, UInt16, UInt16, UInt32), c, src_drawable, dst_drawable, gc, src_x, src_y, dst_x, dst_y, width, height, bit_plane)
end

function xcb_copy_plane(c, src_drawable, dst_drawable, gc, src_x, src_y, dst_x, dst_y, width, height, bit_plane)
    ccall((:xcb_copy_plane, var"libxcb.so.1"), xcb_void_cookie_t, (Ptr{xcb_connection_t}, xcb_drawable_t, xcb_drawable_t, xcb_gcontext_t, Int16, Int16, Int16, Int16, UInt16, UInt16, UInt32), c, src_drawable, dst_drawable, gc, src_x, src_y, dst_x, dst_y, width, height, bit_plane)
end

function xcb_poly_point_sizeof(_buffer, points_len)
    ccall((:xcb_poly_point_sizeof, var"libxcb.so.1"), Cint, (Ptr{Cvoid}, UInt32), _buffer, points_len)
end

function xcb_poly_point_checked(c, coordinate_mode, drawable, gc, points_len, points)
    ccall((:xcb_poly_point_checked, var"libxcb.so.1"), xcb_void_cookie_t, (Ptr{xcb_connection_t}, UInt8, xcb_drawable_t, xcb_gcontext_t, UInt32, Ptr{xcb_point_t}), c, coordinate_mode, drawable, gc, points_len, points)
end

function xcb_poly_point(c, coordinate_mode, drawable, gc, points_len, points)
    ccall((:xcb_poly_point, var"libxcb.so.1"), xcb_void_cookie_t, (Ptr{xcb_connection_t}, UInt8, xcb_drawable_t, xcb_gcontext_t, UInt32, Ptr{xcb_point_t}), c, coordinate_mode, drawable, gc, points_len, points)
end

function xcb_poly_point_points(R)
    ccall((:xcb_poly_point_points, var"libxcb.so.1"), Ptr{xcb_point_t}, (Ptr{xcb_poly_point_request_t},), R)
end

function xcb_poly_point_points_length(R)
    ccall((:xcb_poly_point_points_length, var"libxcb.so.1"), Cint, (Ptr{xcb_poly_point_request_t},), R)
end

function xcb_poly_point_points_iterator(R)
    ccall((:xcb_poly_point_points_iterator, var"libxcb.so.1"), xcb_point_iterator_t, (Ptr{xcb_poly_point_request_t},), R)
end

function xcb_poly_line_sizeof(_buffer, points_len)
    ccall((:xcb_poly_line_sizeof, var"libxcb.so.1"), Cint, (Ptr{Cvoid}, UInt32), _buffer, points_len)
end

function xcb_poly_line_checked(c, coordinate_mode, drawable, gc, points_len, points)
    ccall((:xcb_poly_line_checked, var"libxcb.so.1"), xcb_void_cookie_t, (Ptr{xcb_connection_t}, UInt8, xcb_drawable_t, xcb_gcontext_t, UInt32, Ptr{xcb_point_t}), c, coordinate_mode, drawable, gc, points_len, points)
end

function xcb_poly_line(c, coordinate_mode, drawable, gc, points_len, points)
    ccall((:xcb_poly_line, var"libxcb.so.1"), xcb_void_cookie_t, (Ptr{xcb_connection_t}, UInt8, xcb_drawable_t, xcb_gcontext_t, UInt32, Ptr{xcb_point_t}), c, coordinate_mode, drawable, gc, points_len, points)
end

function xcb_poly_line_points(R)
    ccall((:xcb_poly_line_points, var"libxcb.so.1"), Ptr{xcb_point_t}, (Ptr{xcb_poly_line_request_t},), R)
end

function xcb_poly_line_points_length(R)
    ccall((:xcb_poly_line_points_length, var"libxcb.so.1"), Cint, (Ptr{xcb_poly_line_request_t},), R)
end

function xcb_poly_line_points_iterator(R)
    ccall((:xcb_poly_line_points_iterator, var"libxcb.so.1"), xcb_point_iterator_t, (Ptr{xcb_poly_line_request_t},), R)
end

function xcb_segment_next(i)
    ccall((:xcb_segment_next, var"libxcb.so.1"), Cvoid, (Ptr{xcb_segment_iterator_t},), i)
end

function xcb_segment_end(i)
    ccall((:xcb_segment_end, var"libxcb.so.1"), xcb_generic_iterator_t, (xcb_segment_iterator_t,), i)
end

function xcb_poly_segment_sizeof(_buffer, segments_len)
    ccall((:xcb_poly_segment_sizeof, var"libxcb.so.1"), Cint, (Ptr{Cvoid}, UInt32), _buffer, segments_len)
end

function xcb_poly_segment_checked(c, drawable, gc, segments_len, segments)
    ccall((:xcb_poly_segment_checked, var"libxcb.so.1"), xcb_void_cookie_t, (Ptr{xcb_connection_t}, xcb_drawable_t, xcb_gcontext_t, UInt32, Ptr{xcb_segment_t}), c, drawable, gc, segments_len, segments)
end

function xcb_poly_segment(c, drawable, gc, segments_len, segments)
    ccall((:xcb_poly_segment, var"libxcb.so.1"), xcb_void_cookie_t, (Ptr{xcb_connection_t}, xcb_drawable_t, xcb_gcontext_t, UInt32, Ptr{xcb_segment_t}), c, drawable, gc, segments_len, segments)
end

function xcb_poly_segment_segments(R)
    ccall((:xcb_poly_segment_segments, var"libxcb.so.1"), Ptr{xcb_segment_t}, (Ptr{xcb_poly_segment_request_t},), R)
end

function xcb_poly_segment_segments_length(R)
    ccall((:xcb_poly_segment_segments_length, var"libxcb.so.1"), Cint, (Ptr{xcb_poly_segment_request_t},), R)
end

function xcb_poly_segment_segments_iterator(R)
    ccall((:xcb_poly_segment_segments_iterator, var"libxcb.so.1"), xcb_segment_iterator_t, (Ptr{xcb_poly_segment_request_t},), R)
end

function xcb_poly_rectangle_sizeof(_buffer, rectangles_len)
    ccall((:xcb_poly_rectangle_sizeof, var"libxcb.so.1"), Cint, (Ptr{Cvoid}, UInt32), _buffer, rectangles_len)
end

function xcb_poly_rectangle_checked(c, drawable, gc, rectangles_len, rectangles)
    ccall((:xcb_poly_rectangle_checked, var"libxcb.so.1"), xcb_void_cookie_t, (Ptr{xcb_connection_t}, xcb_drawable_t, xcb_gcontext_t, UInt32, Ptr{xcb_rectangle_t}), c, drawable, gc, rectangles_len, rectangles)
end

function xcb_poly_rectangle(c, drawable, gc, rectangles_len, rectangles)
    ccall((:xcb_poly_rectangle, var"libxcb.so.1"), xcb_void_cookie_t, (Ptr{xcb_connection_t}, xcb_drawable_t, xcb_gcontext_t, UInt32, Ptr{xcb_rectangle_t}), c, drawable, gc, rectangles_len, rectangles)
end

function xcb_poly_rectangle_rectangles(R)
    ccall((:xcb_poly_rectangle_rectangles, var"libxcb.so.1"), Ptr{xcb_rectangle_t}, (Ptr{xcb_poly_rectangle_request_t},), R)
end

function xcb_poly_rectangle_rectangles_length(R)
    ccall((:xcb_poly_rectangle_rectangles_length, var"libxcb.so.1"), Cint, (Ptr{xcb_poly_rectangle_request_t},), R)
end

function xcb_poly_rectangle_rectangles_iterator(R)
    ccall((:xcb_poly_rectangle_rectangles_iterator, var"libxcb.so.1"), xcb_rectangle_iterator_t, (Ptr{xcb_poly_rectangle_request_t},), R)
end

function xcb_poly_arc_sizeof(_buffer, arcs_len)
    ccall((:xcb_poly_arc_sizeof, var"libxcb.so.1"), Cint, (Ptr{Cvoid}, UInt32), _buffer, arcs_len)
end

function xcb_poly_arc_checked(c, drawable, gc, arcs_len, arcs)
    ccall((:xcb_poly_arc_checked, var"libxcb.so.1"), xcb_void_cookie_t, (Ptr{xcb_connection_t}, xcb_drawable_t, xcb_gcontext_t, UInt32, Ptr{xcb_arc_t}), c, drawable, gc, arcs_len, arcs)
end

function xcb_poly_arc(c, drawable, gc, arcs_len, arcs)
    ccall((:xcb_poly_arc, var"libxcb.so.1"), xcb_void_cookie_t, (Ptr{xcb_connection_t}, xcb_drawable_t, xcb_gcontext_t, UInt32, Ptr{xcb_arc_t}), c, drawable, gc, arcs_len, arcs)
end

function xcb_poly_arc_arcs(R)
    ccall((:xcb_poly_arc_arcs, var"libxcb.so.1"), Ptr{xcb_arc_t}, (Ptr{xcb_poly_arc_request_t},), R)
end

function xcb_poly_arc_arcs_length(R)
    ccall((:xcb_poly_arc_arcs_length, var"libxcb.so.1"), Cint, (Ptr{xcb_poly_arc_request_t},), R)
end

function xcb_poly_arc_arcs_iterator(R)
    ccall((:xcb_poly_arc_arcs_iterator, var"libxcb.so.1"), xcb_arc_iterator_t, (Ptr{xcb_poly_arc_request_t},), R)
end

function xcb_fill_poly_sizeof(_buffer, points_len)
    ccall((:xcb_fill_poly_sizeof, var"libxcb.so.1"), Cint, (Ptr{Cvoid}, UInt32), _buffer, points_len)
end

function xcb_fill_poly_checked(c, drawable, gc, shape, coordinate_mode, points_len, points)
    ccall((:xcb_fill_poly_checked, var"libxcb.so.1"), xcb_void_cookie_t, (Ptr{xcb_connection_t}, xcb_drawable_t, xcb_gcontext_t, UInt8, UInt8, UInt32, Ptr{xcb_point_t}), c, drawable, gc, shape, coordinate_mode, points_len, points)
end

function xcb_fill_poly(c, drawable, gc, shape, coordinate_mode, points_len, points)
    ccall((:xcb_fill_poly, var"libxcb.so.1"), xcb_void_cookie_t, (Ptr{xcb_connection_t}, xcb_drawable_t, xcb_gcontext_t, UInt8, UInt8, UInt32, Ptr{xcb_point_t}), c, drawable, gc, shape, coordinate_mode, points_len, points)
end

function xcb_fill_poly_points(R)
    ccall((:xcb_fill_poly_points, var"libxcb.so.1"), Ptr{xcb_point_t}, (Ptr{xcb_fill_poly_request_t},), R)
end

function xcb_fill_poly_points_length(R)
    ccall((:xcb_fill_poly_points_length, var"libxcb.so.1"), Cint, (Ptr{xcb_fill_poly_request_t},), R)
end

function xcb_fill_poly_points_iterator(R)
    ccall((:xcb_fill_poly_points_iterator, var"libxcb.so.1"), xcb_point_iterator_t, (Ptr{xcb_fill_poly_request_t},), R)
end

function xcb_poly_fill_rectangle_sizeof(_buffer, rectangles_len)
    ccall((:xcb_poly_fill_rectangle_sizeof, var"libxcb.so.1"), Cint, (Ptr{Cvoid}, UInt32), _buffer, rectangles_len)
end

function xcb_poly_fill_rectangle_checked(c, drawable, gc, rectangles_len, rectangles)
    ccall((:xcb_poly_fill_rectangle_checked, var"libxcb.so.1"), xcb_void_cookie_t, (Ptr{xcb_connection_t}, xcb_drawable_t, xcb_gcontext_t, UInt32, Ptr{xcb_rectangle_t}), c, drawable, gc, rectangles_len, rectangles)
end

function xcb_poly_fill_rectangle(c, drawable, gc, rectangles_len, rectangles)
    ccall((:xcb_poly_fill_rectangle, var"libxcb.so.1"), xcb_void_cookie_t, (Ptr{xcb_connection_t}, xcb_drawable_t, xcb_gcontext_t, UInt32, Ptr{xcb_rectangle_t}), c, drawable, gc, rectangles_len, rectangles)
end

function xcb_poly_fill_rectangle_rectangles(R)
    ccall((:xcb_poly_fill_rectangle_rectangles, var"libxcb.so.1"), Ptr{xcb_rectangle_t}, (Ptr{xcb_poly_fill_rectangle_request_t},), R)
end

function xcb_poly_fill_rectangle_rectangles_length(R)
    ccall((:xcb_poly_fill_rectangle_rectangles_length, var"libxcb.so.1"), Cint, (Ptr{xcb_poly_fill_rectangle_request_t},), R)
end

function xcb_poly_fill_rectangle_rectangles_iterator(R)
    ccall((:xcb_poly_fill_rectangle_rectangles_iterator, var"libxcb.so.1"), xcb_rectangle_iterator_t, (Ptr{xcb_poly_fill_rectangle_request_t},), R)
end

function xcb_poly_fill_arc_sizeof(_buffer, arcs_len)
    ccall((:xcb_poly_fill_arc_sizeof, var"libxcb.so.1"), Cint, (Ptr{Cvoid}, UInt32), _buffer, arcs_len)
end

function xcb_poly_fill_arc_checked(c, drawable, gc, arcs_len, arcs)
    ccall((:xcb_poly_fill_arc_checked, var"libxcb.so.1"), xcb_void_cookie_t, (Ptr{xcb_connection_t}, xcb_drawable_t, xcb_gcontext_t, UInt32, Ptr{xcb_arc_t}), c, drawable, gc, arcs_len, arcs)
end

function xcb_poly_fill_arc(c, drawable, gc, arcs_len, arcs)
    ccall((:xcb_poly_fill_arc, var"libxcb.so.1"), xcb_void_cookie_t, (Ptr{xcb_connection_t}, xcb_drawable_t, xcb_gcontext_t, UInt32, Ptr{xcb_arc_t}), c, drawable, gc, arcs_len, arcs)
end

function xcb_poly_fill_arc_arcs(R)
    ccall((:xcb_poly_fill_arc_arcs, var"libxcb.so.1"), Ptr{xcb_arc_t}, (Ptr{xcb_poly_fill_arc_request_t},), R)
end

function xcb_poly_fill_arc_arcs_length(R)
    ccall((:xcb_poly_fill_arc_arcs_length, var"libxcb.so.1"), Cint, (Ptr{xcb_poly_fill_arc_request_t},), R)
end

function xcb_poly_fill_arc_arcs_iterator(R)
    ccall((:xcb_poly_fill_arc_arcs_iterator, var"libxcb.so.1"), xcb_arc_iterator_t, (Ptr{xcb_poly_fill_arc_request_t},), R)
end

function xcb_put_image_sizeof(_buffer, data_len)
    ccall((:xcb_put_image_sizeof, var"libxcb.so.1"), Cint, (Ptr{Cvoid}, UInt32), _buffer, data_len)
end

function xcb_put_image_checked(c, format, drawable, gc, width, height, dst_x, dst_y, left_pad, depth, data_len, data)
    ccall((:xcb_put_image_checked, var"libxcb.so.1"), xcb_void_cookie_t, (Ptr{xcb_connection_t}, UInt8, xcb_drawable_t, xcb_gcontext_t, UInt16, UInt16, Int16, Int16, UInt8, UInt8, UInt32, Ptr{UInt8}), c, format, drawable, gc, width, height, dst_x, dst_y, left_pad, depth, data_len, data)
end

function xcb_put_image(c, format, drawable, gc, width, height, dst_x, dst_y, left_pad, depth, data_len, data)
    ccall((:xcb_put_image, var"libxcb.so.1"), xcb_void_cookie_t, (Ptr{xcb_connection_t}, UInt8, xcb_drawable_t, xcb_gcontext_t, UInt16, UInt16, Int16, Int16, UInt8, UInt8, UInt32, Ptr{UInt8}), c, format, drawable, gc, width, height, dst_x, dst_y, left_pad, depth, data_len, data)
end

function xcb_put_image_data(R)
    ccall((:xcb_put_image_data, var"libxcb.so.1"), Ptr{UInt8}, (Ptr{xcb_put_image_request_t},), R)
end

function xcb_put_image_data_length(R)
    ccall((:xcb_put_image_data_length, var"libxcb.so.1"), Cint, (Ptr{xcb_put_image_request_t},), R)
end

function xcb_put_image_data_end(R)
    ccall((:xcb_put_image_data_end, var"libxcb.so.1"), xcb_generic_iterator_t, (Ptr{xcb_put_image_request_t},), R)
end

function xcb_get_image_sizeof(_buffer)
    ccall((:xcb_get_image_sizeof, var"libxcb.so.1"), Cint, (Ptr{Cvoid},), _buffer)
end

function xcb_get_image(c, format, drawable, x, y, width, height, plane_mask)
    ccall((:xcb_get_image, var"libxcb.so.1"), xcb_get_image_cookie_t, (Ptr{xcb_connection_t}, UInt8, xcb_drawable_t, Int16, Int16, UInt16, UInt16, UInt32), c, format, drawable, x, y, width, height, plane_mask)
end

function xcb_get_image_unchecked(c, format, drawable, x, y, width, height, plane_mask)
    ccall((:xcb_get_image_unchecked, var"libxcb.so.1"), xcb_get_image_cookie_t, (Ptr{xcb_connection_t}, UInt8, xcb_drawable_t, Int16, Int16, UInt16, UInt16, UInt32), c, format, drawable, x, y, width, height, plane_mask)
end

function xcb_get_image_data(R)
    ccall((:xcb_get_image_data, var"libxcb.so.1"), Ptr{UInt8}, (Ptr{xcb_get_image_reply_t},), R)
end

function xcb_get_image_data_length(R)
    ccall((:xcb_get_image_data_length, var"libxcb.so.1"), Cint, (Ptr{xcb_get_image_reply_t},), R)
end

function xcb_get_image_data_end(R)
    ccall((:xcb_get_image_data_end, var"libxcb.so.1"), xcb_generic_iterator_t, (Ptr{xcb_get_image_reply_t},), R)
end

function xcb_get_image_reply(c, cookie, e)
    ccall((:xcb_get_image_reply, var"libxcb.so.1"), Ptr{xcb_get_image_reply_t}, (Ptr{xcb_connection_t}, xcb_get_image_cookie_t, Ptr{Ptr{xcb_generic_error_t}}), c, cookie, e)
end

function xcb_poly_text_8_sizeof(_buffer, items_len)
    ccall((:xcb_poly_text_8_sizeof, var"libxcb.so.1"), Cint, (Ptr{Cvoid}, UInt32), _buffer, items_len)
end

function xcb_poly_text_8_checked(c, drawable, gc, x, y, items_len, items)
    ccall((:xcb_poly_text_8_checked, var"libxcb.so.1"), xcb_void_cookie_t, (Ptr{xcb_connection_t}, xcb_drawable_t, xcb_gcontext_t, Int16, Int16, UInt32, Ptr{UInt8}), c, drawable, gc, x, y, items_len, items)
end

function xcb_poly_text_8(c, drawable, gc, x, y, items_len, items)
    ccall((:xcb_poly_text_8, var"libxcb.so.1"), xcb_void_cookie_t, (Ptr{xcb_connection_t}, xcb_drawable_t, xcb_gcontext_t, Int16, Int16, UInt32, Ptr{UInt8}), c, drawable, gc, x, y, items_len, items)
end

function xcb_poly_text_8_items(R)
    ccall((:xcb_poly_text_8_items, var"libxcb.so.1"), Ptr{UInt8}, (Ptr{xcb_poly_text_8_request_t},), R)
end

function xcb_poly_text_8_items_length(R)
    ccall((:xcb_poly_text_8_items_length, var"libxcb.so.1"), Cint, (Ptr{xcb_poly_text_8_request_t},), R)
end

function xcb_poly_text_8_items_end(R)
    ccall((:xcb_poly_text_8_items_end, var"libxcb.so.1"), xcb_generic_iterator_t, (Ptr{xcb_poly_text_8_request_t},), R)
end

function xcb_poly_text_16_sizeof(_buffer, items_len)
    ccall((:xcb_poly_text_16_sizeof, var"libxcb.so.1"), Cint, (Ptr{Cvoid}, UInt32), _buffer, items_len)
end

function xcb_poly_text_16_checked(c, drawable, gc, x, y, items_len, items)
    ccall((:xcb_poly_text_16_checked, var"libxcb.so.1"), xcb_void_cookie_t, (Ptr{xcb_connection_t}, xcb_drawable_t, xcb_gcontext_t, Int16, Int16, UInt32, Ptr{UInt8}), c, drawable, gc, x, y, items_len, items)
end

function xcb_poly_text_16(c, drawable, gc, x, y, items_len, items)
    ccall((:xcb_poly_text_16, var"libxcb.so.1"), xcb_void_cookie_t, (Ptr{xcb_connection_t}, xcb_drawable_t, xcb_gcontext_t, Int16, Int16, UInt32, Ptr{UInt8}), c, drawable, gc, x, y, items_len, items)
end

function xcb_poly_text_16_items(R)
    ccall((:xcb_poly_text_16_items, var"libxcb.so.1"), Ptr{UInt8}, (Ptr{xcb_poly_text_16_request_t},), R)
end

function xcb_poly_text_16_items_length(R)
    ccall((:xcb_poly_text_16_items_length, var"libxcb.so.1"), Cint, (Ptr{xcb_poly_text_16_request_t},), R)
end

function xcb_poly_text_16_items_end(R)
    ccall((:xcb_poly_text_16_items_end, var"libxcb.so.1"), xcb_generic_iterator_t, (Ptr{xcb_poly_text_16_request_t},), R)
end

function xcb_image_text_8_sizeof(_buffer)
    ccall((:xcb_image_text_8_sizeof, var"libxcb.so.1"), Cint, (Ptr{Cvoid},), _buffer)
end

function xcb_image_text_8_checked(c, string_len, drawable, gc, x, y, string)
    ccall((:xcb_image_text_8_checked, var"libxcb.so.1"), xcb_void_cookie_t, (Ptr{xcb_connection_t}, UInt8, xcb_drawable_t, xcb_gcontext_t, Int16, Int16, Cstring), c, string_len, drawable, gc, x, y, string)
end

function xcb_image_text_8(c, string_len, drawable, gc, x, y, string)
    ccall((:xcb_image_text_8, var"libxcb.so.1"), xcb_void_cookie_t, (Ptr{xcb_connection_t}, UInt8, xcb_drawable_t, xcb_gcontext_t, Int16, Int16, Cstring), c, string_len, drawable, gc, x, y, string)
end

function xcb_image_text_8_string(R)
    ccall((:xcb_image_text_8_string, var"libxcb.so.1"), Cstring, (Ptr{xcb_image_text_8_request_t},), R)
end

function xcb_image_text_8_string_length(R)
    ccall((:xcb_image_text_8_string_length, var"libxcb.so.1"), Cint, (Ptr{xcb_image_text_8_request_t},), R)
end

function xcb_image_text_8_string_end(R)
    ccall((:xcb_image_text_8_string_end, var"libxcb.so.1"), xcb_generic_iterator_t, (Ptr{xcb_image_text_8_request_t},), R)
end

function xcb_image_text_16_sizeof(_buffer)
    ccall((:xcb_image_text_16_sizeof, var"libxcb.so.1"), Cint, (Ptr{Cvoid},), _buffer)
end

function xcb_image_text_16_checked(c, string_len, drawable, gc, x, y, string)
    ccall((:xcb_image_text_16_checked, var"libxcb.so.1"), xcb_void_cookie_t, (Ptr{xcb_connection_t}, UInt8, xcb_drawable_t, xcb_gcontext_t, Int16, Int16, Ptr{xcb_char2b_t}), c, string_len, drawable, gc, x, y, string)
end

function xcb_image_text_16(c, string_len, drawable, gc, x, y, string)
    ccall((:xcb_image_text_16, var"libxcb.so.1"), xcb_void_cookie_t, (Ptr{xcb_connection_t}, UInt8, xcb_drawable_t, xcb_gcontext_t, Int16, Int16, Ptr{xcb_char2b_t}), c, string_len, drawable, gc, x, y, string)
end

function xcb_image_text_16_string(R)
    ccall((:xcb_image_text_16_string, var"libxcb.so.1"), Ptr{xcb_char2b_t}, (Ptr{xcb_image_text_16_request_t},), R)
end

function xcb_image_text_16_string_length(R)
    ccall((:xcb_image_text_16_string_length, var"libxcb.so.1"), Cint, (Ptr{xcb_image_text_16_request_t},), R)
end

function xcb_image_text_16_string_iterator(R)
    ccall((:xcb_image_text_16_string_iterator, var"libxcb.so.1"), xcb_char2b_iterator_t, (Ptr{xcb_image_text_16_request_t},), R)
end

function xcb_create_colormap_checked(c, alloc, mid, window, visual)
    ccall((:xcb_create_colormap_checked, var"libxcb.so.1"), xcb_void_cookie_t, (Ptr{xcb_connection_t}, UInt8, xcb_colormap_t, xcb_window_t, xcb_visualid_t), c, alloc, mid, window, visual)
end

function xcb_create_colormap(c, alloc, mid, window, visual)
    ccall((:xcb_create_colormap, var"libxcb.so.1"), xcb_void_cookie_t, (Ptr{xcb_connection_t}, UInt8, xcb_colormap_t, xcb_window_t, xcb_visualid_t), c, alloc, mid, window, visual)
end

function xcb_free_colormap_checked(c, cmap)
    ccall((:xcb_free_colormap_checked, var"libxcb.so.1"), xcb_void_cookie_t, (Ptr{xcb_connection_t}, xcb_colormap_t), c, cmap)
end

function xcb_free_colormap(c, cmap)
    ccall((:xcb_free_colormap, var"libxcb.so.1"), xcb_void_cookie_t, (Ptr{xcb_connection_t}, xcb_colormap_t), c, cmap)
end

function xcb_copy_colormap_and_free_checked(c, mid, src_cmap)
    ccall((:xcb_copy_colormap_and_free_checked, var"libxcb.so.1"), xcb_void_cookie_t, (Ptr{xcb_connection_t}, xcb_colormap_t, xcb_colormap_t), c, mid, src_cmap)
end

function xcb_copy_colormap_and_free(c, mid, src_cmap)
    ccall((:xcb_copy_colormap_and_free, var"libxcb.so.1"), xcb_void_cookie_t, (Ptr{xcb_connection_t}, xcb_colormap_t, xcb_colormap_t), c, mid, src_cmap)
end

function xcb_install_colormap_checked(c, cmap)
    ccall((:xcb_install_colormap_checked, var"libxcb.so.1"), xcb_void_cookie_t, (Ptr{xcb_connection_t}, xcb_colormap_t), c, cmap)
end

function xcb_install_colormap(c, cmap)
    ccall((:xcb_install_colormap, var"libxcb.so.1"), xcb_void_cookie_t, (Ptr{xcb_connection_t}, xcb_colormap_t), c, cmap)
end

function xcb_uninstall_colormap_checked(c, cmap)
    ccall((:xcb_uninstall_colormap_checked, var"libxcb.so.1"), xcb_void_cookie_t, (Ptr{xcb_connection_t}, xcb_colormap_t), c, cmap)
end

function xcb_uninstall_colormap(c, cmap)
    ccall((:xcb_uninstall_colormap, var"libxcb.so.1"), xcb_void_cookie_t, (Ptr{xcb_connection_t}, xcb_colormap_t), c, cmap)
end

function xcb_list_installed_colormaps_sizeof(_buffer)
    ccall((:xcb_list_installed_colormaps_sizeof, var"libxcb.so.1"), Cint, (Ptr{Cvoid},), _buffer)
end

function xcb_list_installed_colormaps(c, window)
    ccall((:xcb_list_installed_colormaps, var"libxcb.so.1"), xcb_list_installed_colormaps_cookie_t, (Ptr{xcb_connection_t}, xcb_window_t), c, window)
end

function xcb_list_installed_colormaps_unchecked(c, window)
    ccall((:xcb_list_installed_colormaps_unchecked, var"libxcb.so.1"), xcb_list_installed_colormaps_cookie_t, (Ptr{xcb_connection_t}, xcb_window_t), c, window)
end

function xcb_list_installed_colormaps_cmaps(R)
    ccall((:xcb_list_installed_colormaps_cmaps, var"libxcb.so.1"), Ptr{xcb_colormap_t}, (Ptr{xcb_list_installed_colormaps_reply_t},), R)
end

function xcb_list_installed_colormaps_cmaps_length(R)
    ccall((:xcb_list_installed_colormaps_cmaps_length, var"libxcb.so.1"), Cint, (Ptr{xcb_list_installed_colormaps_reply_t},), R)
end

function xcb_list_installed_colormaps_cmaps_end(R)
    ccall((:xcb_list_installed_colormaps_cmaps_end, var"libxcb.so.1"), xcb_generic_iterator_t, (Ptr{xcb_list_installed_colormaps_reply_t},), R)
end

function xcb_list_installed_colormaps_reply(c, cookie, e)
    ccall((:xcb_list_installed_colormaps_reply, var"libxcb.so.1"), Ptr{xcb_list_installed_colormaps_reply_t}, (Ptr{xcb_connection_t}, xcb_list_installed_colormaps_cookie_t, Ptr{Ptr{xcb_generic_error_t}}), c, cookie, e)
end

function xcb_alloc_color(c, cmap, red, green, blue)
    ccall((:xcb_alloc_color, var"libxcb.so.1"), xcb_alloc_color_cookie_t, (Ptr{xcb_connection_t}, xcb_colormap_t, UInt16, UInt16, UInt16), c, cmap, red, green, blue)
end

function xcb_alloc_color_unchecked(c, cmap, red, green, blue)
    ccall((:xcb_alloc_color_unchecked, var"libxcb.so.1"), xcb_alloc_color_cookie_t, (Ptr{xcb_connection_t}, xcb_colormap_t, UInt16, UInt16, UInt16), c, cmap, red, green, blue)
end

function xcb_alloc_color_reply(c, cookie, e)
    ccall((:xcb_alloc_color_reply, var"libxcb.so.1"), Ptr{xcb_alloc_color_reply_t}, (Ptr{xcb_connection_t}, xcb_alloc_color_cookie_t, Ptr{Ptr{xcb_generic_error_t}}), c, cookie, e)
end

function xcb_alloc_named_color_sizeof(_buffer)
    ccall((:xcb_alloc_named_color_sizeof, var"libxcb.so.1"), Cint, (Ptr{Cvoid},), _buffer)
end

function xcb_alloc_named_color(c, cmap, name_len, name)
    ccall((:xcb_alloc_named_color, var"libxcb.so.1"), xcb_alloc_named_color_cookie_t, (Ptr{xcb_connection_t}, xcb_colormap_t, UInt16, Cstring), c, cmap, name_len, name)
end

function xcb_alloc_named_color_unchecked(c, cmap, name_len, name)
    ccall((:xcb_alloc_named_color_unchecked, var"libxcb.so.1"), xcb_alloc_named_color_cookie_t, (Ptr{xcb_connection_t}, xcb_colormap_t, UInt16, Cstring), c, cmap, name_len, name)
end

function xcb_alloc_named_color_reply(c, cookie, e)
    ccall((:xcb_alloc_named_color_reply, var"libxcb.so.1"), Ptr{xcb_alloc_named_color_reply_t}, (Ptr{xcb_connection_t}, xcb_alloc_named_color_cookie_t, Ptr{Ptr{xcb_generic_error_t}}), c, cookie, e)
end

function xcb_alloc_color_cells_sizeof(_buffer)
    ccall((:xcb_alloc_color_cells_sizeof, var"libxcb.so.1"), Cint, (Ptr{Cvoid},), _buffer)
end

function xcb_alloc_color_cells(c, contiguous, cmap, colors, planes)
    ccall((:xcb_alloc_color_cells, var"libxcb.so.1"), xcb_alloc_color_cells_cookie_t, (Ptr{xcb_connection_t}, UInt8, xcb_colormap_t, UInt16, UInt16), c, contiguous, cmap, colors, planes)
end

function xcb_alloc_color_cells_unchecked(c, contiguous, cmap, colors, planes)
    ccall((:xcb_alloc_color_cells_unchecked, var"libxcb.so.1"), xcb_alloc_color_cells_cookie_t, (Ptr{xcb_connection_t}, UInt8, xcb_colormap_t, UInt16, UInt16), c, contiguous, cmap, colors, planes)
end

function xcb_alloc_color_cells_pixels(R)
    ccall((:xcb_alloc_color_cells_pixels, var"libxcb.so.1"), Ptr{UInt32}, (Ptr{xcb_alloc_color_cells_reply_t},), R)
end

function xcb_alloc_color_cells_pixels_length(R)
    ccall((:xcb_alloc_color_cells_pixels_length, var"libxcb.so.1"), Cint, (Ptr{xcb_alloc_color_cells_reply_t},), R)
end

function xcb_alloc_color_cells_pixels_end(R)
    ccall((:xcb_alloc_color_cells_pixels_end, var"libxcb.so.1"), xcb_generic_iterator_t, (Ptr{xcb_alloc_color_cells_reply_t},), R)
end

function xcb_alloc_color_cells_masks(R)
    ccall((:xcb_alloc_color_cells_masks, var"libxcb.so.1"), Ptr{UInt32}, (Ptr{xcb_alloc_color_cells_reply_t},), R)
end

function xcb_alloc_color_cells_masks_length(R)
    ccall((:xcb_alloc_color_cells_masks_length, var"libxcb.so.1"), Cint, (Ptr{xcb_alloc_color_cells_reply_t},), R)
end

function xcb_alloc_color_cells_masks_end(R)
    ccall((:xcb_alloc_color_cells_masks_end, var"libxcb.so.1"), xcb_generic_iterator_t, (Ptr{xcb_alloc_color_cells_reply_t},), R)
end

function xcb_alloc_color_cells_reply(c, cookie, e)
    ccall((:xcb_alloc_color_cells_reply, var"libxcb.so.1"), Ptr{xcb_alloc_color_cells_reply_t}, (Ptr{xcb_connection_t}, xcb_alloc_color_cells_cookie_t, Ptr{Ptr{xcb_generic_error_t}}), c, cookie, e)
end

function xcb_alloc_color_planes_sizeof(_buffer)
    ccall((:xcb_alloc_color_planes_sizeof, var"libxcb.so.1"), Cint, (Ptr{Cvoid},), _buffer)
end

function xcb_alloc_color_planes(c, contiguous, cmap, colors, reds, greens, blues)
    ccall((:xcb_alloc_color_planes, var"libxcb.so.1"), xcb_alloc_color_planes_cookie_t, (Ptr{xcb_connection_t}, UInt8, xcb_colormap_t, UInt16, UInt16, UInt16, UInt16), c, contiguous, cmap, colors, reds, greens, blues)
end

function xcb_alloc_color_planes_unchecked(c, contiguous, cmap, colors, reds, greens, blues)
    ccall((:xcb_alloc_color_planes_unchecked, var"libxcb.so.1"), xcb_alloc_color_planes_cookie_t, (Ptr{xcb_connection_t}, UInt8, xcb_colormap_t, UInt16, UInt16, UInt16, UInt16), c, contiguous, cmap, colors, reds, greens, blues)
end

function xcb_alloc_color_planes_pixels(R)
    ccall((:xcb_alloc_color_planes_pixels, var"libxcb.so.1"), Ptr{UInt32}, (Ptr{xcb_alloc_color_planes_reply_t},), R)
end

function xcb_alloc_color_planes_pixels_length(R)
    ccall((:xcb_alloc_color_planes_pixels_length, var"libxcb.so.1"), Cint, (Ptr{xcb_alloc_color_planes_reply_t},), R)
end

function xcb_alloc_color_planes_pixels_end(R)
    ccall((:xcb_alloc_color_planes_pixels_end, var"libxcb.so.1"), xcb_generic_iterator_t, (Ptr{xcb_alloc_color_planes_reply_t},), R)
end

function xcb_alloc_color_planes_reply(c, cookie, e)
    ccall((:xcb_alloc_color_planes_reply, var"libxcb.so.1"), Ptr{xcb_alloc_color_planes_reply_t}, (Ptr{xcb_connection_t}, xcb_alloc_color_planes_cookie_t, Ptr{Ptr{xcb_generic_error_t}}), c, cookie, e)
end

function xcb_free_colors_sizeof(_buffer, pixels_len)
    ccall((:xcb_free_colors_sizeof, var"libxcb.so.1"), Cint, (Ptr{Cvoid}, UInt32), _buffer, pixels_len)
end

function xcb_free_colors_checked(c, cmap, plane_mask, pixels_len, pixels)
    ccall((:xcb_free_colors_checked, var"libxcb.so.1"), xcb_void_cookie_t, (Ptr{xcb_connection_t}, xcb_colormap_t, UInt32, UInt32, Ptr{UInt32}), c, cmap, plane_mask, pixels_len, pixels)
end

function xcb_free_colors(c, cmap, plane_mask, pixels_len, pixels)
    ccall((:xcb_free_colors, var"libxcb.so.1"), xcb_void_cookie_t, (Ptr{xcb_connection_t}, xcb_colormap_t, UInt32, UInt32, Ptr{UInt32}), c, cmap, plane_mask, pixels_len, pixels)
end

function xcb_free_colors_pixels(R)
    ccall((:xcb_free_colors_pixels, var"libxcb.so.1"), Ptr{UInt32}, (Ptr{xcb_free_colors_request_t},), R)
end

function xcb_free_colors_pixels_length(R)
    ccall((:xcb_free_colors_pixels_length, var"libxcb.so.1"), Cint, (Ptr{xcb_free_colors_request_t},), R)
end

function xcb_free_colors_pixels_end(R)
    ccall((:xcb_free_colors_pixels_end, var"libxcb.so.1"), xcb_generic_iterator_t, (Ptr{xcb_free_colors_request_t},), R)
end

function xcb_coloritem_next(i)
    ccall((:xcb_coloritem_next, var"libxcb.so.1"), Cvoid, (Ptr{xcb_coloritem_iterator_t},), i)
end

function xcb_coloritem_end(i)
    ccall((:xcb_coloritem_end, var"libxcb.so.1"), xcb_generic_iterator_t, (xcb_coloritem_iterator_t,), i)
end

function xcb_store_colors_sizeof(_buffer, items_len)
    ccall((:xcb_store_colors_sizeof, var"libxcb.so.1"), Cint, (Ptr{Cvoid}, UInt32), _buffer, items_len)
end

function xcb_store_colors_checked(c, cmap, items_len, items)
    ccall((:xcb_store_colors_checked, var"libxcb.so.1"), xcb_void_cookie_t, (Ptr{xcb_connection_t}, xcb_colormap_t, UInt32, Ptr{xcb_coloritem_t}), c, cmap, items_len, items)
end

function xcb_store_colors(c, cmap, items_len, items)
    ccall((:xcb_store_colors, var"libxcb.so.1"), xcb_void_cookie_t, (Ptr{xcb_connection_t}, xcb_colormap_t, UInt32, Ptr{xcb_coloritem_t}), c, cmap, items_len, items)
end

function xcb_store_colors_items(R)
    ccall((:xcb_store_colors_items, var"libxcb.so.1"), Ptr{xcb_coloritem_t}, (Ptr{xcb_store_colors_request_t},), R)
end

function xcb_store_colors_items_length(R)
    ccall((:xcb_store_colors_items_length, var"libxcb.so.1"), Cint, (Ptr{xcb_store_colors_request_t},), R)
end

function xcb_store_colors_items_iterator(R)
    ccall((:xcb_store_colors_items_iterator, var"libxcb.so.1"), xcb_coloritem_iterator_t, (Ptr{xcb_store_colors_request_t},), R)
end

function xcb_store_named_color_sizeof(_buffer)
    ccall((:xcb_store_named_color_sizeof, var"libxcb.so.1"), Cint, (Ptr{Cvoid},), _buffer)
end

function xcb_store_named_color_checked(c, flags, cmap, pixel, name_len, name)
    ccall((:xcb_store_named_color_checked, var"libxcb.so.1"), xcb_void_cookie_t, (Ptr{xcb_connection_t}, UInt8, xcb_colormap_t, UInt32, UInt16, Cstring), c, flags, cmap, pixel, name_len, name)
end

function xcb_store_named_color(c, flags, cmap, pixel, name_len, name)
    ccall((:xcb_store_named_color, var"libxcb.so.1"), xcb_void_cookie_t, (Ptr{xcb_connection_t}, UInt8, xcb_colormap_t, UInt32, UInt16, Cstring), c, flags, cmap, pixel, name_len, name)
end

function xcb_store_named_color_name(R)
    ccall((:xcb_store_named_color_name, var"libxcb.so.1"), Cstring, (Ptr{xcb_store_named_color_request_t},), R)
end

function xcb_store_named_color_name_length(R)
    ccall((:xcb_store_named_color_name_length, var"libxcb.so.1"), Cint, (Ptr{xcb_store_named_color_request_t},), R)
end

function xcb_store_named_color_name_end(R)
    ccall((:xcb_store_named_color_name_end, var"libxcb.so.1"), xcb_generic_iterator_t, (Ptr{xcb_store_named_color_request_t},), R)
end

function xcb_rgb_next(i)
    ccall((:xcb_rgb_next, var"libxcb.so.1"), Cvoid, (Ptr{xcb_rgb_iterator_t},), i)
end

function xcb_rgb_end(i)
    ccall((:xcb_rgb_end, var"libxcb.so.1"), xcb_generic_iterator_t, (xcb_rgb_iterator_t,), i)
end

function xcb_query_colors_sizeof(_buffer, pixels_len)
    ccall((:xcb_query_colors_sizeof, var"libxcb.so.1"), Cint, (Ptr{Cvoid}, UInt32), _buffer, pixels_len)
end

function xcb_query_colors(c, cmap, pixels_len, pixels)
    ccall((:xcb_query_colors, var"libxcb.so.1"), xcb_query_colors_cookie_t, (Ptr{xcb_connection_t}, xcb_colormap_t, UInt32, Ptr{UInt32}), c, cmap, pixels_len, pixels)
end

function xcb_query_colors_unchecked(c, cmap, pixels_len, pixels)
    ccall((:xcb_query_colors_unchecked, var"libxcb.so.1"), xcb_query_colors_cookie_t, (Ptr{xcb_connection_t}, xcb_colormap_t, UInt32, Ptr{UInt32}), c, cmap, pixels_len, pixels)
end

function xcb_query_colors_colors(R)
    ccall((:xcb_query_colors_colors, var"libxcb.so.1"), Ptr{xcb_rgb_t}, (Ptr{xcb_query_colors_reply_t},), R)
end

function xcb_query_colors_colors_length(R)
    ccall((:xcb_query_colors_colors_length, var"libxcb.so.1"), Cint, (Ptr{xcb_query_colors_reply_t},), R)
end

function xcb_query_colors_colors_iterator(R)
    ccall((:xcb_query_colors_colors_iterator, var"libxcb.so.1"), xcb_rgb_iterator_t, (Ptr{xcb_query_colors_reply_t},), R)
end

function xcb_query_colors_reply(c, cookie, e)
    ccall((:xcb_query_colors_reply, var"libxcb.so.1"), Ptr{xcb_query_colors_reply_t}, (Ptr{xcb_connection_t}, xcb_query_colors_cookie_t, Ptr{Ptr{xcb_generic_error_t}}), c, cookie, e)
end

function xcb_lookup_color_sizeof(_buffer)
    ccall((:xcb_lookup_color_sizeof, var"libxcb.so.1"), Cint, (Ptr{Cvoid},), _buffer)
end

function xcb_lookup_color(c, cmap, name_len, name)
    ccall((:xcb_lookup_color, var"libxcb.so.1"), xcb_lookup_color_cookie_t, (Ptr{xcb_connection_t}, xcb_colormap_t, UInt16, Cstring), c, cmap, name_len, name)
end

function xcb_lookup_color_unchecked(c, cmap, name_len, name)
    ccall((:xcb_lookup_color_unchecked, var"libxcb.so.1"), xcb_lookup_color_cookie_t, (Ptr{xcb_connection_t}, xcb_colormap_t, UInt16, Cstring), c, cmap, name_len, name)
end

function xcb_lookup_color_reply(c, cookie, e)
    ccall((:xcb_lookup_color_reply, var"libxcb.so.1"), Ptr{xcb_lookup_color_reply_t}, (Ptr{xcb_connection_t}, xcb_lookup_color_cookie_t, Ptr{Ptr{xcb_generic_error_t}}), c, cookie, e)
end

function xcb_create_cursor_checked(c, cid, source, mask, fore_red, fore_green, fore_blue, back_red, back_green, back_blue, x, y)
    ccall((:xcb_create_cursor_checked, var"libxcb.so.1"), xcb_void_cookie_t, (Ptr{xcb_connection_t}, xcb_cursor_t, xcb_pixmap_t, xcb_pixmap_t, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16), c, cid, source, mask, fore_red, fore_green, fore_blue, back_red, back_green, back_blue, x, y)
end

function xcb_create_cursor(c, cid, source, mask, fore_red, fore_green, fore_blue, back_red, back_green, back_blue, x, y)
    ccall((:xcb_create_cursor, var"libxcb.so.1"), xcb_void_cookie_t, (Ptr{xcb_connection_t}, xcb_cursor_t, xcb_pixmap_t, xcb_pixmap_t, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16), c, cid, source, mask, fore_red, fore_green, fore_blue, back_red, back_green, back_blue, x, y)
end

function xcb_create_glyph_cursor_checked(c, cid, source_font, mask_font, source_char, mask_char, fore_red, fore_green, fore_blue, back_red, back_green, back_blue)
    ccall((:xcb_create_glyph_cursor_checked, var"libxcb.so.1"), xcb_void_cookie_t, (Ptr{xcb_connection_t}, xcb_cursor_t, xcb_font_t, xcb_font_t, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16), c, cid, source_font, mask_font, source_char, mask_char, fore_red, fore_green, fore_blue, back_red, back_green, back_blue)
end

function xcb_create_glyph_cursor(c, cid, source_font, mask_font, source_char, mask_char, fore_red, fore_green, fore_blue, back_red, back_green, back_blue)
    ccall((:xcb_create_glyph_cursor, var"libxcb.so.1"), xcb_void_cookie_t, (Ptr{xcb_connection_t}, xcb_cursor_t, xcb_font_t, xcb_font_t, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16), c, cid, source_font, mask_font, source_char, mask_char, fore_red, fore_green, fore_blue, back_red, back_green, back_blue)
end

function xcb_free_cursor_checked(c, cursor)
    ccall((:xcb_free_cursor_checked, var"libxcb.so.1"), xcb_void_cookie_t, (Ptr{xcb_connection_t}, xcb_cursor_t), c, cursor)
end

function xcb_free_cursor(c, cursor)
    ccall((:xcb_free_cursor, var"libxcb.so.1"), xcb_void_cookie_t, (Ptr{xcb_connection_t}, xcb_cursor_t), c, cursor)
end

function xcb_recolor_cursor_checked(c, cursor, fore_red, fore_green, fore_blue, back_red, back_green, back_blue)
    ccall((:xcb_recolor_cursor_checked, var"libxcb.so.1"), xcb_void_cookie_t, (Ptr{xcb_connection_t}, xcb_cursor_t, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16), c, cursor, fore_red, fore_green, fore_blue, back_red, back_green, back_blue)
end

function xcb_recolor_cursor(c, cursor, fore_red, fore_green, fore_blue, back_red, back_green, back_blue)
    ccall((:xcb_recolor_cursor, var"libxcb.so.1"), xcb_void_cookie_t, (Ptr{xcb_connection_t}, xcb_cursor_t, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16), c, cursor, fore_red, fore_green, fore_blue, back_red, back_green, back_blue)
end

function xcb_query_best_size(c, _class, drawable, width, height)
    ccall((:xcb_query_best_size, var"libxcb.so.1"), xcb_query_best_size_cookie_t, (Ptr{xcb_connection_t}, UInt8, xcb_drawable_t, UInt16, UInt16), c, _class, drawable, width, height)
end

function xcb_query_best_size_unchecked(c, _class, drawable, width, height)
    ccall((:xcb_query_best_size_unchecked, var"libxcb.so.1"), xcb_query_best_size_cookie_t, (Ptr{xcb_connection_t}, UInt8, xcb_drawable_t, UInt16, UInt16), c, _class, drawable, width, height)
end

function xcb_query_best_size_reply(c, cookie, e)
    ccall((:xcb_query_best_size_reply, var"libxcb.so.1"), Ptr{xcb_query_best_size_reply_t}, (Ptr{xcb_connection_t}, xcb_query_best_size_cookie_t, Ptr{Ptr{xcb_generic_error_t}}), c, cookie, e)
end

function xcb_query_extension_sizeof(_buffer)
    ccall((:xcb_query_extension_sizeof, var"libxcb.so.1"), Cint, (Ptr{Cvoid},), _buffer)
end

function xcb_query_extension(c, name_len, name)
    ccall((:xcb_query_extension, var"libxcb.so.1"), xcb_query_extension_cookie_t, (Ptr{xcb_connection_t}, UInt16, Cstring), c, name_len, name)
end

function xcb_query_extension_unchecked(c, name_len, name)
    ccall((:xcb_query_extension_unchecked, var"libxcb.so.1"), xcb_query_extension_cookie_t, (Ptr{xcb_connection_t}, UInt16, Cstring), c, name_len, name)
end

function xcb_query_extension_reply(c, cookie, e)
    ccall((:xcb_query_extension_reply, var"libxcb.so.1"), Ptr{xcb_query_extension_reply_t}, (Ptr{xcb_connection_t}, xcb_query_extension_cookie_t, Ptr{Ptr{xcb_generic_error_t}}), c, cookie, e)
end

function xcb_list_extensions_sizeof(_buffer)
    ccall((:xcb_list_extensions_sizeof, var"libxcb.so.1"), Cint, (Ptr{Cvoid},), _buffer)
end

function xcb_list_extensions(c)
    ccall((:xcb_list_extensions, var"libxcb.so.1"), xcb_list_extensions_cookie_t, (Ptr{xcb_connection_t},), c)
end

function xcb_list_extensions_unchecked(c)
    ccall((:xcb_list_extensions_unchecked, var"libxcb.so.1"), xcb_list_extensions_cookie_t, (Ptr{xcb_connection_t},), c)
end

function xcb_list_extensions_names_length(R)
    ccall((:xcb_list_extensions_names_length, var"libxcb.so.1"), Cint, (Ptr{xcb_list_extensions_reply_t},), R)
end

function xcb_list_extensions_names_iterator(R)
    ccall((:xcb_list_extensions_names_iterator, var"libxcb.so.1"), xcb_str_iterator_t, (Ptr{xcb_list_extensions_reply_t},), R)
end

function xcb_list_extensions_reply(c, cookie, e)
    ccall((:xcb_list_extensions_reply, var"libxcb.so.1"), Ptr{xcb_list_extensions_reply_t}, (Ptr{xcb_connection_t}, xcb_list_extensions_cookie_t, Ptr{Ptr{xcb_generic_error_t}}), c, cookie, e)
end

function xcb_change_keyboard_mapping_sizeof(_buffer)
    ccall((:xcb_change_keyboard_mapping_sizeof, var"libxcb.so.1"), Cint, (Ptr{Cvoid},), _buffer)
end

function xcb_change_keyboard_mapping_checked(c, keycode_count, first_keycode, keysyms_per_keycode, keysyms)
    ccall((:xcb_change_keyboard_mapping_checked, var"libxcb.so.1"), xcb_void_cookie_t, (Ptr{xcb_connection_t}, UInt8, xcb_keycode_t, UInt8, Ptr{xcb_keysym_t}), c, keycode_count, first_keycode, keysyms_per_keycode, keysyms)
end

function xcb_change_keyboard_mapping(c, keycode_count, first_keycode, keysyms_per_keycode, keysyms)
    ccall((:xcb_change_keyboard_mapping, var"libxcb.so.1"), xcb_void_cookie_t, (Ptr{xcb_connection_t}, UInt8, xcb_keycode_t, UInt8, Ptr{xcb_keysym_t}), c, keycode_count, first_keycode, keysyms_per_keycode, keysyms)
end

function xcb_change_keyboard_mapping_keysyms(R)
    ccall((:xcb_change_keyboard_mapping_keysyms, var"libxcb.so.1"), Ptr{xcb_keysym_t}, (Ptr{xcb_change_keyboard_mapping_request_t},), R)
end

function xcb_change_keyboard_mapping_keysyms_length(R)
    ccall((:xcb_change_keyboard_mapping_keysyms_length, var"libxcb.so.1"), Cint, (Ptr{xcb_change_keyboard_mapping_request_t},), R)
end

function xcb_change_keyboard_mapping_keysyms_end(R)
    ccall((:xcb_change_keyboard_mapping_keysyms_end, var"libxcb.so.1"), xcb_generic_iterator_t, (Ptr{xcb_change_keyboard_mapping_request_t},), R)
end

function xcb_get_keyboard_mapping_sizeof(_buffer)
    ccall((:xcb_get_keyboard_mapping_sizeof, var"libxcb.so.1"), Cint, (Ptr{Cvoid},), _buffer)
end

function xcb_get_keyboard_mapping(c, first_keycode, count)
    ccall((:xcb_get_keyboard_mapping, var"libxcb.so.1"), xcb_get_keyboard_mapping_cookie_t, (Ptr{xcb_connection_t}, xcb_keycode_t, UInt8), c, first_keycode, count)
end

function xcb_get_keyboard_mapping_unchecked(c, first_keycode, count)
    ccall((:xcb_get_keyboard_mapping_unchecked, var"libxcb.so.1"), xcb_get_keyboard_mapping_cookie_t, (Ptr{xcb_connection_t}, xcb_keycode_t, UInt8), c, first_keycode, count)
end

function xcb_get_keyboard_mapping_keysyms(R)
    ccall((:xcb_get_keyboard_mapping_keysyms, var"libxcb.so.1"), Ptr{xcb_keysym_t}, (Ptr{xcb_get_keyboard_mapping_reply_t},), R)
end

function xcb_get_keyboard_mapping_keysyms_length(R)
    ccall((:xcb_get_keyboard_mapping_keysyms_length, var"libxcb.so.1"), Cint, (Ptr{xcb_get_keyboard_mapping_reply_t},), R)
end

function xcb_get_keyboard_mapping_keysyms_end(R)
    ccall((:xcb_get_keyboard_mapping_keysyms_end, var"libxcb.so.1"), xcb_generic_iterator_t, (Ptr{xcb_get_keyboard_mapping_reply_t},), R)
end

function xcb_get_keyboard_mapping_reply(c, cookie, e)
    ccall((:xcb_get_keyboard_mapping_reply, var"libxcb.so.1"), Ptr{xcb_get_keyboard_mapping_reply_t}, (Ptr{xcb_connection_t}, xcb_get_keyboard_mapping_cookie_t, Ptr{Ptr{xcb_generic_error_t}}), c, cookie, e)
end

function xcb_change_keyboard_control_value_list_serialize(_buffer, value_mask, _aux)
    ccall((:xcb_change_keyboard_control_value_list_serialize, var"libxcb.so.1"), Cint, (Ptr{Ptr{Cvoid}}, UInt32, Ptr{xcb_change_keyboard_control_value_list_t}), _buffer, value_mask, _aux)
end

function xcb_change_keyboard_control_value_list_unpack(_buffer, value_mask, _aux)
    ccall((:xcb_change_keyboard_control_value_list_unpack, var"libxcb.so.1"), Cint, (Ptr{Cvoid}, UInt32, Ptr{xcb_change_keyboard_control_value_list_t}), _buffer, value_mask, _aux)
end

function xcb_change_keyboard_control_value_list_sizeof(_buffer, value_mask)
    ccall((:xcb_change_keyboard_control_value_list_sizeof, var"libxcb.so.1"), Cint, (Ptr{Cvoid}, UInt32), _buffer, value_mask)
end

function xcb_change_keyboard_control_sizeof(_buffer)
    ccall((:xcb_change_keyboard_control_sizeof, var"libxcb.so.1"), Cint, (Ptr{Cvoid},), _buffer)
end

function xcb_change_keyboard_control_checked(c, value_mask, value_list)
    ccall((:xcb_change_keyboard_control_checked, var"libxcb.so.1"), xcb_void_cookie_t, (Ptr{xcb_connection_t}, UInt32, Ptr{Cvoid}), c, value_mask, value_list)
end

function xcb_change_keyboard_control(c, value_mask, value_list)
    ccall((:xcb_change_keyboard_control, var"libxcb.so.1"), xcb_void_cookie_t, (Ptr{xcb_connection_t}, UInt32, Ptr{Cvoid}), c, value_mask, value_list)
end

function xcb_change_keyboard_control_aux_checked(c, value_mask, value_list)
    ccall((:xcb_change_keyboard_control_aux_checked, var"libxcb.so.1"), xcb_void_cookie_t, (Ptr{xcb_connection_t}, UInt32, Ptr{xcb_change_keyboard_control_value_list_t}), c, value_mask, value_list)
end

function xcb_change_keyboard_control_aux(c, value_mask, value_list)
    ccall((:xcb_change_keyboard_control_aux, var"libxcb.so.1"), xcb_void_cookie_t, (Ptr{xcb_connection_t}, UInt32, Ptr{xcb_change_keyboard_control_value_list_t}), c, value_mask, value_list)
end

function xcb_change_keyboard_control_value_list(R)
    ccall((:xcb_change_keyboard_control_value_list, var"libxcb.so.1"), Ptr{Cvoid}, (Ptr{xcb_change_keyboard_control_request_t},), R)
end

function xcb_get_keyboard_control(c)
    ccall((:xcb_get_keyboard_control, var"libxcb.so.1"), xcb_get_keyboard_control_cookie_t, (Ptr{xcb_connection_t},), c)
end

function xcb_get_keyboard_control_unchecked(c)
    ccall((:xcb_get_keyboard_control_unchecked, var"libxcb.so.1"), xcb_get_keyboard_control_cookie_t, (Ptr{xcb_connection_t},), c)
end

function xcb_get_keyboard_control_reply(c, cookie, e)
    ccall((:xcb_get_keyboard_control_reply, var"libxcb.so.1"), Ptr{xcb_get_keyboard_control_reply_t}, (Ptr{xcb_connection_t}, xcb_get_keyboard_control_cookie_t, Ptr{Ptr{xcb_generic_error_t}}), c, cookie, e)
end

function xcb_bell_checked(c, percent)
    ccall((:xcb_bell_checked, var"libxcb.so.1"), xcb_void_cookie_t, (Ptr{xcb_connection_t}, Int8), c, percent)
end

function xcb_bell(c, percent)
    ccall((:xcb_bell, var"libxcb.so.1"), xcb_void_cookie_t, (Ptr{xcb_connection_t}, Int8), c, percent)
end

function xcb_change_pointer_control_checked(c, acceleration_numerator, acceleration_denominator, threshold, do_acceleration, do_threshold)
    ccall((:xcb_change_pointer_control_checked, var"libxcb.so.1"), xcb_void_cookie_t, (Ptr{xcb_connection_t}, Int16, Int16, Int16, UInt8, UInt8), c, acceleration_numerator, acceleration_denominator, threshold, do_acceleration, do_threshold)
end

function xcb_change_pointer_control(c, acceleration_numerator, acceleration_denominator, threshold, do_acceleration, do_threshold)
    ccall((:xcb_change_pointer_control, var"libxcb.so.1"), xcb_void_cookie_t, (Ptr{xcb_connection_t}, Int16, Int16, Int16, UInt8, UInt8), c, acceleration_numerator, acceleration_denominator, threshold, do_acceleration, do_threshold)
end

function xcb_get_pointer_control(c)
    ccall((:xcb_get_pointer_control, var"libxcb.so.1"), xcb_get_pointer_control_cookie_t, (Ptr{xcb_connection_t},), c)
end

function xcb_get_pointer_control_unchecked(c)
    ccall((:xcb_get_pointer_control_unchecked, var"libxcb.so.1"), xcb_get_pointer_control_cookie_t, (Ptr{xcb_connection_t},), c)
end

function xcb_get_pointer_control_reply(c, cookie, e)
    ccall((:xcb_get_pointer_control_reply, var"libxcb.so.1"), Ptr{xcb_get_pointer_control_reply_t}, (Ptr{xcb_connection_t}, xcb_get_pointer_control_cookie_t, Ptr{Ptr{xcb_generic_error_t}}), c, cookie, e)
end

function xcb_set_screen_saver_checked(c, timeout, interval, prefer_blanking, allow_exposures)
    ccall((:xcb_set_screen_saver_checked, var"libxcb.so.1"), xcb_void_cookie_t, (Ptr{xcb_connection_t}, Int16, Int16, UInt8, UInt8), c, timeout, interval, prefer_blanking, allow_exposures)
end

function xcb_set_screen_saver(c, timeout, interval, prefer_blanking, allow_exposures)
    ccall((:xcb_set_screen_saver, var"libxcb.so.1"), xcb_void_cookie_t, (Ptr{xcb_connection_t}, Int16, Int16, UInt8, UInt8), c, timeout, interval, prefer_blanking, allow_exposures)
end

function xcb_get_screen_saver(c)
    ccall((:xcb_get_screen_saver, var"libxcb.so.1"), xcb_get_screen_saver_cookie_t, (Ptr{xcb_connection_t},), c)
end

function xcb_get_screen_saver_unchecked(c)
    ccall((:xcb_get_screen_saver_unchecked, var"libxcb.so.1"), xcb_get_screen_saver_cookie_t, (Ptr{xcb_connection_t},), c)
end

function xcb_get_screen_saver_reply(c, cookie, e)
    ccall((:xcb_get_screen_saver_reply, var"libxcb.so.1"), Ptr{xcb_get_screen_saver_reply_t}, (Ptr{xcb_connection_t}, xcb_get_screen_saver_cookie_t, Ptr{Ptr{xcb_generic_error_t}}), c, cookie, e)
end

function xcb_change_hosts_sizeof(_buffer)
    ccall((:xcb_change_hosts_sizeof, var"libxcb.so.1"), Cint, (Ptr{Cvoid},), _buffer)
end

function xcb_change_hosts_checked(c, mode, family, address_len, address)
    ccall((:xcb_change_hosts_checked, var"libxcb.so.1"), xcb_void_cookie_t, (Ptr{xcb_connection_t}, UInt8, UInt8, UInt16, Ptr{UInt8}), c, mode, family, address_len, address)
end

function xcb_change_hosts(c, mode, family, address_len, address)
    ccall((:xcb_change_hosts, var"libxcb.so.1"), xcb_void_cookie_t, (Ptr{xcb_connection_t}, UInt8, UInt8, UInt16, Ptr{UInt8}), c, mode, family, address_len, address)
end

function xcb_change_hosts_address(R)
    ccall((:xcb_change_hosts_address, var"libxcb.so.1"), Ptr{UInt8}, (Ptr{xcb_change_hosts_request_t},), R)
end

function xcb_change_hosts_address_length(R)
    ccall((:xcb_change_hosts_address_length, var"libxcb.so.1"), Cint, (Ptr{xcb_change_hosts_request_t},), R)
end

function xcb_change_hosts_address_end(R)
    ccall((:xcb_change_hosts_address_end, var"libxcb.so.1"), xcb_generic_iterator_t, (Ptr{xcb_change_hosts_request_t},), R)
end

function xcb_host_sizeof(_buffer)
    ccall((:xcb_host_sizeof, var"libxcb.so.1"), Cint, (Ptr{Cvoid},), _buffer)
end

function xcb_host_address(R)
    ccall((:xcb_host_address, var"libxcb.so.1"), Ptr{UInt8}, (Ptr{xcb_host_t},), R)
end

function xcb_host_address_length(R)
    ccall((:xcb_host_address_length, var"libxcb.so.1"), Cint, (Ptr{xcb_host_t},), R)
end

function xcb_host_address_end(R)
    ccall((:xcb_host_address_end, var"libxcb.so.1"), xcb_generic_iterator_t, (Ptr{xcb_host_t},), R)
end

function xcb_host_next(i)
    ccall((:xcb_host_next, var"libxcb.so.1"), Cvoid, (Ptr{xcb_host_iterator_t},), i)
end

function xcb_host_end(i)
    ccall((:xcb_host_end, var"libxcb.so.1"), xcb_generic_iterator_t, (xcb_host_iterator_t,), i)
end

function xcb_list_hosts_sizeof(_buffer)
    ccall((:xcb_list_hosts_sizeof, var"libxcb.so.1"), Cint, (Ptr{Cvoid},), _buffer)
end

function xcb_list_hosts(c)
    ccall((:xcb_list_hosts, var"libxcb.so.1"), xcb_list_hosts_cookie_t, (Ptr{xcb_connection_t},), c)
end

function xcb_list_hosts_unchecked(c)
    ccall((:xcb_list_hosts_unchecked, var"libxcb.so.1"), xcb_list_hosts_cookie_t, (Ptr{xcb_connection_t},), c)
end

function xcb_list_hosts_hosts_length(R)
    ccall((:xcb_list_hosts_hosts_length, var"libxcb.so.1"), Cint, (Ptr{xcb_list_hosts_reply_t},), R)
end

function xcb_list_hosts_hosts_iterator(R)
    ccall((:xcb_list_hosts_hosts_iterator, var"libxcb.so.1"), xcb_host_iterator_t, (Ptr{xcb_list_hosts_reply_t},), R)
end

function xcb_list_hosts_reply(c, cookie, e)
    ccall((:xcb_list_hosts_reply, var"libxcb.so.1"), Ptr{xcb_list_hosts_reply_t}, (Ptr{xcb_connection_t}, xcb_list_hosts_cookie_t, Ptr{Ptr{xcb_generic_error_t}}), c, cookie, e)
end

function xcb_set_access_control_checked(c, mode)
    ccall((:xcb_set_access_control_checked, var"libxcb.so.1"), xcb_void_cookie_t, (Ptr{xcb_connection_t}, UInt8), c, mode)
end

function xcb_set_access_control(c, mode)
    ccall((:xcb_set_access_control, var"libxcb.so.1"), xcb_void_cookie_t, (Ptr{xcb_connection_t}, UInt8), c, mode)
end

function xcb_set_close_down_mode_checked(c, mode)
    ccall((:xcb_set_close_down_mode_checked, var"libxcb.so.1"), xcb_void_cookie_t, (Ptr{xcb_connection_t}, UInt8), c, mode)
end

function xcb_set_close_down_mode(c, mode)
    ccall((:xcb_set_close_down_mode, var"libxcb.so.1"), xcb_void_cookie_t, (Ptr{xcb_connection_t}, UInt8), c, mode)
end

function xcb_kill_client_checked(c, resource)
    ccall((:xcb_kill_client_checked, var"libxcb.so.1"), xcb_void_cookie_t, (Ptr{xcb_connection_t}, UInt32), c, resource)
end

function xcb_kill_client(c, resource)
    ccall((:xcb_kill_client, var"libxcb.so.1"), xcb_void_cookie_t, (Ptr{xcb_connection_t}, UInt32), c, resource)
end

function xcb_rotate_properties_sizeof(_buffer)
    ccall((:xcb_rotate_properties_sizeof, var"libxcb.so.1"), Cint, (Ptr{Cvoid},), _buffer)
end

function xcb_rotate_properties_checked(c, window, atoms_len, delta, atoms)
    ccall((:xcb_rotate_properties_checked, var"libxcb.so.1"), xcb_void_cookie_t, (Ptr{xcb_connection_t}, xcb_window_t, UInt16, Int16, Ptr{xcb_atom_t}), c, window, atoms_len, delta, atoms)
end

function xcb_rotate_properties(c, window, atoms_len, delta, atoms)
    ccall((:xcb_rotate_properties, var"libxcb.so.1"), xcb_void_cookie_t, (Ptr{xcb_connection_t}, xcb_window_t, UInt16, Int16, Ptr{xcb_atom_t}), c, window, atoms_len, delta, atoms)
end

function xcb_rotate_properties_atoms(R)
    ccall((:xcb_rotate_properties_atoms, var"libxcb.so.1"), Ptr{xcb_atom_t}, (Ptr{xcb_rotate_properties_request_t},), R)
end

function xcb_rotate_properties_atoms_length(R)
    ccall((:xcb_rotate_properties_atoms_length, var"libxcb.so.1"), Cint, (Ptr{xcb_rotate_properties_request_t},), R)
end

function xcb_rotate_properties_atoms_end(R)
    ccall((:xcb_rotate_properties_atoms_end, var"libxcb.so.1"), xcb_generic_iterator_t, (Ptr{xcb_rotate_properties_request_t},), R)
end

function xcb_force_screen_saver_checked(c, mode)
    ccall((:xcb_force_screen_saver_checked, var"libxcb.so.1"), xcb_void_cookie_t, (Ptr{xcb_connection_t}, UInt8), c, mode)
end

function xcb_force_screen_saver(c, mode)
    ccall((:xcb_force_screen_saver, var"libxcb.so.1"), xcb_void_cookie_t, (Ptr{xcb_connection_t}, UInt8), c, mode)
end

function xcb_set_pointer_mapping_sizeof(_buffer)
    ccall((:xcb_set_pointer_mapping_sizeof, var"libxcb.so.1"), Cint, (Ptr{Cvoid},), _buffer)
end

function xcb_set_pointer_mapping(c, map_len, map)
    ccall((:xcb_set_pointer_mapping, var"libxcb.so.1"), xcb_set_pointer_mapping_cookie_t, (Ptr{xcb_connection_t}, UInt8, Ptr{UInt8}), c, map_len, map)
end

function xcb_set_pointer_mapping_unchecked(c, map_len, map)
    ccall((:xcb_set_pointer_mapping_unchecked, var"libxcb.so.1"), xcb_set_pointer_mapping_cookie_t, (Ptr{xcb_connection_t}, UInt8, Ptr{UInt8}), c, map_len, map)
end

function xcb_set_pointer_mapping_reply(c, cookie, e)
    ccall((:xcb_set_pointer_mapping_reply, var"libxcb.so.1"), Ptr{xcb_set_pointer_mapping_reply_t}, (Ptr{xcb_connection_t}, xcb_set_pointer_mapping_cookie_t, Ptr{Ptr{xcb_generic_error_t}}), c, cookie, e)
end

function xcb_get_pointer_mapping_sizeof(_buffer)
    ccall((:xcb_get_pointer_mapping_sizeof, var"libxcb.so.1"), Cint, (Ptr{Cvoid},), _buffer)
end

function xcb_get_pointer_mapping(c)
    ccall((:xcb_get_pointer_mapping, var"libxcb.so.1"), xcb_get_pointer_mapping_cookie_t, (Ptr{xcb_connection_t},), c)
end

function xcb_get_pointer_mapping_unchecked(c)
    ccall((:xcb_get_pointer_mapping_unchecked, var"libxcb.so.1"), xcb_get_pointer_mapping_cookie_t, (Ptr{xcb_connection_t},), c)
end

function xcb_get_pointer_mapping_map(R)
    ccall((:xcb_get_pointer_mapping_map, var"libxcb.so.1"), Ptr{UInt8}, (Ptr{xcb_get_pointer_mapping_reply_t},), R)
end

function xcb_get_pointer_mapping_map_length(R)
    ccall((:xcb_get_pointer_mapping_map_length, var"libxcb.so.1"), Cint, (Ptr{xcb_get_pointer_mapping_reply_t},), R)
end

function xcb_get_pointer_mapping_map_end(R)
    ccall((:xcb_get_pointer_mapping_map_end, var"libxcb.so.1"), xcb_generic_iterator_t, (Ptr{xcb_get_pointer_mapping_reply_t},), R)
end

function xcb_get_pointer_mapping_reply(c, cookie, e)
    ccall((:xcb_get_pointer_mapping_reply, var"libxcb.so.1"), Ptr{xcb_get_pointer_mapping_reply_t}, (Ptr{xcb_connection_t}, xcb_get_pointer_mapping_cookie_t, Ptr{Ptr{xcb_generic_error_t}}), c, cookie, e)
end

function xcb_set_modifier_mapping_sizeof(_buffer)
    ccall((:xcb_set_modifier_mapping_sizeof, var"libxcb.so.1"), Cint, (Ptr{Cvoid},), _buffer)
end

function xcb_set_modifier_mapping(c, keycodes_per_modifier, keycodes)
    ccall((:xcb_set_modifier_mapping, var"libxcb.so.1"), xcb_set_modifier_mapping_cookie_t, (Ptr{xcb_connection_t}, UInt8, Ptr{xcb_keycode_t}), c, keycodes_per_modifier, keycodes)
end

function xcb_set_modifier_mapping_unchecked(c, keycodes_per_modifier, keycodes)
    ccall((:xcb_set_modifier_mapping_unchecked, var"libxcb.so.1"), xcb_set_modifier_mapping_cookie_t, (Ptr{xcb_connection_t}, UInt8, Ptr{xcb_keycode_t}), c, keycodes_per_modifier, keycodes)
end

function xcb_set_modifier_mapping_reply(c, cookie, e)
    ccall((:xcb_set_modifier_mapping_reply, var"libxcb.so.1"), Ptr{xcb_set_modifier_mapping_reply_t}, (Ptr{xcb_connection_t}, xcb_set_modifier_mapping_cookie_t, Ptr{Ptr{xcb_generic_error_t}}), c, cookie, e)
end

function xcb_get_modifier_mapping_sizeof(_buffer)
    ccall((:xcb_get_modifier_mapping_sizeof, var"libxcb.so.1"), Cint, (Ptr{Cvoid},), _buffer)
end

function xcb_get_modifier_mapping(c)
    ccall((:xcb_get_modifier_mapping, var"libxcb.so.1"), xcb_get_modifier_mapping_cookie_t, (Ptr{xcb_connection_t},), c)
end

function xcb_get_modifier_mapping_unchecked(c)
    ccall((:xcb_get_modifier_mapping_unchecked, var"libxcb.so.1"), xcb_get_modifier_mapping_cookie_t, (Ptr{xcb_connection_t},), c)
end

function xcb_get_modifier_mapping_keycodes(R)
    ccall((:xcb_get_modifier_mapping_keycodes, var"libxcb.so.1"), Ptr{xcb_keycode_t}, (Ptr{xcb_get_modifier_mapping_reply_t},), R)
end

function xcb_get_modifier_mapping_keycodes_length(R)
    ccall((:xcb_get_modifier_mapping_keycodes_length, var"libxcb.so.1"), Cint, (Ptr{xcb_get_modifier_mapping_reply_t},), R)
end

function xcb_get_modifier_mapping_keycodes_end(R)
    ccall((:xcb_get_modifier_mapping_keycodes_end, var"libxcb.so.1"), xcb_generic_iterator_t, (Ptr{xcb_get_modifier_mapping_reply_t},), R)
end

function xcb_get_modifier_mapping_reply(c, cookie, e)
    ccall((:xcb_get_modifier_mapping_reply, var"libxcb.so.1"), Ptr{xcb_get_modifier_mapping_reply_t}, (Ptr{xcb_connection_t}, xcb_get_modifier_mapping_cookie_t, Ptr{Ptr{xcb_generic_error_t}}), c, cookie, e)
end

function xcb_no_operation_checked(c)
    ccall((:xcb_no_operation_checked, var"libxcb.so.1"), xcb_void_cookie_t, (Ptr{xcb_connection_t},), c)
end

function xcb_no_operation(c)
    ccall((:xcb_no_operation, var"libxcb.so.1"), xcb_void_cookie_t, (Ptr{xcb_connection_t},), c)
end
# Julia wrapper for header: xkb.h
# Automatically generated using Clang.jl


function xcb_xkb_get_kbd_by_name_replies_types_map(R)
    ccall((:xcb_xkb_get_kbd_by_name_replies_types_map, var"libxcb-xkb.so.1"), Ptr{xcb_xkb_get_kbd_by_name_replies_types_map_t}, (Ptr{xcb_xkb_get_kbd_by_name_replies_t},), R)
end

function xcb_xkb_device_spec_next(i)
    ccall((:xcb_xkb_device_spec_next, var"libxcb-xkb.so.1"), Cvoid, (Ptr{xcb_xkb_device_spec_iterator_t},), i)
end

function xcb_xkb_device_spec_end(i)
    ccall((:xcb_xkb_device_spec_end, var"libxcb-xkb.so.1"), xcb_generic_iterator_t, (xcb_xkb_device_spec_iterator_t,), i)
end

function xcb_xkb_led_class_spec_next(i)
    ccall((:xcb_xkb_led_class_spec_next, var"libxcb-xkb.so.1"), Cvoid, (Ptr{xcb_xkb_led_class_spec_iterator_t},), i)
end

function xcb_xkb_led_class_spec_end(i)
    ccall((:xcb_xkb_led_class_spec_end, var"libxcb-xkb.so.1"), xcb_generic_iterator_t, (xcb_xkb_led_class_spec_iterator_t,), i)
end

function xcb_xkb_bell_class_spec_next(i)
    ccall((:xcb_xkb_bell_class_spec_next, var"libxcb-xkb.so.1"), Cvoid, (Ptr{xcb_xkb_bell_class_spec_iterator_t},), i)
end

function xcb_xkb_bell_class_spec_end(i)
    ccall((:xcb_xkb_bell_class_spec_end, var"libxcb-xkb.so.1"), xcb_generic_iterator_t, (xcb_xkb_bell_class_spec_iterator_t,), i)
end

function xcb_xkb_id_spec_next(i)
    ccall((:xcb_xkb_id_spec_next, var"libxcb-xkb.so.1"), Cvoid, (Ptr{xcb_xkb_id_spec_iterator_t},), i)
end

function xcb_xkb_id_spec_end(i)
    ccall((:xcb_xkb_id_spec_end, var"libxcb-xkb.so.1"), xcb_generic_iterator_t, (xcb_xkb_id_spec_iterator_t,), i)
end

function xcb_xkb_indicator_map_next(i)
    ccall((:xcb_xkb_indicator_map_next, var"libxcb-xkb.so.1"), Cvoid, (Ptr{xcb_xkb_indicator_map_iterator_t},), i)
end

function xcb_xkb_indicator_map_end(i)
    ccall((:xcb_xkb_indicator_map_end, var"libxcb-xkb.so.1"), xcb_generic_iterator_t, (xcb_xkb_indicator_map_iterator_t,), i)
end

function xcb_xkb_mod_def_next(i)
    ccall((:xcb_xkb_mod_def_next, var"libxcb-xkb.so.1"), Cvoid, (Ptr{xcb_xkb_mod_def_iterator_t},), i)
end

function xcb_xkb_mod_def_end(i)
    ccall((:xcb_xkb_mod_def_end, var"libxcb-xkb.so.1"), xcb_generic_iterator_t, (xcb_xkb_mod_def_iterator_t,), i)
end

function xcb_xkb_key_name_next(i)
    ccall((:xcb_xkb_key_name_next, var"libxcb-xkb.so.1"), Cvoid, (Ptr{xcb_xkb_key_name_iterator_t},), i)
end

function xcb_xkb_key_name_end(i)
    ccall((:xcb_xkb_key_name_end, var"libxcb-xkb.so.1"), xcb_generic_iterator_t, (xcb_xkb_key_name_iterator_t,), i)
end

function xcb_xkb_key_alias_next(i)
    ccall((:xcb_xkb_key_alias_next, var"libxcb-xkb.so.1"), Cvoid, (Ptr{xcb_xkb_key_alias_iterator_t},), i)
end

function xcb_xkb_key_alias_end(i)
    ccall((:xcb_xkb_key_alias_end, var"libxcb-xkb.so.1"), xcb_generic_iterator_t, (xcb_xkb_key_alias_iterator_t,), i)
end

function xcb_xkb_counted_string_16_sizeof(_buffer)
    ccall((:xcb_xkb_counted_string_16_sizeof, var"libxcb-xkb.so.1"), Cint, (Ptr{Cvoid},), _buffer)
end

function xcb_xkb_counted_string_16_string(R)
    ccall((:xcb_xkb_counted_string_16_string, var"libxcb-xkb.so.1"), Cstring, (Ptr{xcb_xkb_counted_string_16_t},), R)
end

function xcb_xkb_counted_string_16_string_length(R)
    ccall((:xcb_xkb_counted_string_16_string_length, var"libxcb-xkb.so.1"), Cint, (Ptr{xcb_xkb_counted_string_16_t},), R)
end

function xcb_xkb_counted_string_16_string_end(R)
    ccall((:xcb_xkb_counted_string_16_string_end, var"libxcb-xkb.so.1"), xcb_generic_iterator_t, (Ptr{xcb_xkb_counted_string_16_t},), R)
end

function xcb_xkb_counted_string_16_alignment_pad(R)
    ccall((:xcb_xkb_counted_string_16_alignment_pad, var"libxcb-xkb.so.1"), Ptr{Cvoid}, (Ptr{xcb_xkb_counted_string_16_t},), R)
end

function xcb_xkb_counted_string_16_alignment_pad_length(R)
    ccall((:xcb_xkb_counted_string_16_alignment_pad_length, var"libxcb-xkb.so.1"), Cint, (Ptr{xcb_xkb_counted_string_16_t},), R)
end

function xcb_xkb_counted_string_16_alignment_pad_end(R)
    ccall((:xcb_xkb_counted_string_16_alignment_pad_end, var"libxcb-xkb.so.1"), xcb_generic_iterator_t, (Ptr{xcb_xkb_counted_string_16_t},), R)
end

function xcb_xkb_counted_string_16_next(i)
    ccall((:xcb_xkb_counted_string_16_next, var"libxcb-xkb.so.1"), Cvoid, (Ptr{xcb_xkb_counted_string_16_iterator_t},), i)
end

function xcb_xkb_counted_string_16_end(i)
    ccall((:xcb_xkb_counted_string_16_end, var"libxcb-xkb.so.1"), xcb_generic_iterator_t, (xcb_xkb_counted_string_16_iterator_t,), i)
end

function xcb_xkb_kt_map_entry_next(i)
    ccall((:xcb_xkb_kt_map_entry_next, var"libxcb-xkb.so.1"), Cvoid, (Ptr{xcb_xkb_kt_map_entry_iterator_t},), i)
end

function xcb_xkb_kt_map_entry_end(i)
    ccall((:xcb_xkb_kt_map_entry_end, var"libxcb-xkb.so.1"), xcb_generic_iterator_t, (xcb_xkb_kt_map_entry_iterator_t,), i)
end

function xcb_xkb_key_type_sizeof(_buffer)
    ccall((:xcb_xkb_key_type_sizeof, var"libxcb-xkb.so.1"), Cint, (Ptr{Cvoid},), _buffer)
end

function xcb_xkb_key_type_map(R)
    ccall((:xcb_xkb_key_type_map, var"libxcb-xkb.so.1"), Ptr{xcb_xkb_kt_map_entry_t}, (Ptr{xcb_xkb_key_type_t},), R)
end

function xcb_xkb_key_type_map_length(R)
    ccall((:xcb_xkb_key_type_map_length, var"libxcb-xkb.so.1"), Cint, (Ptr{xcb_xkb_key_type_t},), R)
end

function xcb_xkb_key_type_map_iterator(R)
    ccall((:xcb_xkb_key_type_map_iterator, var"libxcb-xkb.so.1"), xcb_xkb_kt_map_entry_iterator_t, (Ptr{xcb_xkb_key_type_t},), R)
end

function xcb_xkb_key_type_preserve(R)
    ccall((:xcb_xkb_key_type_preserve, var"libxcb-xkb.so.1"), Ptr{xcb_xkb_mod_def_t}, (Ptr{xcb_xkb_key_type_t},), R)
end

function xcb_xkb_key_type_preserve_length(R)
    ccall((:xcb_xkb_key_type_preserve_length, var"libxcb-xkb.so.1"), Cint, (Ptr{xcb_xkb_key_type_t},), R)
end

function xcb_xkb_key_type_preserve_iterator(R)
    ccall((:xcb_xkb_key_type_preserve_iterator, var"libxcb-xkb.so.1"), xcb_xkb_mod_def_iterator_t, (Ptr{xcb_xkb_key_type_t},), R)
end

function xcb_xkb_key_type_next(i)
    ccall((:xcb_xkb_key_type_next, var"libxcb-xkb.so.1"), Cvoid, (Ptr{xcb_xkb_key_type_iterator_t},), i)
end

function xcb_xkb_key_type_end(i)
    ccall((:xcb_xkb_key_type_end, var"libxcb-xkb.so.1"), xcb_generic_iterator_t, (xcb_xkb_key_type_iterator_t,), i)
end

function xcb_xkb_key_sym_map_sizeof(_buffer)
    ccall((:xcb_xkb_key_sym_map_sizeof, var"libxcb-xkb.so.1"), Cint, (Ptr{Cvoid},), _buffer)
end

function xcb_xkb_key_sym_map_syms(R)
    ccall((:xcb_xkb_key_sym_map_syms, var"libxcb-xkb.so.1"), Ptr{xcb_keysym_t}, (Ptr{xcb_xkb_key_sym_map_t},), R)
end

function xcb_xkb_key_sym_map_syms_length(R)
    ccall((:xcb_xkb_key_sym_map_syms_length, var"libxcb-xkb.so.1"), Cint, (Ptr{xcb_xkb_key_sym_map_t},), R)
end

function xcb_xkb_key_sym_map_syms_end(R)
    ccall((:xcb_xkb_key_sym_map_syms_end, var"libxcb-xkb.so.1"), xcb_generic_iterator_t, (Ptr{xcb_xkb_key_sym_map_t},), R)
end

function xcb_xkb_key_sym_map_next(i)
    ccall((:xcb_xkb_key_sym_map_next, var"libxcb-xkb.so.1"), Cvoid, (Ptr{xcb_xkb_key_sym_map_iterator_t},), i)
end

function xcb_xkb_key_sym_map_end(i)
    ccall((:xcb_xkb_key_sym_map_end, var"libxcb-xkb.so.1"), xcb_generic_iterator_t, (xcb_xkb_key_sym_map_iterator_t,), i)
end

function xcb_xkb_common_behavior_next(i)
    ccall((:xcb_xkb_common_behavior_next, var"libxcb-xkb.so.1"), Cvoid, (Ptr{xcb_xkb_common_behavior_iterator_t},), i)
end

function xcb_xkb_common_behavior_end(i)
    ccall((:xcb_xkb_common_behavior_end, var"libxcb-xkb.so.1"), xcb_generic_iterator_t, (xcb_xkb_common_behavior_iterator_t,), i)
end

function xcb_xkb_default_behavior_next(i)
    ccall((:xcb_xkb_default_behavior_next, var"libxcb-xkb.so.1"), Cvoid, (Ptr{xcb_xkb_default_behavior_iterator_t},), i)
end

function xcb_xkb_default_behavior_end(i)
    ccall((:xcb_xkb_default_behavior_end, var"libxcb-xkb.so.1"), xcb_generic_iterator_t, (xcb_xkb_default_behavior_iterator_t,), i)
end

function xcb_xkb_lock_behavior_next(i)
    ccall((:xcb_xkb_lock_behavior_next, var"libxcb-xkb.so.1"), Cvoid, (Ptr{xcb_xkb_lock_behavior_iterator_t},), i)
end

function xcb_xkb_lock_behavior_end(i)
    ccall((:xcb_xkb_lock_behavior_end, var"libxcb-xkb.so.1"), xcb_generic_iterator_t, (xcb_xkb_lock_behavior_iterator_t,), i)
end

function xcb_xkb_radio_group_behavior_next(i)
    ccall((:xcb_xkb_radio_group_behavior_next, var"libxcb-xkb.so.1"), Cvoid, (Ptr{xcb_xkb_radio_group_behavior_iterator_t},), i)
end

function xcb_xkb_radio_group_behavior_end(i)
    ccall((:xcb_xkb_radio_group_behavior_end, var"libxcb-xkb.so.1"), xcb_generic_iterator_t, (xcb_xkb_radio_group_behavior_iterator_t,), i)
end

function xcb_xkb_overlay_behavior_next(i)
    ccall((:xcb_xkb_overlay_behavior_next, var"libxcb-xkb.so.1"), Cvoid, (Ptr{xcb_xkb_overlay_behavior_iterator_t},), i)
end

function xcb_xkb_overlay_behavior_end(i)
    ccall((:xcb_xkb_overlay_behavior_end, var"libxcb-xkb.so.1"), xcb_generic_iterator_t, (xcb_xkb_overlay_behavior_iterator_t,), i)
end

function xcb_xkb_permament_lock_behavior_next(i)
    ccall((:xcb_xkb_permament_lock_behavior_next, var"libxcb-xkb.so.1"), Cvoid, (Ptr{xcb_xkb_permament_lock_behavior_iterator_t},), i)
end

function xcb_xkb_permament_lock_behavior_end(i)
    ccall((:xcb_xkb_permament_lock_behavior_end, var"libxcb-xkb.so.1"), xcb_generic_iterator_t, (xcb_xkb_permament_lock_behavior_iterator_t,), i)
end

function xcb_xkb_permament_radio_group_behavior_next(i)
    ccall((:xcb_xkb_permament_radio_group_behavior_next, var"libxcb-xkb.so.1"), Cvoid, (Ptr{xcb_xkb_permament_radio_group_behavior_iterator_t},), i)
end

function xcb_xkb_permament_radio_group_behavior_end(i)
    ccall((:xcb_xkb_permament_radio_group_behavior_end, var"libxcb-xkb.so.1"), xcb_generic_iterator_t, (xcb_xkb_permament_radio_group_behavior_iterator_t,), i)
end

function xcb_xkb_permament_overlay_behavior_next(i)
    ccall((:xcb_xkb_permament_overlay_behavior_next, var"libxcb-xkb.so.1"), Cvoid, (Ptr{xcb_xkb_permament_overlay_behavior_iterator_t},), i)
end

function xcb_xkb_permament_overlay_behavior_end(i)
    ccall((:xcb_xkb_permament_overlay_behavior_end, var"libxcb-xkb.so.1"), xcb_generic_iterator_t, (xcb_xkb_permament_overlay_behavior_iterator_t,), i)
end

function xcb_xkb_behavior_next(i)
    ccall((:xcb_xkb_behavior_next, var"libxcb-xkb.so.1"), Cvoid, (Ptr{xcb_xkb_behavior_iterator_t},), i)
end

function xcb_xkb_behavior_end(i)
    ccall((:xcb_xkb_behavior_end, var"libxcb-xkb.so.1"), xcb_generic_iterator_t, (xcb_xkb_behavior_iterator_t,), i)
end

function xcb_xkb_set_behavior_next(i)
    ccall((:xcb_xkb_set_behavior_next, var"libxcb-xkb.so.1"), Cvoid, (Ptr{xcb_xkb_set_behavior_iterator_t},), i)
end

function xcb_xkb_set_behavior_end(i)
    ccall((:xcb_xkb_set_behavior_end, var"libxcb-xkb.so.1"), xcb_generic_iterator_t, (xcb_xkb_set_behavior_iterator_t,), i)
end

function xcb_xkb_set_explicit_next(i)
    ccall((:xcb_xkb_set_explicit_next, var"libxcb-xkb.so.1"), Cvoid, (Ptr{xcb_xkb_set_explicit_iterator_t},), i)
end

function xcb_xkb_set_explicit_end(i)
    ccall((:xcb_xkb_set_explicit_end, var"libxcb-xkb.so.1"), xcb_generic_iterator_t, (xcb_xkb_set_explicit_iterator_t,), i)
end

function xcb_xkb_key_mod_map_next(i)
    ccall((:xcb_xkb_key_mod_map_next, var"libxcb-xkb.so.1"), Cvoid, (Ptr{xcb_xkb_key_mod_map_iterator_t},), i)
end

function xcb_xkb_key_mod_map_end(i)
    ccall((:xcb_xkb_key_mod_map_end, var"libxcb-xkb.so.1"), xcb_generic_iterator_t, (xcb_xkb_key_mod_map_iterator_t,), i)
end

function xcb_xkb_key_v_mod_map_next(i)
    ccall((:xcb_xkb_key_v_mod_map_next, var"libxcb-xkb.so.1"), Cvoid, (Ptr{xcb_xkb_key_v_mod_map_iterator_t},), i)
end

function xcb_xkb_key_v_mod_map_end(i)
    ccall((:xcb_xkb_key_v_mod_map_end, var"libxcb-xkb.so.1"), xcb_generic_iterator_t, (xcb_xkb_key_v_mod_map_iterator_t,), i)
end

function xcb_xkb_kt_set_map_entry_next(i)
    ccall((:xcb_xkb_kt_set_map_entry_next, var"libxcb-xkb.so.1"), Cvoid, (Ptr{xcb_xkb_kt_set_map_entry_iterator_t},), i)
end

function xcb_xkb_kt_set_map_entry_end(i)
    ccall((:xcb_xkb_kt_set_map_entry_end, var"libxcb-xkb.so.1"), xcb_generic_iterator_t, (xcb_xkb_kt_set_map_entry_iterator_t,), i)
end

function xcb_xkb_set_key_type_sizeof(_buffer)
    ccall((:xcb_xkb_set_key_type_sizeof, var"libxcb-xkb.so.1"), Cint, (Ptr{Cvoid},), _buffer)
end

function xcb_xkb_set_key_type_entries(R)
    ccall((:xcb_xkb_set_key_type_entries, var"libxcb-xkb.so.1"), Ptr{xcb_xkb_kt_set_map_entry_t}, (Ptr{xcb_xkb_set_key_type_t},), R)
end

function xcb_xkb_set_key_type_entries_length(R)
    ccall((:xcb_xkb_set_key_type_entries_length, var"libxcb-xkb.so.1"), Cint, (Ptr{xcb_xkb_set_key_type_t},), R)
end

function xcb_xkb_set_key_type_entries_iterator(R)
    ccall((:xcb_xkb_set_key_type_entries_iterator, var"libxcb-xkb.so.1"), xcb_xkb_kt_set_map_entry_iterator_t, (Ptr{xcb_xkb_set_key_type_t},), R)
end

function xcb_xkb_set_key_type_preserve_entries(R)
    ccall((:xcb_xkb_set_key_type_preserve_entries, var"libxcb-xkb.so.1"), Ptr{xcb_xkb_kt_set_map_entry_t}, (Ptr{xcb_xkb_set_key_type_t},), R)
end

function xcb_xkb_set_key_type_preserve_entries_length(R)
    ccall((:xcb_xkb_set_key_type_preserve_entries_length, var"libxcb-xkb.so.1"), Cint, (Ptr{xcb_xkb_set_key_type_t},), R)
end

function xcb_xkb_set_key_type_preserve_entries_iterator(R)
    ccall((:xcb_xkb_set_key_type_preserve_entries_iterator, var"libxcb-xkb.so.1"), xcb_xkb_kt_set_map_entry_iterator_t, (Ptr{xcb_xkb_set_key_type_t},), R)
end

function xcb_xkb_set_key_type_next(i)
    ccall((:xcb_xkb_set_key_type_next, var"libxcb-xkb.so.1"), Cvoid, (Ptr{xcb_xkb_set_key_type_iterator_t},), i)
end

function xcb_xkb_set_key_type_end(i)
    ccall((:xcb_xkb_set_key_type_end, var"libxcb-xkb.so.1"), xcb_generic_iterator_t, (xcb_xkb_set_key_type_iterator_t,), i)
end

function xcb_xkb_string8_next(i)
    ccall((:xcb_xkb_string8_next, var"libxcb-xkb.so.1"), Cvoid, (Ptr{xcb_xkb_string8_iterator_t},), i)
end

function xcb_xkb_string8_end(i)
    ccall((:xcb_xkb_string8_end, var"libxcb-xkb.so.1"), xcb_generic_iterator_t, (xcb_xkb_string8_iterator_t,), i)
end

function xcb_xkb_outline_sizeof(_buffer)
    ccall((:xcb_xkb_outline_sizeof, var"libxcb-xkb.so.1"), Cint, (Ptr{Cvoid},), _buffer)
end

function xcb_xkb_outline_points(R)
    ccall((:xcb_xkb_outline_points, var"libxcb-xkb.so.1"), Ptr{xcb_point_t}, (Ptr{xcb_xkb_outline_t},), R)
end

function xcb_xkb_outline_points_length(R)
    ccall((:xcb_xkb_outline_points_length, var"libxcb-xkb.so.1"), Cint, (Ptr{xcb_xkb_outline_t},), R)
end

function xcb_xkb_outline_points_iterator(R)
    ccall((:xcb_xkb_outline_points_iterator, var"libxcb-xkb.so.1"), xcb_point_iterator_t, (Ptr{xcb_xkb_outline_t},), R)
end

function xcb_xkb_outline_next(i)
    ccall((:xcb_xkb_outline_next, var"libxcb-xkb.so.1"), Cvoid, (Ptr{xcb_xkb_outline_iterator_t},), i)
end

function xcb_xkb_outline_end(i)
    ccall((:xcb_xkb_outline_end, var"libxcb-xkb.so.1"), xcb_generic_iterator_t, (xcb_xkb_outline_iterator_t,), i)
end

function xcb_xkb_shape_sizeof(_buffer)
    ccall((:xcb_xkb_shape_sizeof, var"libxcb-xkb.so.1"), Cint, (Ptr{Cvoid},), _buffer)
end

function xcb_xkb_shape_outlines_length(R)
    ccall((:xcb_xkb_shape_outlines_length, var"libxcb-xkb.so.1"), Cint, (Ptr{xcb_xkb_shape_t},), R)
end

function xcb_xkb_shape_outlines_iterator(R)
    ccall((:xcb_xkb_shape_outlines_iterator, var"libxcb-xkb.so.1"), xcb_xkb_outline_iterator_t, (Ptr{xcb_xkb_shape_t},), R)
end

function xcb_xkb_shape_next(i)
    ccall((:xcb_xkb_shape_next, var"libxcb-xkb.so.1"), Cvoid, (Ptr{xcb_xkb_shape_iterator_t},), i)
end

function xcb_xkb_shape_end(i)
    ccall((:xcb_xkb_shape_end, var"libxcb-xkb.so.1"), xcb_generic_iterator_t, (xcb_xkb_shape_iterator_t,), i)
end

function xcb_xkb_key_next(i)
    ccall((:xcb_xkb_key_next, var"libxcb-xkb.so.1"), Cvoid, (Ptr{xcb_xkb_key_iterator_t},), i)
end

function xcb_xkb_key_end(i)
    ccall((:xcb_xkb_key_end, var"libxcb-xkb.so.1"), xcb_generic_iterator_t, (xcb_xkb_key_iterator_t,), i)
end

function xcb_xkb_overlay_key_next(i)
    ccall((:xcb_xkb_overlay_key_next, var"libxcb-xkb.so.1"), Cvoid, (Ptr{xcb_xkb_overlay_key_iterator_t},), i)
end

function xcb_xkb_overlay_key_end(i)
    ccall((:xcb_xkb_overlay_key_end, var"libxcb-xkb.so.1"), xcb_generic_iterator_t, (xcb_xkb_overlay_key_iterator_t,), i)
end

function xcb_xkb_overlay_row_sizeof(_buffer)
    ccall((:xcb_xkb_overlay_row_sizeof, var"libxcb-xkb.so.1"), Cint, (Ptr{Cvoid},), _buffer)
end

function xcb_xkb_overlay_row_keys(R)
    ccall((:xcb_xkb_overlay_row_keys, var"libxcb-xkb.so.1"), Ptr{xcb_xkb_overlay_key_t}, (Ptr{xcb_xkb_overlay_row_t},), R)
end

function xcb_xkb_overlay_row_keys_length(R)
    ccall((:xcb_xkb_overlay_row_keys_length, var"libxcb-xkb.so.1"), Cint, (Ptr{xcb_xkb_overlay_row_t},), R)
end

function xcb_xkb_overlay_row_keys_iterator(R)
    ccall((:xcb_xkb_overlay_row_keys_iterator, var"libxcb-xkb.so.1"), xcb_xkb_overlay_key_iterator_t, (Ptr{xcb_xkb_overlay_row_t},), R)
end

function xcb_xkb_overlay_row_next(i)
    ccall((:xcb_xkb_overlay_row_next, var"libxcb-xkb.so.1"), Cvoid, (Ptr{xcb_xkb_overlay_row_iterator_t},), i)
end

function xcb_xkb_overlay_row_end(i)
    ccall((:xcb_xkb_overlay_row_end, var"libxcb-xkb.so.1"), xcb_generic_iterator_t, (xcb_xkb_overlay_row_iterator_t,), i)
end

function xcb_xkb_overlay_sizeof(_buffer)
    ccall((:xcb_xkb_overlay_sizeof, var"libxcb-xkb.so.1"), Cint, (Ptr{Cvoid},), _buffer)
end

function xcb_xkb_overlay_rows_length(R)
    ccall((:xcb_xkb_overlay_rows_length, var"libxcb-xkb.so.1"), Cint, (Ptr{xcb_xkb_overlay_t},), R)
end

function xcb_xkb_overlay_rows_iterator(R)
    ccall((:xcb_xkb_overlay_rows_iterator, var"libxcb-xkb.so.1"), xcb_xkb_overlay_row_iterator_t, (Ptr{xcb_xkb_overlay_t},), R)
end

function xcb_xkb_overlay_next(i)
    ccall((:xcb_xkb_overlay_next, var"libxcb-xkb.so.1"), Cvoid, (Ptr{xcb_xkb_overlay_iterator_t},), i)
end

function xcb_xkb_overlay_end(i)
    ccall((:xcb_xkb_overlay_end, var"libxcb-xkb.so.1"), xcb_generic_iterator_t, (xcb_xkb_overlay_iterator_t,), i)
end

function xcb_xkb_row_sizeof(_buffer)
    ccall((:xcb_xkb_row_sizeof, var"libxcb-xkb.so.1"), Cint, (Ptr{Cvoid},), _buffer)
end

function xcb_xkb_row_keys(R)
    ccall((:xcb_xkb_row_keys, var"libxcb-xkb.so.1"), Ptr{xcb_xkb_key_t}, (Ptr{xcb_xkb_row_t},), R)
end

function xcb_xkb_row_keys_length(R)
    ccall((:xcb_xkb_row_keys_length, var"libxcb-xkb.so.1"), Cint, (Ptr{xcb_xkb_row_t},), R)
end

function xcb_xkb_row_keys_iterator(R)
    ccall((:xcb_xkb_row_keys_iterator, var"libxcb-xkb.so.1"), xcb_xkb_key_iterator_t, (Ptr{xcb_xkb_row_t},), R)
end

function xcb_xkb_row_next(i)
    ccall((:xcb_xkb_row_next, var"libxcb-xkb.so.1"), Cvoid, (Ptr{xcb_xkb_row_iterator_t},), i)
end

function xcb_xkb_row_end(i)
    ccall((:xcb_xkb_row_end, var"libxcb-xkb.so.1"), xcb_generic_iterator_t, (xcb_xkb_row_iterator_t,), i)
end

function xcb_xkb_listing_sizeof(_buffer)
    ccall((:xcb_xkb_listing_sizeof, var"libxcb-xkb.so.1"), Cint, (Ptr{Cvoid},), _buffer)
end

function xcb_xkb_listing_string(R)
    ccall((:xcb_xkb_listing_string, var"libxcb-xkb.so.1"), Ptr{xcb_xkb_string8_t}, (Ptr{xcb_xkb_listing_t},), R)
end

function xcb_xkb_listing_string_length(R)
    ccall((:xcb_xkb_listing_string_length, var"libxcb-xkb.so.1"), Cint, (Ptr{xcb_xkb_listing_t},), R)
end

function xcb_xkb_listing_string_end(R)
    ccall((:xcb_xkb_listing_string_end, var"libxcb-xkb.so.1"), xcb_generic_iterator_t, (Ptr{xcb_xkb_listing_t},), R)
end

function xcb_xkb_listing_next(i)
    ccall((:xcb_xkb_listing_next, var"libxcb-xkb.so.1"), Cvoid, (Ptr{xcb_xkb_listing_iterator_t},), i)
end

function xcb_xkb_listing_end(i)
    ccall((:xcb_xkb_listing_end, var"libxcb-xkb.so.1"), xcb_generic_iterator_t, (xcb_xkb_listing_iterator_t,), i)
end

function xcb_xkb_device_led_info_sizeof(_buffer)
    ccall((:xcb_xkb_device_led_info_sizeof, var"libxcb-xkb.so.1"), Cint, (Ptr{Cvoid},), _buffer)
end

function xcb_xkb_device_led_info_names(R)
    ccall((:xcb_xkb_device_led_info_names, var"libxcb-xkb.so.1"), Ptr{xcb_atom_t}, (Ptr{xcb_xkb_device_led_info_t},), R)
end

function xcb_xkb_device_led_info_names_length(R)
    ccall((:xcb_xkb_device_led_info_names_length, var"libxcb-xkb.so.1"), Cint, (Ptr{xcb_xkb_device_led_info_t},), R)
end

function xcb_xkb_device_led_info_names_end(R)
    ccall((:xcb_xkb_device_led_info_names_end, var"libxcb-xkb.so.1"), xcb_generic_iterator_t, (Ptr{xcb_xkb_device_led_info_t},), R)
end

function xcb_xkb_device_led_info_maps(R)
    ccall((:xcb_xkb_device_led_info_maps, var"libxcb-xkb.so.1"), Ptr{xcb_xkb_indicator_map_t}, (Ptr{xcb_xkb_device_led_info_t},), R)
end

function xcb_xkb_device_led_info_maps_length(R)
    ccall((:xcb_xkb_device_led_info_maps_length, var"libxcb-xkb.so.1"), Cint, (Ptr{xcb_xkb_device_led_info_t},), R)
end

function xcb_xkb_device_led_info_maps_iterator(R)
    ccall((:xcb_xkb_device_led_info_maps_iterator, var"libxcb-xkb.so.1"), xcb_xkb_indicator_map_iterator_t, (Ptr{xcb_xkb_device_led_info_t},), R)
end

function xcb_xkb_device_led_info_next(i)
    ccall((:xcb_xkb_device_led_info_next, var"libxcb-xkb.so.1"), Cvoid, (Ptr{xcb_xkb_device_led_info_iterator_t},), i)
end

function xcb_xkb_device_led_info_end(i)
    ccall((:xcb_xkb_device_led_info_end, var"libxcb-xkb.so.1"), xcb_generic_iterator_t, (xcb_xkb_device_led_info_iterator_t,), i)
end

function xcb_xkb_sa_no_action_next(i)
    ccall((:xcb_xkb_sa_no_action_next, var"libxcb-xkb.so.1"), Cvoid, (Ptr{xcb_xkb_sa_no_action_iterator_t},), i)
end

function xcb_xkb_sa_no_action_end(i)
    ccall((:xcb_xkb_sa_no_action_end, var"libxcb-xkb.so.1"), xcb_generic_iterator_t, (xcb_xkb_sa_no_action_iterator_t,), i)
end

function xcb_xkb_sa_set_mods_next(i)
    ccall((:xcb_xkb_sa_set_mods_next, var"libxcb-xkb.so.1"), Cvoid, (Ptr{xcb_xkb_sa_set_mods_iterator_t},), i)
end

function xcb_xkb_sa_set_mods_end(i)
    ccall((:xcb_xkb_sa_set_mods_end, var"libxcb-xkb.so.1"), xcb_generic_iterator_t, (xcb_xkb_sa_set_mods_iterator_t,), i)
end

function xcb_xkb_sa_latch_mods_next(i)
    ccall((:xcb_xkb_sa_latch_mods_next, var"libxcb-xkb.so.1"), Cvoid, (Ptr{xcb_xkb_sa_latch_mods_iterator_t},), i)
end

function xcb_xkb_sa_latch_mods_end(i)
    ccall((:xcb_xkb_sa_latch_mods_end, var"libxcb-xkb.so.1"), xcb_generic_iterator_t, (xcb_xkb_sa_latch_mods_iterator_t,), i)
end

function xcb_xkb_sa_lock_mods_next(i)
    ccall((:xcb_xkb_sa_lock_mods_next, var"libxcb-xkb.so.1"), Cvoid, (Ptr{xcb_xkb_sa_lock_mods_iterator_t},), i)
end

function xcb_xkb_sa_lock_mods_end(i)
    ccall((:xcb_xkb_sa_lock_mods_end, var"libxcb-xkb.so.1"), xcb_generic_iterator_t, (xcb_xkb_sa_lock_mods_iterator_t,), i)
end

function xcb_xkb_sa_set_group_next(i)
    ccall((:xcb_xkb_sa_set_group_next, var"libxcb-xkb.so.1"), Cvoid, (Ptr{xcb_xkb_sa_set_group_iterator_t},), i)
end

function xcb_xkb_sa_set_group_end(i)
    ccall((:xcb_xkb_sa_set_group_end, var"libxcb-xkb.so.1"), xcb_generic_iterator_t, (xcb_xkb_sa_set_group_iterator_t,), i)
end

function xcb_xkb_sa_latch_group_next(i)
    ccall((:xcb_xkb_sa_latch_group_next, var"libxcb-xkb.so.1"), Cvoid, (Ptr{xcb_xkb_sa_latch_group_iterator_t},), i)
end

function xcb_xkb_sa_latch_group_end(i)
    ccall((:xcb_xkb_sa_latch_group_end, var"libxcb-xkb.so.1"), xcb_generic_iterator_t, (xcb_xkb_sa_latch_group_iterator_t,), i)
end

function xcb_xkb_sa_lock_group_next(i)
    ccall((:xcb_xkb_sa_lock_group_next, var"libxcb-xkb.so.1"), Cvoid, (Ptr{xcb_xkb_sa_lock_group_iterator_t},), i)
end

function xcb_xkb_sa_lock_group_end(i)
    ccall((:xcb_xkb_sa_lock_group_end, var"libxcb-xkb.so.1"), xcb_generic_iterator_t, (xcb_xkb_sa_lock_group_iterator_t,), i)
end

function xcb_xkb_sa_move_ptr_next(i)
    ccall((:xcb_xkb_sa_move_ptr_next, var"libxcb-xkb.so.1"), Cvoid, (Ptr{xcb_xkb_sa_move_ptr_iterator_t},), i)
end

function xcb_xkb_sa_move_ptr_end(i)
    ccall((:xcb_xkb_sa_move_ptr_end, var"libxcb-xkb.so.1"), xcb_generic_iterator_t, (xcb_xkb_sa_move_ptr_iterator_t,), i)
end

function xcb_xkb_sa_ptr_btn_next(i)
    ccall((:xcb_xkb_sa_ptr_btn_next, var"libxcb-xkb.so.1"), Cvoid, (Ptr{xcb_xkb_sa_ptr_btn_iterator_t},), i)
end

function xcb_xkb_sa_ptr_btn_end(i)
    ccall((:xcb_xkb_sa_ptr_btn_end, var"libxcb-xkb.so.1"), xcb_generic_iterator_t, (xcb_xkb_sa_ptr_btn_iterator_t,), i)
end

function xcb_xkb_sa_lock_ptr_btn_next(i)
    ccall((:xcb_xkb_sa_lock_ptr_btn_next, var"libxcb-xkb.so.1"), Cvoid, (Ptr{xcb_xkb_sa_lock_ptr_btn_iterator_t},), i)
end

function xcb_xkb_sa_lock_ptr_btn_end(i)
    ccall((:xcb_xkb_sa_lock_ptr_btn_end, var"libxcb-xkb.so.1"), xcb_generic_iterator_t, (xcb_xkb_sa_lock_ptr_btn_iterator_t,), i)
end

function xcb_xkb_sa_set_ptr_dflt_next(i)
    ccall((:xcb_xkb_sa_set_ptr_dflt_next, var"libxcb-xkb.so.1"), Cvoid, (Ptr{xcb_xkb_sa_set_ptr_dflt_iterator_t},), i)
end

function xcb_xkb_sa_set_ptr_dflt_end(i)
    ccall((:xcb_xkb_sa_set_ptr_dflt_end, var"libxcb-xkb.so.1"), xcb_generic_iterator_t, (xcb_xkb_sa_set_ptr_dflt_iterator_t,), i)
end

function xcb_xkb_sa_iso_lock_next(i)
    ccall((:xcb_xkb_sa_iso_lock_next, var"libxcb-xkb.so.1"), Cvoid, (Ptr{xcb_xkb_sa_iso_lock_iterator_t},), i)
end

function xcb_xkb_sa_iso_lock_end(i)
    ccall((:xcb_xkb_sa_iso_lock_end, var"libxcb-xkb.so.1"), xcb_generic_iterator_t, (xcb_xkb_sa_iso_lock_iterator_t,), i)
end

function xcb_xkb_sa_terminate_next(i)
    ccall((:xcb_xkb_sa_terminate_next, var"libxcb-xkb.so.1"), Cvoid, (Ptr{xcb_xkb_sa_terminate_iterator_t},), i)
end

function xcb_xkb_sa_terminate_end(i)
    ccall((:xcb_xkb_sa_terminate_end, var"libxcb-xkb.so.1"), xcb_generic_iterator_t, (xcb_xkb_sa_terminate_iterator_t,), i)
end

function xcb_xkb_sa_switch_screen_next(i)
    ccall((:xcb_xkb_sa_switch_screen_next, var"libxcb-xkb.so.1"), Cvoid, (Ptr{xcb_xkb_sa_switch_screen_iterator_t},), i)
end

function xcb_xkb_sa_switch_screen_end(i)
    ccall((:xcb_xkb_sa_switch_screen_end, var"libxcb-xkb.so.1"), xcb_generic_iterator_t, (xcb_xkb_sa_switch_screen_iterator_t,), i)
end

function xcb_xkb_sa_set_controls_next(i)
    ccall((:xcb_xkb_sa_set_controls_next, var"libxcb-xkb.so.1"), Cvoid, (Ptr{xcb_xkb_sa_set_controls_iterator_t},), i)
end

function xcb_xkb_sa_set_controls_end(i)
    ccall((:xcb_xkb_sa_set_controls_end, var"libxcb-xkb.so.1"), xcb_generic_iterator_t, (xcb_xkb_sa_set_controls_iterator_t,), i)
end

function xcb_xkb_sa_lock_controls_next(i)
    ccall((:xcb_xkb_sa_lock_controls_next, var"libxcb-xkb.so.1"), Cvoid, (Ptr{xcb_xkb_sa_lock_controls_iterator_t},), i)
end

function xcb_xkb_sa_lock_controls_end(i)
    ccall((:xcb_xkb_sa_lock_controls_end, var"libxcb-xkb.so.1"), xcb_generic_iterator_t, (xcb_xkb_sa_lock_controls_iterator_t,), i)
end

function xcb_xkb_sa_action_message_next(i)
    ccall((:xcb_xkb_sa_action_message_next, var"libxcb-xkb.so.1"), Cvoid, (Ptr{xcb_xkb_sa_action_message_iterator_t},), i)
end

function xcb_xkb_sa_action_message_end(i)
    ccall((:xcb_xkb_sa_action_message_end, var"libxcb-xkb.so.1"), xcb_generic_iterator_t, (xcb_xkb_sa_action_message_iterator_t,), i)
end

function xcb_xkb_sa_redirect_key_next(i)
    ccall((:xcb_xkb_sa_redirect_key_next, var"libxcb-xkb.so.1"), Cvoid, (Ptr{xcb_xkb_sa_redirect_key_iterator_t},), i)
end

function xcb_xkb_sa_redirect_key_end(i)
    ccall((:xcb_xkb_sa_redirect_key_end, var"libxcb-xkb.so.1"), xcb_generic_iterator_t, (xcb_xkb_sa_redirect_key_iterator_t,), i)
end

function xcb_xkb_sa_device_btn_next(i)
    ccall((:xcb_xkb_sa_device_btn_next, var"libxcb-xkb.so.1"), Cvoid, (Ptr{xcb_xkb_sa_device_btn_iterator_t},), i)
end

function xcb_xkb_sa_device_btn_end(i)
    ccall((:xcb_xkb_sa_device_btn_end, var"libxcb-xkb.so.1"), xcb_generic_iterator_t, (xcb_xkb_sa_device_btn_iterator_t,), i)
end

function xcb_xkb_sa_lock_device_btn_next(i)
    ccall((:xcb_xkb_sa_lock_device_btn_next, var"libxcb-xkb.so.1"), Cvoid, (Ptr{xcb_xkb_sa_lock_device_btn_iterator_t},), i)
end

function xcb_xkb_sa_lock_device_btn_end(i)
    ccall((:xcb_xkb_sa_lock_device_btn_end, var"libxcb-xkb.so.1"), xcb_generic_iterator_t, (xcb_xkb_sa_lock_device_btn_iterator_t,), i)
end

function xcb_xkb_sa_device_valuator_next(i)
    ccall((:xcb_xkb_sa_device_valuator_next, var"libxcb-xkb.so.1"), Cvoid, (Ptr{xcb_xkb_sa_device_valuator_iterator_t},), i)
end

function xcb_xkb_sa_device_valuator_end(i)
    ccall((:xcb_xkb_sa_device_valuator_end, var"libxcb-xkb.so.1"), xcb_generic_iterator_t, (xcb_xkb_sa_device_valuator_iterator_t,), i)
end

function xcb_xkb_si_action_next(i)
    ccall((:xcb_xkb_si_action_next, var"libxcb-xkb.so.1"), Cvoid, (Ptr{xcb_xkb_si_action_iterator_t},), i)
end

function xcb_xkb_si_action_end(i)
    ccall((:xcb_xkb_si_action_end, var"libxcb-xkb.so.1"), xcb_generic_iterator_t, (xcb_xkb_si_action_iterator_t,), i)
end

function xcb_xkb_sym_interpret_next(i)
    ccall((:xcb_xkb_sym_interpret_next, var"libxcb-xkb.so.1"), Cvoid, (Ptr{xcb_xkb_sym_interpret_iterator_t},), i)
end

function xcb_xkb_sym_interpret_end(i)
    ccall((:xcb_xkb_sym_interpret_end, var"libxcb-xkb.so.1"), xcb_generic_iterator_t, (xcb_xkb_sym_interpret_iterator_t,), i)
end

function xcb_xkb_action_next(i)
    ccall((:xcb_xkb_action_next, var"libxcb-xkb.so.1"), Cvoid, (Ptr{xcb_xkb_action_iterator_t},), i)
end

function xcb_xkb_action_end(i)
    ccall((:xcb_xkb_action_end, var"libxcb-xkb.so.1"), xcb_generic_iterator_t, (xcb_xkb_action_iterator_t,), i)
end

function xcb_xkb_use_extension(c, wantedMajor, wantedMinor)
    ccall((:xcb_xkb_use_extension, var"libxcb-xkb.so.1"), xcb_xkb_use_extension_cookie_t, (Ptr{xcb_connection_t}, UInt16, UInt16), c, wantedMajor, wantedMinor)
end

function xcb_xkb_use_extension_unchecked(c, wantedMajor, wantedMinor)
    ccall((:xcb_xkb_use_extension_unchecked, var"libxcb-xkb.so.1"), xcb_xkb_use_extension_cookie_t, (Ptr{xcb_connection_t}, UInt16, UInt16), c, wantedMajor, wantedMinor)
end

function xcb_xkb_use_extension_reply(c, cookie, e)
    ccall((:xcb_xkb_use_extension_reply, var"libxcb-xkb.so.1"), Ptr{xcb_xkb_use_extension_reply_t}, (Ptr{xcb_connection_t}, xcb_xkb_use_extension_cookie_t, Ptr{Ptr{xcb_generic_error_t}}), c, cookie, e)
end

function xcb_xkb_select_events_details_serialize(_buffer, affectWhich, clear, selectAll, _aux)
    ccall((:xcb_xkb_select_events_details_serialize, var"libxcb-xkb.so.1"), Cint, (Ptr{Ptr{Cvoid}}, UInt16, UInt16, UInt16, Ptr{xcb_xkb_select_events_details_t}), _buffer, affectWhich, clear, selectAll, _aux)
end

function xcb_xkb_select_events_details_unpack(_buffer, affectWhich, clear, selectAll, _aux)
    ccall((:xcb_xkb_select_events_details_unpack, var"libxcb-xkb.so.1"), Cint, (Ptr{Cvoid}, UInt16, UInt16, UInt16, Ptr{xcb_xkb_select_events_details_t}), _buffer, affectWhich, clear, selectAll, _aux)
end

function xcb_xkb_select_events_details_sizeof(_buffer, affectWhich, clear, selectAll)
    ccall((:xcb_xkb_select_events_details_sizeof, var"libxcb-xkb.so.1"), Cint, (Ptr{Cvoid}, UInt16, UInt16, UInt16), _buffer, affectWhich, clear, selectAll)
end

function xcb_xkb_select_events_sizeof(_buffer)
    ccall((:xcb_xkb_select_events_sizeof, var"libxcb-xkb.so.1"), Cint, (Ptr{Cvoid},), _buffer)
end

function xcb_xkb_select_events_checked(c, deviceSpec, affectWhich, clear, selectAll, affectMap, map, details)
    ccall((:xcb_xkb_select_events_checked, var"libxcb-xkb.so.1"), xcb_void_cookie_t, (Ptr{xcb_connection_t}, xcb_xkb_device_spec_t, UInt16, UInt16, UInt16, UInt16, UInt16, Ptr{Cvoid}), c, deviceSpec, affectWhich, clear, selectAll, affectMap, map, details)
end

function xcb_xkb_select_events(c, deviceSpec, affectWhich, clear, selectAll, affectMap, map, details)
    ccall((:xcb_xkb_select_events, var"libxcb-xkb.so.1"), xcb_void_cookie_t, (Ptr{xcb_connection_t}, xcb_xkb_device_spec_t, UInt16, UInt16, UInt16, UInt16, UInt16, Ptr{Cvoid}), c, deviceSpec, affectWhich, clear, selectAll, affectMap, map, details)
end

function xcb_xkb_select_events_aux_checked(c, deviceSpec, affectWhich, clear, selectAll, affectMap, map, details)
    ccall((:xcb_xkb_select_events_aux_checked, var"libxcb-xkb.so.1"), xcb_void_cookie_t, (Ptr{xcb_connection_t}, xcb_xkb_device_spec_t, UInt16, UInt16, UInt16, UInt16, UInt16, Ptr{xcb_xkb_select_events_details_t}), c, deviceSpec, affectWhich, clear, selectAll, affectMap, map, details)
end

function xcb_xkb_select_events_aux(c, deviceSpec, affectWhich, clear, selectAll, affectMap, map, details)
    ccall((:xcb_xkb_select_events_aux, var"libxcb-xkb.so.1"), xcb_void_cookie_t, (Ptr{xcb_connection_t}, xcb_xkb_device_spec_t, UInt16, UInt16, UInt16, UInt16, UInt16, Ptr{xcb_xkb_select_events_details_t}), c, deviceSpec, affectWhich, clear, selectAll, affectMap, map, details)
end

function xcb_xkb_select_events_details(R)
    ccall((:xcb_xkb_select_events_details, var"libxcb-xkb.so.1"), Ptr{Cvoid}, (Ptr{xcb_xkb_select_events_request_t},), R)
end

function xcb_xkb_bell_checked(c, deviceSpec, bellClass, bellID, percent, forceSound, eventOnly, pitch, duration, name, window)
    ccall((:xcb_xkb_bell_checked, var"libxcb-xkb.so.1"), xcb_void_cookie_t, (Ptr{xcb_connection_t}, xcb_xkb_device_spec_t, xcb_xkb_bell_class_spec_t, xcb_xkb_id_spec_t, Int8, UInt8, UInt8, Int16, Int16, xcb_atom_t, xcb_window_t), c, deviceSpec, bellClass, bellID, percent, forceSound, eventOnly, pitch, duration, name, window)
end

function xcb_xkb_bell(c, deviceSpec, bellClass, bellID, percent, forceSound, eventOnly, pitch, duration, name, window)
    ccall((:xcb_xkb_bell, var"libxcb-xkb.so.1"), xcb_void_cookie_t, (Ptr{xcb_connection_t}, xcb_xkb_device_spec_t, xcb_xkb_bell_class_spec_t, xcb_xkb_id_spec_t, Int8, UInt8, UInt8, Int16, Int16, xcb_atom_t, xcb_window_t), c, deviceSpec, bellClass, bellID, percent, forceSound, eventOnly, pitch, duration, name, window)
end

function xcb_xkb_get_state(c, deviceSpec)
    ccall((:xcb_xkb_get_state, var"libxcb-xkb.so.1"), xcb_xkb_get_state_cookie_t, (Ptr{xcb_connection_t}, xcb_xkb_device_spec_t), c, deviceSpec)
end

function xcb_xkb_get_state_unchecked(c, deviceSpec)
    ccall((:xcb_xkb_get_state_unchecked, var"libxcb-xkb.so.1"), xcb_xkb_get_state_cookie_t, (Ptr{xcb_connection_t}, xcb_xkb_device_spec_t), c, deviceSpec)
end

function xcb_xkb_get_state_reply(c, cookie, e)
    ccall((:xcb_xkb_get_state_reply, var"libxcb-xkb.so.1"), Ptr{xcb_xkb_get_state_reply_t}, (Ptr{xcb_connection_t}, xcb_xkb_get_state_cookie_t, Ptr{Ptr{xcb_generic_error_t}}), c, cookie, e)
end

function xcb_xkb_latch_lock_state_checked(c, deviceSpec, affectModLocks, modLocks, lockGroup, groupLock, affectModLatches, latchGroup, groupLatch)
    ccall((:xcb_xkb_latch_lock_state_checked, var"libxcb-xkb.so.1"), xcb_void_cookie_t, (Ptr{xcb_connection_t}, xcb_xkb_device_spec_t, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt16), c, deviceSpec, affectModLocks, modLocks, lockGroup, groupLock, affectModLatches, latchGroup, groupLatch)
end

function xcb_xkb_latch_lock_state(c, deviceSpec, affectModLocks, modLocks, lockGroup, groupLock, affectModLatches, latchGroup, groupLatch)
    ccall((:xcb_xkb_latch_lock_state, var"libxcb-xkb.so.1"), xcb_void_cookie_t, (Ptr{xcb_connection_t}, xcb_xkb_device_spec_t, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt16), c, deviceSpec, affectModLocks, modLocks, lockGroup, groupLock, affectModLatches, latchGroup, groupLatch)
end

function xcb_xkb_get_controls(c, deviceSpec)
    ccall((:xcb_xkb_get_controls, var"libxcb-xkb.so.1"), xcb_xkb_get_controls_cookie_t, (Ptr{xcb_connection_t}, xcb_xkb_device_spec_t), c, deviceSpec)
end

function xcb_xkb_get_controls_unchecked(c, deviceSpec)
    ccall((:xcb_xkb_get_controls_unchecked, var"libxcb-xkb.so.1"), xcb_xkb_get_controls_cookie_t, (Ptr{xcb_connection_t}, xcb_xkb_device_spec_t), c, deviceSpec)
end

function xcb_xkb_get_controls_reply(c, cookie, e)
    ccall((:xcb_xkb_get_controls_reply, var"libxcb-xkb.so.1"), Ptr{xcb_xkb_get_controls_reply_t}, (Ptr{xcb_connection_t}, xcb_xkb_get_controls_cookie_t, Ptr{Ptr{xcb_generic_error_t}}), c, cookie, e)
end

function xcb_xkb_set_controls_checked(c, deviceSpec, affectInternalRealMods, internalRealMods, affectIgnoreLockRealMods, ignoreLockRealMods, affectInternalVirtualMods, internalVirtualMods, affectIgnoreLockVirtualMods, ignoreLockVirtualMods, mouseKeysDfltBtn, groupsWrap, accessXOptions, affectEnabledControls, enabledControls, changeControls, repeatDelay, repeatInterval, slowKeysDelay, debounceDelay, mouseKeysDelay, mouseKeysInterval, mouseKeysTimeToMax, mouseKeysMaxSpeed, mouseKeysCurve, accessXTimeout, accessXTimeoutMask, accessXTimeoutValues, accessXTimeoutOptionsMask, accessXTimeoutOptionsValues, perKeyRepeat)
    ccall((:xcb_xkb_set_controls_checked, var"libxcb-xkb.so.1"), xcb_void_cookie_t, (Ptr{xcb_connection_t}, xcb_xkb_device_spec_t, UInt8, UInt8, UInt8, UInt8, UInt16, UInt16, UInt16, UInt16, UInt8, UInt8, UInt16, UInt32, UInt32, UInt32, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, Int16, UInt16, UInt32, UInt32, UInt16, UInt16, Ptr{UInt8}), c, deviceSpec, affectInternalRealMods, internalRealMods, affectIgnoreLockRealMods, ignoreLockRealMods, affectInternalVirtualMods, internalVirtualMods, affectIgnoreLockVirtualMods, ignoreLockVirtualMods, mouseKeysDfltBtn, groupsWrap, accessXOptions, affectEnabledControls, enabledControls, changeControls, repeatDelay, repeatInterval, slowKeysDelay, debounceDelay, mouseKeysDelay, mouseKeysInterval, mouseKeysTimeToMax, mouseKeysMaxSpeed, mouseKeysCurve, accessXTimeout, accessXTimeoutMask, accessXTimeoutValues, accessXTimeoutOptionsMask, accessXTimeoutOptionsValues, perKeyRepeat)
end

function xcb_xkb_set_controls(c, deviceSpec, affectInternalRealMods, internalRealMods, affectIgnoreLockRealMods, ignoreLockRealMods, affectInternalVirtualMods, internalVirtualMods, affectIgnoreLockVirtualMods, ignoreLockVirtualMods, mouseKeysDfltBtn, groupsWrap, accessXOptions, affectEnabledControls, enabledControls, changeControls, repeatDelay, repeatInterval, slowKeysDelay, debounceDelay, mouseKeysDelay, mouseKeysInterval, mouseKeysTimeToMax, mouseKeysMaxSpeed, mouseKeysCurve, accessXTimeout, accessXTimeoutMask, accessXTimeoutValues, accessXTimeoutOptionsMask, accessXTimeoutOptionsValues, perKeyRepeat)
    ccall((:xcb_xkb_set_controls, var"libxcb-xkb.so.1"), xcb_void_cookie_t, (Ptr{xcb_connection_t}, xcb_xkb_device_spec_t, UInt8, UInt8, UInt8, UInt8, UInt16, UInt16, UInt16, UInt16, UInt8, UInt8, UInt16, UInt32, UInt32, UInt32, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, Int16, UInt16, UInt32, UInt32, UInt16, UInt16, Ptr{UInt8}), c, deviceSpec, affectInternalRealMods, internalRealMods, affectIgnoreLockRealMods, ignoreLockRealMods, affectInternalVirtualMods, internalVirtualMods, affectIgnoreLockVirtualMods, ignoreLockVirtualMods, mouseKeysDfltBtn, groupsWrap, accessXOptions, affectEnabledControls, enabledControls, changeControls, repeatDelay, repeatInterval, slowKeysDelay, debounceDelay, mouseKeysDelay, mouseKeysInterval, mouseKeysTimeToMax, mouseKeysMaxSpeed, mouseKeysCurve, accessXTimeout, accessXTimeoutMask, accessXTimeoutValues, accessXTimeoutOptionsMask, accessXTimeoutOptionsValues, perKeyRepeat)
end

function xcb_xkb_get_map_map_types_rtrn_length(R, S)
    ccall((:xcb_xkb_get_map_map_types_rtrn_length, var"libxcb-xkb.so.1"), Cint, (Ptr{xcb_xkb_get_map_reply_t}, Ptr{xcb_xkb_get_map_map_t}), R, S)
end

function xcb_xkb_get_map_map_types_rtrn_iterator(R, S)
    ccall((:xcb_xkb_get_map_map_types_rtrn_iterator, var"libxcb-xkb.so.1"), xcb_xkb_key_type_iterator_t, (Ptr{xcb_xkb_get_map_reply_t}, Ptr{xcb_xkb_get_map_map_t}), R, S)
end

function xcb_xkb_get_map_map_syms_rtrn_length(R, S)
    ccall((:xcb_xkb_get_map_map_syms_rtrn_length, var"libxcb-xkb.so.1"), Cint, (Ptr{xcb_xkb_get_map_reply_t}, Ptr{xcb_xkb_get_map_map_t}), R, S)
end

function xcb_xkb_get_map_map_syms_rtrn_iterator(R, S)
    ccall((:xcb_xkb_get_map_map_syms_rtrn_iterator, var"libxcb-xkb.so.1"), xcb_xkb_key_sym_map_iterator_t, (Ptr{xcb_xkb_get_map_reply_t}, Ptr{xcb_xkb_get_map_map_t}), R, S)
end

function xcb_xkb_get_map_map_acts_rtrn_count(S)
    ccall((:xcb_xkb_get_map_map_acts_rtrn_count, var"libxcb-xkb.so.1"), Ptr{UInt8}, (Ptr{xcb_xkb_get_map_map_t},), S)
end

function xcb_xkb_get_map_map_acts_rtrn_count_length(R, S)
    ccall((:xcb_xkb_get_map_map_acts_rtrn_count_length, var"libxcb-xkb.so.1"), Cint, (Ptr{xcb_xkb_get_map_reply_t}, Ptr{xcb_xkb_get_map_map_t}), R, S)
end

function xcb_xkb_get_map_map_acts_rtrn_count_end(R, S)
    ccall((:xcb_xkb_get_map_map_acts_rtrn_count_end, var"libxcb-xkb.so.1"), xcb_generic_iterator_t, (Ptr{xcb_xkb_get_map_reply_t}, Ptr{xcb_xkb_get_map_map_t}), R, S)
end

function xcb_xkb_get_map_map_acts_rtrn_acts(S)
    ccall((:xcb_xkb_get_map_map_acts_rtrn_acts, var"libxcb-xkb.so.1"), Ptr{xcb_xkb_action_t}, (Ptr{xcb_xkb_get_map_map_t},), S)
end

function xcb_xkb_get_map_map_acts_rtrn_acts_length(R, S)
    ccall((:xcb_xkb_get_map_map_acts_rtrn_acts_length, var"libxcb-xkb.so.1"), Cint, (Ptr{xcb_xkb_get_map_reply_t}, Ptr{xcb_xkb_get_map_map_t}), R, S)
end

function xcb_xkb_get_map_map_acts_rtrn_acts_iterator(R, S)
    ccall((:xcb_xkb_get_map_map_acts_rtrn_acts_iterator, var"libxcb-xkb.so.1"), xcb_xkb_action_iterator_t, (Ptr{xcb_xkb_get_map_reply_t}, Ptr{xcb_xkb_get_map_map_t}), R, S)
end

function xcb_xkb_get_map_map_behaviors_rtrn(S)
    ccall((:xcb_xkb_get_map_map_behaviors_rtrn, var"libxcb-xkb.so.1"), Ptr{xcb_xkb_set_behavior_t}, (Ptr{xcb_xkb_get_map_map_t},), S)
end

function xcb_xkb_get_map_map_behaviors_rtrn_length(R, S)
    ccall((:xcb_xkb_get_map_map_behaviors_rtrn_length, var"libxcb-xkb.so.1"), Cint, (Ptr{xcb_xkb_get_map_reply_t}, Ptr{xcb_xkb_get_map_map_t}), R, S)
end

function xcb_xkb_get_map_map_behaviors_rtrn_iterator(R, S)
    ccall((:xcb_xkb_get_map_map_behaviors_rtrn_iterator, var"libxcb-xkb.so.1"), xcb_xkb_set_behavior_iterator_t, (Ptr{xcb_xkb_get_map_reply_t}, Ptr{xcb_xkb_get_map_map_t}), R, S)
end

function xcb_xkb_get_map_map_vmods_rtrn(S)
    ccall((:xcb_xkb_get_map_map_vmods_rtrn, var"libxcb-xkb.so.1"), Ptr{UInt8}, (Ptr{xcb_xkb_get_map_map_t},), S)
end

function xcb_xkb_get_map_map_vmods_rtrn_length(R, S)
    ccall((:xcb_xkb_get_map_map_vmods_rtrn_length, var"libxcb-xkb.so.1"), Cint, (Ptr{xcb_xkb_get_map_reply_t}, Ptr{xcb_xkb_get_map_map_t}), R, S)
end

function xcb_xkb_get_map_map_vmods_rtrn_end(R, S)
    ccall((:xcb_xkb_get_map_map_vmods_rtrn_end, var"libxcb-xkb.so.1"), xcb_generic_iterator_t, (Ptr{xcb_xkb_get_map_reply_t}, Ptr{xcb_xkb_get_map_map_t}), R, S)
end

function xcb_xkb_get_map_map_explicit_rtrn(S)
    ccall((:xcb_xkb_get_map_map_explicit_rtrn, var"libxcb-xkb.so.1"), Ptr{xcb_xkb_set_explicit_t}, (Ptr{xcb_xkb_get_map_map_t},), S)
end

function xcb_xkb_get_map_map_explicit_rtrn_length(R, S)
    ccall((:xcb_xkb_get_map_map_explicit_rtrn_length, var"libxcb-xkb.so.1"), Cint, (Ptr{xcb_xkb_get_map_reply_t}, Ptr{xcb_xkb_get_map_map_t}), R, S)
end

function xcb_xkb_get_map_map_explicit_rtrn_iterator(R, S)
    ccall((:xcb_xkb_get_map_map_explicit_rtrn_iterator, var"libxcb-xkb.so.1"), xcb_xkb_set_explicit_iterator_t, (Ptr{xcb_xkb_get_map_reply_t}, Ptr{xcb_xkb_get_map_map_t}), R, S)
end

function xcb_xkb_get_map_map_modmap_rtrn(S)
    ccall((:xcb_xkb_get_map_map_modmap_rtrn, var"libxcb-xkb.so.1"), Ptr{xcb_xkb_key_mod_map_t}, (Ptr{xcb_xkb_get_map_map_t},), S)
end

function xcb_xkb_get_map_map_modmap_rtrn_length(R, S)
    ccall((:xcb_xkb_get_map_map_modmap_rtrn_length, var"libxcb-xkb.so.1"), Cint, (Ptr{xcb_xkb_get_map_reply_t}, Ptr{xcb_xkb_get_map_map_t}), R, S)
end

function xcb_xkb_get_map_map_modmap_rtrn_iterator(R, S)
    ccall((:xcb_xkb_get_map_map_modmap_rtrn_iterator, var"libxcb-xkb.so.1"), xcb_xkb_key_mod_map_iterator_t, (Ptr{xcb_xkb_get_map_reply_t}, Ptr{xcb_xkb_get_map_map_t}), R, S)
end

function xcb_xkb_get_map_map_vmodmap_rtrn(S)
    ccall((:xcb_xkb_get_map_map_vmodmap_rtrn, var"libxcb-xkb.so.1"), Ptr{xcb_xkb_key_v_mod_map_t}, (Ptr{xcb_xkb_get_map_map_t},), S)
end

function xcb_xkb_get_map_map_vmodmap_rtrn_length(R, S)
    ccall((:xcb_xkb_get_map_map_vmodmap_rtrn_length, var"libxcb-xkb.so.1"), Cint, (Ptr{xcb_xkb_get_map_reply_t}, Ptr{xcb_xkb_get_map_map_t}), R, S)
end

function xcb_xkb_get_map_map_vmodmap_rtrn_iterator(R, S)
    ccall((:xcb_xkb_get_map_map_vmodmap_rtrn_iterator, var"libxcb-xkb.so.1"), xcb_xkb_key_v_mod_map_iterator_t, (Ptr{xcb_xkb_get_map_reply_t}, Ptr{xcb_xkb_get_map_map_t}), R, S)
end

function xcb_xkb_get_map_map_serialize(_buffer, nTypes, nKeySyms, nKeyActions, totalActions, totalKeyBehaviors, virtualMods, totalKeyExplicit, totalModMapKeys, totalVModMapKeys, present, _aux)
    ccall((:xcb_xkb_get_map_map_serialize, var"libxcb-xkb.so.1"), Cint, (Ptr{Ptr{Cvoid}}, UInt8, UInt8, UInt8, UInt16, UInt8, UInt16, UInt8, UInt8, UInt8, UInt16, Ptr{xcb_xkb_get_map_map_t}), _buffer, nTypes, nKeySyms, nKeyActions, totalActions, totalKeyBehaviors, virtualMods, totalKeyExplicit, totalModMapKeys, totalVModMapKeys, present, _aux)
end

function xcb_xkb_get_map_map_unpack(_buffer, nTypes, nKeySyms, nKeyActions, totalActions, totalKeyBehaviors, virtualMods, totalKeyExplicit, totalModMapKeys, totalVModMapKeys, present, _aux)
    ccall((:xcb_xkb_get_map_map_unpack, var"libxcb-xkb.so.1"), Cint, (Ptr{Cvoid}, UInt8, UInt8, UInt8, UInt16, UInt8, UInt16, UInt8, UInt8, UInt8, UInt16, Ptr{xcb_xkb_get_map_map_t}), _buffer, nTypes, nKeySyms, nKeyActions, totalActions, totalKeyBehaviors, virtualMods, totalKeyExplicit, totalModMapKeys, totalVModMapKeys, present, _aux)
end

function xcb_xkb_get_map_map_sizeof(_buffer, nTypes, nKeySyms, nKeyActions, totalActions, totalKeyBehaviors, virtualMods, totalKeyExplicit, totalModMapKeys, totalVModMapKeys, present)
    ccall((:xcb_xkb_get_map_map_sizeof, var"libxcb-xkb.so.1"), Cint, (Ptr{Cvoid}, UInt8, UInt8, UInt8, UInt16, UInt8, UInt16, UInt8, UInt8, UInt8, UInt16), _buffer, nTypes, nKeySyms, nKeyActions, totalActions, totalKeyBehaviors, virtualMods, totalKeyExplicit, totalModMapKeys, totalVModMapKeys, present)
end

function xcb_xkb_get_map_sizeof(_buffer)
    ccall((:xcb_xkb_get_map_sizeof, var"libxcb-xkb.so.1"), Cint, (Ptr{Cvoid},), _buffer)
end

function xcb_xkb_get_map(c, deviceSpec, full, partial, firstType, nTypes, firstKeySym, nKeySyms, firstKeyAction, nKeyActions, firstKeyBehavior, nKeyBehaviors, virtualMods, firstKeyExplicit, nKeyExplicit, firstModMapKey, nModMapKeys, firstVModMapKey, nVModMapKeys)
    ccall((:xcb_xkb_get_map, var"libxcb-xkb.so.1"), xcb_xkb_get_map_cookie_t, (Ptr{xcb_connection_t}, xcb_xkb_device_spec_t, UInt16, UInt16, UInt8, UInt8, xcb_keycode_t, UInt8, xcb_keycode_t, UInt8, xcb_keycode_t, UInt8, UInt16, xcb_keycode_t, UInt8, xcb_keycode_t, UInt8, xcb_keycode_t, UInt8), c, deviceSpec, full, partial, firstType, nTypes, firstKeySym, nKeySyms, firstKeyAction, nKeyActions, firstKeyBehavior, nKeyBehaviors, virtualMods, firstKeyExplicit, nKeyExplicit, firstModMapKey, nModMapKeys, firstVModMapKey, nVModMapKeys)
end

function xcb_xkb_get_map_unchecked(c, deviceSpec, full, partial, firstType, nTypes, firstKeySym, nKeySyms, firstKeyAction, nKeyActions, firstKeyBehavior, nKeyBehaviors, virtualMods, firstKeyExplicit, nKeyExplicit, firstModMapKey, nModMapKeys, firstVModMapKey, nVModMapKeys)
    ccall((:xcb_xkb_get_map_unchecked, var"libxcb-xkb.so.1"), xcb_xkb_get_map_cookie_t, (Ptr{xcb_connection_t}, xcb_xkb_device_spec_t, UInt16, UInt16, UInt8, UInt8, xcb_keycode_t, UInt8, xcb_keycode_t, UInt8, xcb_keycode_t, UInt8, UInt16, xcb_keycode_t, UInt8, xcb_keycode_t, UInt8, xcb_keycode_t, UInt8), c, deviceSpec, full, partial, firstType, nTypes, firstKeySym, nKeySyms, firstKeyAction, nKeyActions, firstKeyBehavior, nKeyBehaviors, virtualMods, firstKeyExplicit, nKeyExplicit, firstModMapKey, nModMapKeys, firstVModMapKey, nVModMapKeys)
end

function xcb_xkb_get_map_map(R)
    ccall((:xcb_xkb_get_map_map, var"libxcb-xkb.so.1"), Ptr{Cvoid}, (Ptr{xcb_xkb_get_map_reply_t},), R)
end

function xcb_xkb_get_map_reply(c, cookie, e)
    ccall((:xcb_xkb_get_map_reply, var"libxcb-xkb.so.1"), Ptr{xcb_xkb_get_map_reply_t}, (Ptr{xcb_connection_t}, xcb_xkb_get_map_cookie_t, Ptr{Ptr{xcb_generic_error_t}}), c, cookie, e)
end

function xcb_xkb_set_map_values_types_length(R, S)
    ccall((:xcb_xkb_set_map_values_types_length, var"libxcb-xkb.so.1"), Cint, (Ptr{xcb_xkb_set_map_request_t}, Ptr{xcb_xkb_set_map_values_t}), R, S)
end

function xcb_xkb_set_map_values_types_iterator(R, S)
    ccall((:xcb_xkb_set_map_values_types_iterator, var"libxcb-xkb.so.1"), xcb_xkb_set_key_type_iterator_t, (Ptr{xcb_xkb_set_map_request_t}, Ptr{xcb_xkb_set_map_values_t}), R, S)
end

function xcb_xkb_set_map_values_syms_length(R, S)
    ccall((:xcb_xkb_set_map_values_syms_length, var"libxcb-xkb.so.1"), Cint, (Ptr{xcb_xkb_set_map_request_t}, Ptr{xcb_xkb_set_map_values_t}), R, S)
end

function xcb_xkb_set_map_values_syms_iterator(R, S)
    ccall((:xcb_xkb_set_map_values_syms_iterator, var"libxcb-xkb.so.1"), xcb_xkb_key_sym_map_iterator_t, (Ptr{xcb_xkb_set_map_request_t}, Ptr{xcb_xkb_set_map_values_t}), R, S)
end

function xcb_xkb_set_map_values_actions_count(S)
    ccall((:xcb_xkb_set_map_values_actions_count, var"libxcb-xkb.so.1"), Ptr{UInt8}, (Ptr{xcb_xkb_set_map_values_t},), S)
end

function xcb_xkb_set_map_values_actions_count_length(R, S)
    ccall((:xcb_xkb_set_map_values_actions_count_length, var"libxcb-xkb.so.1"), Cint, (Ptr{xcb_xkb_set_map_request_t}, Ptr{xcb_xkb_set_map_values_t}), R, S)
end

function xcb_xkb_set_map_values_actions_count_end(R, S)
    ccall((:xcb_xkb_set_map_values_actions_count_end, var"libxcb-xkb.so.1"), xcb_generic_iterator_t, (Ptr{xcb_xkb_set_map_request_t}, Ptr{xcb_xkb_set_map_values_t}), R, S)
end

function xcb_xkb_set_map_values_actions(S)
    ccall((:xcb_xkb_set_map_values_actions, var"libxcb-xkb.so.1"), Ptr{xcb_xkb_action_t}, (Ptr{xcb_xkb_set_map_values_t},), S)
end

function xcb_xkb_set_map_values_actions_length(R, S)
    ccall((:xcb_xkb_set_map_values_actions_length, var"libxcb-xkb.so.1"), Cint, (Ptr{xcb_xkb_set_map_request_t}, Ptr{xcb_xkb_set_map_values_t}), R, S)
end

function xcb_xkb_set_map_values_actions_iterator(R, S)
    ccall((:xcb_xkb_set_map_values_actions_iterator, var"libxcb-xkb.so.1"), xcb_xkb_action_iterator_t, (Ptr{xcb_xkb_set_map_request_t}, Ptr{xcb_xkb_set_map_values_t}), R, S)
end

function xcb_xkb_set_map_values_behaviors(S)
    ccall((:xcb_xkb_set_map_values_behaviors, var"libxcb-xkb.so.1"), Ptr{xcb_xkb_set_behavior_t}, (Ptr{xcb_xkb_set_map_values_t},), S)
end

function xcb_xkb_set_map_values_behaviors_length(R, S)
    ccall((:xcb_xkb_set_map_values_behaviors_length, var"libxcb-xkb.so.1"), Cint, (Ptr{xcb_xkb_set_map_request_t}, Ptr{xcb_xkb_set_map_values_t}), R, S)
end

function xcb_xkb_set_map_values_behaviors_iterator(R, S)
    ccall((:xcb_xkb_set_map_values_behaviors_iterator, var"libxcb-xkb.so.1"), xcb_xkb_set_behavior_iterator_t, (Ptr{xcb_xkb_set_map_request_t}, Ptr{xcb_xkb_set_map_values_t}), R, S)
end

function xcb_xkb_set_map_values_vmods(S)
    ccall((:xcb_xkb_set_map_values_vmods, var"libxcb-xkb.so.1"), Ptr{UInt8}, (Ptr{xcb_xkb_set_map_values_t},), S)
end

function xcb_xkb_set_map_values_vmods_length(R, S)
    ccall((:xcb_xkb_set_map_values_vmods_length, var"libxcb-xkb.so.1"), Cint, (Ptr{xcb_xkb_set_map_request_t}, Ptr{xcb_xkb_set_map_values_t}), R, S)
end

function xcb_xkb_set_map_values_vmods_end(R, S)
    ccall((:xcb_xkb_set_map_values_vmods_end, var"libxcb-xkb.so.1"), xcb_generic_iterator_t, (Ptr{xcb_xkb_set_map_request_t}, Ptr{xcb_xkb_set_map_values_t}), R, S)
end

function xcb_xkb_set_map_values_explicit(S)
    ccall((:xcb_xkb_set_map_values_explicit, var"libxcb-xkb.so.1"), Ptr{xcb_xkb_set_explicit_t}, (Ptr{xcb_xkb_set_map_values_t},), S)
end

function xcb_xkb_set_map_values_explicit_length(R, S)
    ccall((:xcb_xkb_set_map_values_explicit_length, var"libxcb-xkb.so.1"), Cint, (Ptr{xcb_xkb_set_map_request_t}, Ptr{xcb_xkb_set_map_values_t}), R, S)
end

function xcb_xkb_set_map_values_explicit_iterator(R, S)
    ccall((:xcb_xkb_set_map_values_explicit_iterator, var"libxcb-xkb.so.1"), xcb_xkb_set_explicit_iterator_t, (Ptr{xcb_xkb_set_map_request_t}, Ptr{xcb_xkb_set_map_values_t}), R, S)
end

function xcb_xkb_set_map_values_modmap(S)
    ccall((:xcb_xkb_set_map_values_modmap, var"libxcb-xkb.so.1"), Ptr{xcb_xkb_key_mod_map_t}, (Ptr{xcb_xkb_set_map_values_t},), S)
end

function xcb_xkb_set_map_values_modmap_length(R, S)
    ccall((:xcb_xkb_set_map_values_modmap_length, var"libxcb-xkb.so.1"), Cint, (Ptr{xcb_xkb_set_map_request_t}, Ptr{xcb_xkb_set_map_values_t}), R, S)
end

function xcb_xkb_set_map_values_modmap_iterator(R, S)
    ccall((:xcb_xkb_set_map_values_modmap_iterator, var"libxcb-xkb.so.1"), xcb_xkb_key_mod_map_iterator_t, (Ptr{xcb_xkb_set_map_request_t}, Ptr{xcb_xkb_set_map_values_t}), R, S)
end

function xcb_xkb_set_map_values_vmodmap(S)
    ccall((:xcb_xkb_set_map_values_vmodmap, var"libxcb-xkb.so.1"), Ptr{xcb_xkb_key_v_mod_map_t}, (Ptr{xcb_xkb_set_map_values_t},), S)
end

function xcb_xkb_set_map_values_vmodmap_length(R, S)
    ccall((:xcb_xkb_set_map_values_vmodmap_length, var"libxcb-xkb.so.1"), Cint, (Ptr{xcb_xkb_set_map_request_t}, Ptr{xcb_xkb_set_map_values_t}), R, S)
end

function xcb_xkb_set_map_values_vmodmap_iterator(R, S)
    ccall((:xcb_xkb_set_map_values_vmodmap_iterator, var"libxcb-xkb.so.1"), xcb_xkb_key_v_mod_map_iterator_t, (Ptr{xcb_xkb_set_map_request_t}, Ptr{xcb_xkb_set_map_values_t}), R, S)
end

function xcb_xkb_set_map_values_serialize(_buffer, nTypes, nKeySyms, nKeyActions, totalActions, totalKeyBehaviors, virtualMods, totalKeyExplicit, totalModMapKeys, totalVModMapKeys, present, _aux)
    ccall((:xcb_xkb_set_map_values_serialize, var"libxcb-xkb.so.1"), Cint, (Ptr{Ptr{Cvoid}}, UInt8, UInt8, UInt8, UInt16, UInt8, UInt16, UInt8, UInt8, UInt8, UInt16, Ptr{xcb_xkb_set_map_values_t}), _buffer, nTypes, nKeySyms, nKeyActions, totalActions, totalKeyBehaviors, virtualMods, totalKeyExplicit, totalModMapKeys, totalVModMapKeys, present, _aux)
end

function xcb_xkb_set_map_values_unpack(_buffer, nTypes, nKeySyms, nKeyActions, totalActions, totalKeyBehaviors, virtualMods, totalKeyExplicit, totalModMapKeys, totalVModMapKeys, present, _aux)
    ccall((:xcb_xkb_set_map_values_unpack, var"libxcb-xkb.so.1"), Cint, (Ptr{Cvoid}, UInt8, UInt8, UInt8, UInt16, UInt8, UInt16, UInt8, UInt8, UInt8, UInt16, Ptr{xcb_xkb_set_map_values_t}), _buffer, nTypes, nKeySyms, nKeyActions, totalActions, totalKeyBehaviors, virtualMods, totalKeyExplicit, totalModMapKeys, totalVModMapKeys, present, _aux)
end

function xcb_xkb_set_map_values_sizeof(_buffer, nTypes, nKeySyms, nKeyActions, totalActions, totalKeyBehaviors, virtualMods, totalKeyExplicit, totalModMapKeys, totalVModMapKeys, present)
    ccall((:xcb_xkb_set_map_values_sizeof, var"libxcb-xkb.so.1"), Cint, (Ptr{Cvoid}, UInt8, UInt8, UInt8, UInt16, UInt8, UInt16, UInt8, UInt8, UInt8, UInt16), _buffer, nTypes, nKeySyms, nKeyActions, totalActions, totalKeyBehaviors, virtualMods, totalKeyExplicit, totalModMapKeys, totalVModMapKeys, present)
end

function xcb_xkb_set_map_sizeof(_buffer)
    ccall((:xcb_xkb_set_map_sizeof, var"libxcb-xkb.so.1"), Cint, (Ptr{Cvoid},), _buffer)
end

function xcb_xkb_set_map_checked(c, deviceSpec, present, flags, minKeyCode, maxKeyCode, firstType, nTypes, firstKeySym, nKeySyms, totalSyms, firstKeyAction, nKeyActions, totalActions, firstKeyBehavior, nKeyBehaviors, totalKeyBehaviors, firstKeyExplicit, nKeyExplicit, totalKeyExplicit, firstModMapKey, nModMapKeys, totalModMapKeys, firstVModMapKey, nVModMapKeys, totalVModMapKeys, virtualMods, values)
    ccall((:xcb_xkb_set_map_checked, var"libxcb-xkb.so.1"), xcb_void_cookie_t, (Ptr{xcb_connection_t}, xcb_xkb_device_spec_t, UInt16, UInt16, xcb_keycode_t, xcb_keycode_t, UInt8, UInt8, xcb_keycode_t, UInt8, UInt16, xcb_keycode_t, UInt8, UInt16, xcb_keycode_t, UInt8, UInt8, xcb_keycode_t, UInt8, UInt8, xcb_keycode_t, UInt8, UInt8, xcb_keycode_t, UInt8, UInt8, UInt16, Ptr{Cvoid}), c, deviceSpec, present, flags, minKeyCode, maxKeyCode, firstType, nTypes, firstKeySym, nKeySyms, totalSyms, firstKeyAction, nKeyActions, totalActions, firstKeyBehavior, nKeyBehaviors, totalKeyBehaviors, firstKeyExplicit, nKeyExplicit, totalKeyExplicit, firstModMapKey, nModMapKeys, totalModMapKeys, firstVModMapKey, nVModMapKeys, totalVModMapKeys, virtualMods, values)
end

function xcb_xkb_set_map(c, deviceSpec, present, flags, minKeyCode, maxKeyCode, firstType, nTypes, firstKeySym, nKeySyms, totalSyms, firstKeyAction, nKeyActions, totalActions, firstKeyBehavior, nKeyBehaviors, totalKeyBehaviors, firstKeyExplicit, nKeyExplicit, totalKeyExplicit, firstModMapKey, nModMapKeys, totalModMapKeys, firstVModMapKey, nVModMapKeys, totalVModMapKeys, virtualMods, values)
    ccall((:xcb_xkb_set_map, var"libxcb-xkb.so.1"), xcb_void_cookie_t, (Ptr{xcb_connection_t}, xcb_xkb_device_spec_t, UInt16, UInt16, xcb_keycode_t, xcb_keycode_t, UInt8, UInt8, xcb_keycode_t, UInt8, UInt16, xcb_keycode_t, UInt8, UInt16, xcb_keycode_t, UInt8, UInt8, xcb_keycode_t, UInt8, UInt8, xcb_keycode_t, UInt8, UInt8, xcb_keycode_t, UInt8, UInt8, UInt16, Ptr{Cvoid}), c, deviceSpec, present, flags, minKeyCode, maxKeyCode, firstType, nTypes, firstKeySym, nKeySyms, totalSyms, firstKeyAction, nKeyActions, totalActions, firstKeyBehavior, nKeyBehaviors, totalKeyBehaviors, firstKeyExplicit, nKeyExplicit, totalKeyExplicit, firstModMapKey, nModMapKeys, totalModMapKeys, firstVModMapKey, nVModMapKeys, totalVModMapKeys, virtualMods, values)
end

function xcb_xkb_set_map_aux_checked(c, deviceSpec, present, flags, minKeyCode, maxKeyCode, firstType, nTypes, firstKeySym, nKeySyms, totalSyms, firstKeyAction, nKeyActions, totalActions, firstKeyBehavior, nKeyBehaviors, totalKeyBehaviors, firstKeyExplicit, nKeyExplicit, totalKeyExplicit, firstModMapKey, nModMapKeys, totalModMapKeys, firstVModMapKey, nVModMapKeys, totalVModMapKeys, virtualMods, values)
    ccall((:xcb_xkb_set_map_aux_checked, var"libxcb-xkb.so.1"), xcb_void_cookie_t, (Ptr{xcb_connection_t}, xcb_xkb_device_spec_t, UInt16, UInt16, xcb_keycode_t, xcb_keycode_t, UInt8, UInt8, xcb_keycode_t, UInt8, UInt16, xcb_keycode_t, UInt8, UInt16, xcb_keycode_t, UInt8, UInt8, xcb_keycode_t, UInt8, UInt8, xcb_keycode_t, UInt8, UInt8, xcb_keycode_t, UInt8, UInt8, UInt16, Ptr{xcb_xkb_set_map_values_t}), c, deviceSpec, present, flags, minKeyCode, maxKeyCode, firstType, nTypes, firstKeySym, nKeySyms, totalSyms, firstKeyAction, nKeyActions, totalActions, firstKeyBehavior, nKeyBehaviors, totalKeyBehaviors, firstKeyExplicit, nKeyExplicit, totalKeyExplicit, firstModMapKey, nModMapKeys, totalModMapKeys, firstVModMapKey, nVModMapKeys, totalVModMapKeys, virtualMods, values)
end

function xcb_xkb_set_map_aux(c, deviceSpec, present, flags, minKeyCode, maxKeyCode, firstType, nTypes, firstKeySym, nKeySyms, totalSyms, firstKeyAction, nKeyActions, totalActions, firstKeyBehavior, nKeyBehaviors, totalKeyBehaviors, firstKeyExplicit, nKeyExplicit, totalKeyExplicit, firstModMapKey, nModMapKeys, totalModMapKeys, firstVModMapKey, nVModMapKeys, totalVModMapKeys, virtualMods, values)
    ccall((:xcb_xkb_set_map_aux, var"libxcb-xkb.so.1"), xcb_void_cookie_t, (Ptr{xcb_connection_t}, xcb_xkb_device_spec_t, UInt16, UInt16, xcb_keycode_t, xcb_keycode_t, UInt8, UInt8, xcb_keycode_t, UInt8, UInt16, xcb_keycode_t, UInt8, UInt16, xcb_keycode_t, UInt8, UInt8, xcb_keycode_t, UInt8, UInt8, xcb_keycode_t, UInt8, UInt8, xcb_keycode_t, UInt8, UInt8, UInt16, Ptr{xcb_xkb_set_map_values_t}), c, deviceSpec, present, flags, minKeyCode, maxKeyCode, firstType, nTypes, firstKeySym, nKeySyms, totalSyms, firstKeyAction, nKeyActions, totalActions, firstKeyBehavior, nKeyBehaviors, totalKeyBehaviors, firstKeyExplicit, nKeyExplicit, totalKeyExplicit, firstModMapKey, nModMapKeys, totalModMapKeys, firstVModMapKey, nVModMapKeys, totalVModMapKeys, virtualMods, values)
end

function xcb_xkb_set_map_values(R)
    ccall((:xcb_xkb_set_map_values, var"libxcb-xkb.so.1"), Ptr{Cvoid}, (Ptr{xcb_xkb_set_map_request_t},), R)
end

function xcb_xkb_get_compat_map_sizeof(_buffer)
    ccall((:xcb_xkb_get_compat_map_sizeof, var"libxcb-xkb.so.1"), Cint, (Ptr{Cvoid},), _buffer)
end

function xcb_xkb_get_compat_map(c, deviceSpec, groups, getAllSI, firstSI, nSI)
    ccall((:xcb_xkb_get_compat_map, var"libxcb-xkb.so.1"), xcb_xkb_get_compat_map_cookie_t, (Ptr{xcb_connection_t}, xcb_xkb_device_spec_t, UInt8, UInt8, UInt16, UInt16), c, deviceSpec, groups, getAllSI, firstSI, nSI)
end

function xcb_xkb_get_compat_map_unchecked(c, deviceSpec, groups, getAllSI, firstSI, nSI)
    ccall((:xcb_xkb_get_compat_map_unchecked, var"libxcb-xkb.so.1"), xcb_xkb_get_compat_map_cookie_t, (Ptr{xcb_connection_t}, xcb_xkb_device_spec_t, UInt8, UInt8, UInt16, UInt16), c, deviceSpec, groups, getAllSI, firstSI, nSI)
end

function xcb_xkb_get_compat_map_si_rtrn(R)
    ccall((:xcb_xkb_get_compat_map_si_rtrn, var"libxcb-xkb.so.1"), Ptr{xcb_xkb_sym_interpret_t}, (Ptr{xcb_xkb_get_compat_map_reply_t},), R)
end

function xcb_xkb_get_compat_map_si_rtrn_length(R)
    ccall((:xcb_xkb_get_compat_map_si_rtrn_length, var"libxcb-xkb.so.1"), Cint, (Ptr{xcb_xkb_get_compat_map_reply_t},), R)
end

function xcb_xkb_get_compat_map_si_rtrn_iterator(R)
    ccall((:xcb_xkb_get_compat_map_si_rtrn_iterator, var"libxcb-xkb.so.1"), xcb_xkb_sym_interpret_iterator_t, (Ptr{xcb_xkb_get_compat_map_reply_t},), R)
end

function xcb_xkb_get_compat_map_group_rtrn(R)
    ccall((:xcb_xkb_get_compat_map_group_rtrn, var"libxcb-xkb.so.1"), Ptr{xcb_xkb_mod_def_t}, (Ptr{xcb_xkb_get_compat_map_reply_t},), R)
end

function xcb_xkb_get_compat_map_group_rtrn_length(R)
    ccall((:xcb_xkb_get_compat_map_group_rtrn_length, var"libxcb-xkb.so.1"), Cint, (Ptr{xcb_xkb_get_compat_map_reply_t},), R)
end

function xcb_xkb_get_compat_map_group_rtrn_iterator(R)
    ccall((:xcb_xkb_get_compat_map_group_rtrn_iterator, var"libxcb-xkb.so.1"), xcb_xkb_mod_def_iterator_t, (Ptr{xcb_xkb_get_compat_map_reply_t},), R)
end

function xcb_xkb_get_compat_map_reply(c, cookie, e)
    ccall((:xcb_xkb_get_compat_map_reply, var"libxcb-xkb.so.1"), Ptr{xcb_xkb_get_compat_map_reply_t}, (Ptr{xcb_connection_t}, xcb_xkb_get_compat_map_cookie_t, Ptr{Ptr{xcb_generic_error_t}}), c, cookie, e)
end

function xcb_xkb_set_compat_map_sizeof(_buffer)
    ccall((:xcb_xkb_set_compat_map_sizeof, var"libxcb-xkb.so.1"), Cint, (Ptr{Cvoid},), _buffer)
end

function xcb_xkb_set_compat_map_checked(c, deviceSpec, recomputeActions, truncateSI, groups, firstSI, nSI, si, groupMaps)
    ccall((:xcb_xkb_set_compat_map_checked, var"libxcb-xkb.so.1"), xcb_void_cookie_t, (Ptr{xcb_connection_t}, xcb_xkb_device_spec_t, UInt8, UInt8, UInt8, UInt16, UInt16, Ptr{xcb_xkb_sym_interpret_t}, Ptr{xcb_xkb_mod_def_t}), c, deviceSpec, recomputeActions, truncateSI, groups, firstSI, nSI, si, groupMaps)
end

function xcb_xkb_set_compat_map(c, deviceSpec, recomputeActions, truncateSI, groups, firstSI, nSI, si, groupMaps)
    ccall((:xcb_xkb_set_compat_map, var"libxcb-xkb.so.1"), xcb_void_cookie_t, (Ptr{xcb_connection_t}, xcb_xkb_device_spec_t, UInt8, UInt8, UInt8, UInt16, UInt16, Ptr{xcb_xkb_sym_interpret_t}, Ptr{xcb_xkb_mod_def_t}), c, deviceSpec, recomputeActions, truncateSI, groups, firstSI, nSI, si, groupMaps)
end

function xcb_xkb_set_compat_map_si(R)
    ccall((:xcb_xkb_set_compat_map_si, var"libxcb-xkb.so.1"), Ptr{xcb_xkb_sym_interpret_t}, (Ptr{xcb_xkb_set_compat_map_request_t},), R)
end

function xcb_xkb_set_compat_map_si_length(R)
    ccall((:xcb_xkb_set_compat_map_si_length, var"libxcb-xkb.so.1"), Cint, (Ptr{xcb_xkb_set_compat_map_request_t},), R)
end

function xcb_xkb_set_compat_map_si_iterator(R)
    ccall((:xcb_xkb_set_compat_map_si_iterator, var"libxcb-xkb.so.1"), xcb_xkb_sym_interpret_iterator_t, (Ptr{xcb_xkb_set_compat_map_request_t},), R)
end

function xcb_xkb_set_compat_map_group_maps(R)
    ccall((:xcb_xkb_set_compat_map_group_maps, var"libxcb-xkb.so.1"), Ptr{xcb_xkb_mod_def_t}, (Ptr{xcb_xkb_set_compat_map_request_t},), R)
end

function xcb_xkb_set_compat_map_group_maps_length(R)
    ccall((:xcb_xkb_set_compat_map_group_maps_length, var"libxcb-xkb.so.1"), Cint, (Ptr{xcb_xkb_set_compat_map_request_t},), R)
end

function xcb_xkb_set_compat_map_group_maps_iterator(R)
    ccall((:xcb_xkb_set_compat_map_group_maps_iterator, var"libxcb-xkb.so.1"), xcb_xkb_mod_def_iterator_t, (Ptr{xcb_xkb_set_compat_map_request_t},), R)
end

function xcb_xkb_get_indicator_state(c, deviceSpec)
    ccall((:xcb_xkb_get_indicator_state, var"libxcb-xkb.so.1"), xcb_xkb_get_indicator_state_cookie_t, (Ptr{xcb_connection_t}, xcb_xkb_device_spec_t), c, deviceSpec)
end

function xcb_xkb_get_indicator_state_unchecked(c, deviceSpec)
    ccall((:xcb_xkb_get_indicator_state_unchecked, var"libxcb-xkb.so.1"), xcb_xkb_get_indicator_state_cookie_t, (Ptr{xcb_connection_t}, xcb_xkb_device_spec_t), c, deviceSpec)
end

function xcb_xkb_get_indicator_state_reply(c, cookie, e)
    ccall((:xcb_xkb_get_indicator_state_reply, var"libxcb-xkb.so.1"), Ptr{xcb_xkb_get_indicator_state_reply_t}, (Ptr{xcb_connection_t}, xcb_xkb_get_indicator_state_cookie_t, Ptr{Ptr{xcb_generic_error_t}}), c, cookie, e)
end

function xcb_xkb_get_indicator_map_sizeof(_buffer)
    ccall((:xcb_xkb_get_indicator_map_sizeof, var"libxcb-xkb.so.1"), Cint, (Ptr{Cvoid},), _buffer)
end

function xcb_xkb_get_indicator_map(c, deviceSpec, which)
    ccall((:xcb_xkb_get_indicator_map, var"libxcb-xkb.so.1"), xcb_xkb_get_indicator_map_cookie_t, (Ptr{xcb_connection_t}, xcb_xkb_device_spec_t, UInt32), c, deviceSpec, which)
end

function xcb_xkb_get_indicator_map_unchecked(c, deviceSpec, which)
    ccall((:xcb_xkb_get_indicator_map_unchecked, var"libxcb-xkb.so.1"), xcb_xkb_get_indicator_map_cookie_t, (Ptr{xcb_connection_t}, xcb_xkb_device_spec_t, UInt32), c, deviceSpec, which)
end

function xcb_xkb_get_indicator_map_maps(R)
    ccall((:xcb_xkb_get_indicator_map_maps, var"libxcb-xkb.so.1"), Ptr{xcb_xkb_indicator_map_t}, (Ptr{xcb_xkb_get_indicator_map_reply_t},), R)
end

function xcb_xkb_get_indicator_map_maps_length(R)
    ccall((:xcb_xkb_get_indicator_map_maps_length, var"libxcb-xkb.so.1"), Cint, (Ptr{xcb_xkb_get_indicator_map_reply_t},), R)
end

function xcb_xkb_get_indicator_map_maps_iterator(R)
    ccall((:xcb_xkb_get_indicator_map_maps_iterator, var"libxcb-xkb.so.1"), xcb_xkb_indicator_map_iterator_t, (Ptr{xcb_xkb_get_indicator_map_reply_t},), R)
end

function xcb_xkb_get_indicator_map_reply(c, cookie, e)
    ccall((:xcb_xkb_get_indicator_map_reply, var"libxcb-xkb.so.1"), Ptr{xcb_xkb_get_indicator_map_reply_t}, (Ptr{xcb_connection_t}, xcb_xkb_get_indicator_map_cookie_t, Ptr{Ptr{xcb_generic_error_t}}), c, cookie, e)
end

function xcb_xkb_set_indicator_map_sizeof(_buffer)
    ccall((:xcb_xkb_set_indicator_map_sizeof, var"libxcb-xkb.so.1"), Cint, (Ptr{Cvoid},), _buffer)
end

function xcb_xkb_set_indicator_map_checked(c, deviceSpec, which, maps)
    ccall((:xcb_xkb_set_indicator_map_checked, var"libxcb-xkb.so.1"), xcb_void_cookie_t, (Ptr{xcb_connection_t}, xcb_xkb_device_spec_t, UInt32, Ptr{xcb_xkb_indicator_map_t}), c, deviceSpec, which, maps)
end

function xcb_xkb_set_indicator_map(c, deviceSpec, which, maps)
    ccall((:xcb_xkb_set_indicator_map, var"libxcb-xkb.so.1"), xcb_void_cookie_t, (Ptr{xcb_connection_t}, xcb_xkb_device_spec_t, UInt32, Ptr{xcb_xkb_indicator_map_t}), c, deviceSpec, which, maps)
end

function xcb_xkb_set_indicator_map_maps(R)
    ccall((:xcb_xkb_set_indicator_map_maps, var"libxcb-xkb.so.1"), Ptr{xcb_xkb_indicator_map_t}, (Ptr{xcb_xkb_set_indicator_map_request_t},), R)
end

function xcb_xkb_set_indicator_map_maps_length(R)
    ccall((:xcb_xkb_set_indicator_map_maps_length, var"libxcb-xkb.so.1"), Cint, (Ptr{xcb_xkb_set_indicator_map_request_t},), R)
end

function xcb_xkb_set_indicator_map_maps_iterator(R)
    ccall((:xcb_xkb_set_indicator_map_maps_iterator, var"libxcb-xkb.so.1"), xcb_xkb_indicator_map_iterator_t, (Ptr{xcb_xkb_set_indicator_map_request_t},), R)
end

function xcb_xkb_get_named_indicator(c, deviceSpec, ledClass, ledID, indicator)
    ccall((:xcb_xkb_get_named_indicator, var"libxcb-xkb.so.1"), xcb_xkb_get_named_indicator_cookie_t, (Ptr{xcb_connection_t}, xcb_xkb_device_spec_t, xcb_xkb_led_class_spec_t, xcb_xkb_id_spec_t, xcb_atom_t), c, deviceSpec, ledClass, ledID, indicator)
end

function xcb_xkb_get_named_indicator_unchecked(c, deviceSpec, ledClass, ledID, indicator)
    ccall((:xcb_xkb_get_named_indicator_unchecked, var"libxcb-xkb.so.1"), xcb_xkb_get_named_indicator_cookie_t, (Ptr{xcb_connection_t}, xcb_xkb_device_spec_t, xcb_xkb_led_class_spec_t, xcb_xkb_id_spec_t, xcb_atom_t), c, deviceSpec, ledClass, ledID, indicator)
end

function xcb_xkb_get_named_indicator_reply(c, cookie, e)
    ccall((:xcb_xkb_get_named_indicator_reply, var"libxcb-xkb.so.1"), Ptr{xcb_xkb_get_named_indicator_reply_t}, (Ptr{xcb_connection_t}, xcb_xkb_get_named_indicator_cookie_t, Ptr{Ptr{xcb_generic_error_t}}), c, cookie, e)
end

function xcb_xkb_set_named_indicator_checked(c, deviceSpec, ledClass, ledID, indicator, setState, on, setMap, createMap, map_flags, map_whichGroups, map_groups, map_whichMods, map_realMods, map_vmods, map_ctrls)
    ccall((:xcb_xkb_set_named_indicator_checked, var"libxcb-xkb.so.1"), xcb_void_cookie_t, (Ptr{xcb_connection_t}, xcb_xkb_device_spec_t, xcb_xkb_led_class_spec_t, xcb_xkb_id_spec_t, xcb_atom_t, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt16, UInt32), c, deviceSpec, ledClass, ledID, indicator, setState, on, setMap, createMap, map_flags, map_whichGroups, map_groups, map_whichMods, map_realMods, map_vmods, map_ctrls)
end

function xcb_xkb_set_named_indicator(c, deviceSpec, ledClass, ledID, indicator, setState, on, setMap, createMap, map_flags, map_whichGroups, map_groups, map_whichMods, map_realMods, map_vmods, map_ctrls)
    ccall((:xcb_xkb_set_named_indicator, var"libxcb-xkb.so.1"), xcb_void_cookie_t, (Ptr{xcb_connection_t}, xcb_xkb_device_spec_t, xcb_xkb_led_class_spec_t, xcb_xkb_id_spec_t, xcb_atom_t, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt16, UInt32), c, deviceSpec, ledClass, ledID, indicator, setState, on, setMap, createMap, map_flags, map_whichGroups, map_groups, map_whichMods, map_realMods, map_vmods, map_ctrls)
end

function xcb_xkb_get_names_value_list_type_names(S)
    ccall((:xcb_xkb_get_names_value_list_type_names, var"libxcb-xkb.so.1"), Ptr{xcb_atom_t}, (Ptr{xcb_xkb_get_names_value_list_t},), S)
end

function xcb_xkb_get_names_value_list_type_names_length(R, S)
    ccall((:xcb_xkb_get_names_value_list_type_names_length, var"libxcb-xkb.so.1"), Cint, (Ptr{xcb_xkb_get_names_reply_t}, Ptr{xcb_xkb_get_names_value_list_t}), R, S)
end

function xcb_xkb_get_names_value_list_type_names_end(R, S)
    ccall((:xcb_xkb_get_names_value_list_type_names_end, var"libxcb-xkb.so.1"), xcb_generic_iterator_t, (Ptr{xcb_xkb_get_names_reply_t}, Ptr{xcb_xkb_get_names_value_list_t}), R, S)
end

function xcb_xkb_get_names_value_list_n_levels_per_type(S)
    ccall((:xcb_xkb_get_names_value_list_n_levels_per_type, var"libxcb-xkb.so.1"), Ptr{UInt8}, (Ptr{xcb_xkb_get_names_value_list_t},), S)
end

function xcb_xkb_get_names_value_list_n_levels_per_type_length(R, S)
    ccall((:xcb_xkb_get_names_value_list_n_levels_per_type_length, var"libxcb-xkb.so.1"), Cint, (Ptr{xcb_xkb_get_names_reply_t}, Ptr{xcb_xkb_get_names_value_list_t}), R, S)
end

function xcb_xkb_get_names_value_list_n_levels_per_type_end(R, S)
    ccall((:xcb_xkb_get_names_value_list_n_levels_per_type_end, var"libxcb-xkb.so.1"), xcb_generic_iterator_t, (Ptr{xcb_xkb_get_names_reply_t}, Ptr{xcb_xkb_get_names_value_list_t}), R, S)
end

function xcb_xkb_get_names_value_list_kt_level_names(S)
    ccall((:xcb_xkb_get_names_value_list_kt_level_names, var"libxcb-xkb.so.1"), Ptr{xcb_atom_t}, (Ptr{xcb_xkb_get_names_value_list_t},), S)
end

function xcb_xkb_get_names_value_list_kt_level_names_length(R, S)
    ccall((:xcb_xkb_get_names_value_list_kt_level_names_length, var"libxcb-xkb.so.1"), Cint, (Ptr{xcb_xkb_get_names_reply_t}, Ptr{xcb_xkb_get_names_value_list_t}), R, S)
end

function xcb_xkb_get_names_value_list_kt_level_names_end(R, S)
    ccall((:xcb_xkb_get_names_value_list_kt_level_names_end, var"libxcb-xkb.so.1"), xcb_generic_iterator_t, (Ptr{xcb_xkb_get_names_reply_t}, Ptr{xcb_xkb_get_names_value_list_t}), R, S)
end

function xcb_xkb_get_names_value_list_indicator_names(S)
    ccall((:xcb_xkb_get_names_value_list_indicator_names, var"libxcb-xkb.so.1"), Ptr{xcb_atom_t}, (Ptr{xcb_xkb_get_names_value_list_t},), S)
end

function xcb_xkb_get_names_value_list_indicator_names_length(R, S)
    ccall((:xcb_xkb_get_names_value_list_indicator_names_length, var"libxcb-xkb.so.1"), Cint, (Ptr{xcb_xkb_get_names_reply_t}, Ptr{xcb_xkb_get_names_value_list_t}), R, S)
end

function xcb_xkb_get_names_value_list_indicator_names_end(R, S)
    ccall((:xcb_xkb_get_names_value_list_indicator_names_end, var"libxcb-xkb.so.1"), xcb_generic_iterator_t, (Ptr{xcb_xkb_get_names_reply_t}, Ptr{xcb_xkb_get_names_value_list_t}), R, S)
end

function xcb_xkb_get_names_value_list_virtual_mod_names(S)
    ccall((:xcb_xkb_get_names_value_list_virtual_mod_names, var"libxcb-xkb.so.1"), Ptr{xcb_atom_t}, (Ptr{xcb_xkb_get_names_value_list_t},), S)
end

function xcb_xkb_get_names_value_list_virtual_mod_names_length(R, S)
    ccall((:xcb_xkb_get_names_value_list_virtual_mod_names_length, var"libxcb-xkb.so.1"), Cint, (Ptr{xcb_xkb_get_names_reply_t}, Ptr{xcb_xkb_get_names_value_list_t}), R, S)
end

function xcb_xkb_get_names_value_list_virtual_mod_names_end(R, S)
    ccall((:xcb_xkb_get_names_value_list_virtual_mod_names_end, var"libxcb-xkb.so.1"), xcb_generic_iterator_t, (Ptr{xcb_xkb_get_names_reply_t}, Ptr{xcb_xkb_get_names_value_list_t}), R, S)
end

function xcb_xkb_get_names_value_list_groups(S)
    ccall((:xcb_xkb_get_names_value_list_groups, var"libxcb-xkb.so.1"), Ptr{xcb_atom_t}, (Ptr{xcb_xkb_get_names_value_list_t},), S)
end

function xcb_xkb_get_names_value_list_groups_length(R, S)
    ccall((:xcb_xkb_get_names_value_list_groups_length, var"libxcb-xkb.so.1"), Cint, (Ptr{xcb_xkb_get_names_reply_t}, Ptr{xcb_xkb_get_names_value_list_t}), R, S)
end

function xcb_xkb_get_names_value_list_groups_end(R, S)
    ccall((:xcb_xkb_get_names_value_list_groups_end, var"libxcb-xkb.so.1"), xcb_generic_iterator_t, (Ptr{xcb_xkb_get_names_reply_t}, Ptr{xcb_xkb_get_names_value_list_t}), R, S)
end

function xcb_xkb_get_names_value_list_key_names(S)
    ccall((:xcb_xkb_get_names_value_list_key_names, var"libxcb-xkb.so.1"), Ptr{xcb_xkb_key_name_t}, (Ptr{xcb_xkb_get_names_value_list_t},), S)
end

function xcb_xkb_get_names_value_list_key_names_length(R, S)
    ccall((:xcb_xkb_get_names_value_list_key_names_length, var"libxcb-xkb.so.1"), Cint, (Ptr{xcb_xkb_get_names_reply_t}, Ptr{xcb_xkb_get_names_value_list_t}), R, S)
end

function xcb_xkb_get_names_value_list_key_names_iterator(R, S)
    ccall((:xcb_xkb_get_names_value_list_key_names_iterator, var"libxcb-xkb.so.1"), xcb_xkb_key_name_iterator_t, (Ptr{xcb_xkb_get_names_reply_t}, Ptr{xcb_xkb_get_names_value_list_t}), R, S)
end

function xcb_xkb_get_names_value_list_key_aliases(S)
    ccall((:xcb_xkb_get_names_value_list_key_aliases, var"libxcb-xkb.so.1"), Ptr{xcb_xkb_key_alias_t}, (Ptr{xcb_xkb_get_names_value_list_t},), S)
end

function xcb_xkb_get_names_value_list_key_aliases_length(R, S)
    ccall((:xcb_xkb_get_names_value_list_key_aliases_length, var"libxcb-xkb.so.1"), Cint, (Ptr{xcb_xkb_get_names_reply_t}, Ptr{xcb_xkb_get_names_value_list_t}), R, S)
end

function xcb_xkb_get_names_value_list_key_aliases_iterator(R, S)
    ccall((:xcb_xkb_get_names_value_list_key_aliases_iterator, var"libxcb-xkb.so.1"), xcb_xkb_key_alias_iterator_t, (Ptr{xcb_xkb_get_names_reply_t}, Ptr{xcb_xkb_get_names_value_list_t}), R, S)
end

function xcb_xkb_get_names_value_list_radio_group_names(S)
    ccall((:xcb_xkb_get_names_value_list_radio_group_names, var"libxcb-xkb.so.1"), Ptr{xcb_atom_t}, (Ptr{xcb_xkb_get_names_value_list_t},), S)
end

function xcb_xkb_get_names_value_list_radio_group_names_length(R, S)
    ccall((:xcb_xkb_get_names_value_list_radio_group_names_length, var"libxcb-xkb.so.1"), Cint, (Ptr{xcb_xkb_get_names_reply_t}, Ptr{xcb_xkb_get_names_value_list_t}), R, S)
end

function xcb_xkb_get_names_value_list_radio_group_names_end(R, S)
    ccall((:xcb_xkb_get_names_value_list_radio_group_names_end, var"libxcb-xkb.so.1"), xcb_generic_iterator_t, (Ptr{xcb_xkb_get_names_reply_t}, Ptr{xcb_xkb_get_names_value_list_t}), R, S)
end

function xcb_xkb_get_names_value_list_serialize(_buffer, nTypes, indicators, virtualMods, groupNames, nKeys, nKeyAliases, nRadioGroups, which, _aux)
    ccall((:xcb_xkb_get_names_value_list_serialize, var"libxcb-xkb.so.1"), Cint, (Ptr{Ptr{Cvoid}}, UInt8, UInt32, UInt16, UInt8, UInt8, UInt8, UInt8, UInt32, Ptr{xcb_xkb_get_names_value_list_t}), _buffer, nTypes, indicators, virtualMods, groupNames, nKeys, nKeyAliases, nRadioGroups, which, _aux)
end

function xcb_xkb_get_names_value_list_unpack(_buffer, nTypes, indicators, virtualMods, groupNames, nKeys, nKeyAliases, nRadioGroups, which, _aux)
    ccall((:xcb_xkb_get_names_value_list_unpack, var"libxcb-xkb.so.1"), Cint, (Ptr{Cvoid}, UInt8, UInt32, UInt16, UInt8, UInt8, UInt8, UInt8, UInt32, Ptr{xcb_xkb_get_names_value_list_t}), _buffer, nTypes, indicators, virtualMods, groupNames, nKeys, nKeyAliases, nRadioGroups, which, _aux)
end

function xcb_xkb_get_names_value_list_sizeof(_buffer, nTypes, indicators, virtualMods, groupNames, nKeys, nKeyAliases, nRadioGroups, which)
    ccall((:xcb_xkb_get_names_value_list_sizeof, var"libxcb-xkb.so.1"), Cint, (Ptr{Cvoid}, UInt8, UInt32, UInt16, UInt8, UInt8, UInt8, UInt8, UInt32), _buffer, nTypes, indicators, virtualMods, groupNames, nKeys, nKeyAliases, nRadioGroups, which)
end

function xcb_xkb_get_names_sizeof(_buffer)
    ccall((:xcb_xkb_get_names_sizeof, var"libxcb-xkb.so.1"), Cint, (Ptr{Cvoid},), _buffer)
end

function xcb_xkb_get_names(c, deviceSpec, which)
    ccall((:xcb_xkb_get_names, var"libxcb-xkb.so.1"), xcb_xkb_get_names_cookie_t, (Ptr{xcb_connection_t}, xcb_xkb_device_spec_t, UInt32), c, deviceSpec, which)
end

function xcb_xkb_get_names_unchecked(c, deviceSpec, which)
    ccall((:xcb_xkb_get_names_unchecked, var"libxcb-xkb.so.1"), xcb_xkb_get_names_cookie_t, (Ptr{xcb_connection_t}, xcb_xkb_device_spec_t, UInt32), c, deviceSpec, which)
end

function xcb_xkb_get_names_value_list(R)
    ccall((:xcb_xkb_get_names_value_list, var"libxcb-xkb.so.1"), Ptr{Cvoid}, (Ptr{xcb_xkb_get_names_reply_t},), R)
end

function xcb_xkb_get_names_reply(c, cookie, e)
    ccall((:xcb_xkb_get_names_reply, var"libxcb-xkb.so.1"), Ptr{xcb_xkb_get_names_reply_t}, (Ptr{xcb_connection_t}, xcb_xkb_get_names_cookie_t, Ptr{Ptr{xcb_generic_error_t}}), c, cookie, e)
end

function xcb_xkb_set_names_values_type_names(S)
    ccall((:xcb_xkb_set_names_values_type_names, var"libxcb-xkb.so.1"), Ptr{xcb_atom_t}, (Ptr{xcb_xkb_set_names_values_t},), S)
end

function xcb_xkb_set_names_values_type_names_length(R, S)
    ccall((:xcb_xkb_set_names_values_type_names_length, var"libxcb-xkb.so.1"), Cint, (Ptr{xcb_xkb_set_names_request_t}, Ptr{xcb_xkb_set_names_values_t}), R, S)
end

function xcb_xkb_set_names_values_type_names_end(R, S)
    ccall((:xcb_xkb_set_names_values_type_names_end, var"libxcb-xkb.so.1"), xcb_generic_iterator_t, (Ptr{xcb_xkb_set_names_request_t}, Ptr{xcb_xkb_set_names_values_t}), R, S)
end

function xcb_xkb_set_names_values_n_levels_per_type(S)
    ccall((:xcb_xkb_set_names_values_n_levels_per_type, var"libxcb-xkb.so.1"), Ptr{UInt8}, (Ptr{xcb_xkb_set_names_values_t},), S)
end

function xcb_xkb_set_names_values_n_levels_per_type_length(R, S)
    ccall((:xcb_xkb_set_names_values_n_levels_per_type_length, var"libxcb-xkb.so.1"), Cint, (Ptr{xcb_xkb_set_names_request_t}, Ptr{xcb_xkb_set_names_values_t}), R, S)
end

function xcb_xkb_set_names_values_n_levels_per_type_end(R, S)
    ccall((:xcb_xkb_set_names_values_n_levels_per_type_end, var"libxcb-xkb.so.1"), xcb_generic_iterator_t, (Ptr{xcb_xkb_set_names_request_t}, Ptr{xcb_xkb_set_names_values_t}), R, S)
end

function xcb_xkb_set_names_values_kt_level_names(S)
    ccall((:xcb_xkb_set_names_values_kt_level_names, var"libxcb-xkb.so.1"), Ptr{xcb_atom_t}, (Ptr{xcb_xkb_set_names_values_t},), S)
end

function xcb_xkb_set_names_values_kt_level_names_length(R, S)
    ccall((:xcb_xkb_set_names_values_kt_level_names_length, var"libxcb-xkb.so.1"), Cint, (Ptr{xcb_xkb_set_names_request_t}, Ptr{xcb_xkb_set_names_values_t}), R, S)
end

function xcb_xkb_set_names_values_kt_level_names_end(R, S)
    ccall((:xcb_xkb_set_names_values_kt_level_names_end, var"libxcb-xkb.so.1"), xcb_generic_iterator_t, (Ptr{xcb_xkb_set_names_request_t}, Ptr{xcb_xkb_set_names_values_t}), R, S)
end

function xcb_xkb_set_names_values_indicator_names(S)
    ccall((:xcb_xkb_set_names_values_indicator_names, var"libxcb-xkb.so.1"), Ptr{xcb_atom_t}, (Ptr{xcb_xkb_set_names_values_t},), S)
end

function xcb_xkb_set_names_values_indicator_names_length(R, S)
    ccall((:xcb_xkb_set_names_values_indicator_names_length, var"libxcb-xkb.so.1"), Cint, (Ptr{xcb_xkb_set_names_request_t}, Ptr{xcb_xkb_set_names_values_t}), R, S)
end

function xcb_xkb_set_names_values_indicator_names_end(R, S)
    ccall((:xcb_xkb_set_names_values_indicator_names_end, var"libxcb-xkb.so.1"), xcb_generic_iterator_t, (Ptr{xcb_xkb_set_names_request_t}, Ptr{xcb_xkb_set_names_values_t}), R, S)
end

function xcb_xkb_set_names_values_virtual_mod_names(S)
    ccall((:xcb_xkb_set_names_values_virtual_mod_names, var"libxcb-xkb.so.1"), Ptr{xcb_atom_t}, (Ptr{xcb_xkb_set_names_values_t},), S)
end

function xcb_xkb_set_names_values_virtual_mod_names_length(R, S)
    ccall((:xcb_xkb_set_names_values_virtual_mod_names_length, var"libxcb-xkb.so.1"), Cint, (Ptr{xcb_xkb_set_names_request_t}, Ptr{xcb_xkb_set_names_values_t}), R, S)
end

function xcb_xkb_set_names_values_virtual_mod_names_end(R, S)
    ccall((:xcb_xkb_set_names_values_virtual_mod_names_end, var"libxcb-xkb.so.1"), xcb_generic_iterator_t, (Ptr{xcb_xkb_set_names_request_t}, Ptr{xcb_xkb_set_names_values_t}), R, S)
end

function xcb_xkb_set_names_values_groups(S)
    ccall((:xcb_xkb_set_names_values_groups, var"libxcb-xkb.so.1"), Ptr{xcb_atom_t}, (Ptr{xcb_xkb_set_names_values_t},), S)
end

function xcb_xkb_set_names_values_groups_length(R, S)
    ccall((:xcb_xkb_set_names_values_groups_length, var"libxcb-xkb.so.1"), Cint, (Ptr{xcb_xkb_set_names_request_t}, Ptr{xcb_xkb_set_names_values_t}), R, S)
end

function xcb_xkb_set_names_values_groups_end(R, S)
    ccall((:xcb_xkb_set_names_values_groups_end, var"libxcb-xkb.so.1"), xcb_generic_iterator_t, (Ptr{xcb_xkb_set_names_request_t}, Ptr{xcb_xkb_set_names_values_t}), R, S)
end

function xcb_xkb_set_names_values_key_names(S)
    ccall((:xcb_xkb_set_names_values_key_names, var"libxcb-xkb.so.1"), Ptr{xcb_xkb_key_name_t}, (Ptr{xcb_xkb_set_names_values_t},), S)
end

function xcb_xkb_set_names_values_key_names_length(R, S)
    ccall((:xcb_xkb_set_names_values_key_names_length, var"libxcb-xkb.so.1"), Cint, (Ptr{xcb_xkb_set_names_request_t}, Ptr{xcb_xkb_set_names_values_t}), R, S)
end

function xcb_xkb_set_names_values_key_names_iterator(R, S)
    ccall((:xcb_xkb_set_names_values_key_names_iterator, var"libxcb-xkb.so.1"), xcb_xkb_key_name_iterator_t, (Ptr{xcb_xkb_set_names_request_t}, Ptr{xcb_xkb_set_names_values_t}), R, S)
end

function xcb_xkb_set_names_values_key_aliases(S)
    ccall((:xcb_xkb_set_names_values_key_aliases, var"libxcb-xkb.so.1"), Ptr{xcb_xkb_key_alias_t}, (Ptr{xcb_xkb_set_names_values_t},), S)
end

function xcb_xkb_set_names_values_key_aliases_length(R, S)
    ccall((:xcb_xkb_set_names_values_key_aliases_length, var"libxcb-xkb.so.1"), Cint, (Ptr{xcb_xkb_set_names_request_t}, Ptr{xcb_xkb_set_names_values_t}), R, S)
end

function xcb_xkb_set_names_values_key_aliases_iterator(R, S)
    ccall((:xcb_xkb_set_names_values_key_aliases_iterator, var"libxcb-xkb.so.1"), xcb_xkb_key_alias_iterator_t, (Ptr{xcb_xkb_set_names_request_t}, Ptr{xcb_xkb_set_names_values_t}), R, S)
end

function xcb_xkb_set_names_values_radio_group_names(S)
    ccall((:xcb_xkb_set_names_values_radio_group_names, var"libxcb-xkb.so.1"), Ptr{xcb_atom_t}, (Ptr{xcb_xkb_set_names_values_t},), S)
end

function xcb_xkb_set_names_values_radio_group_names_length(R, S)
    ccall((:xcb_xkb_set_names_values_radio_group_names_length, var"libxcb-xkb.so.1"), Cint, (Ptr{xcb_xkb_set_names_request_t}, Ptr{xcb_xkb_set_names_values_t}), R, S)
end

function xcb_xkb_set_names_values_radio_group_names_end(R, S)
    ccall((:xcb_xkb_set_names_values_radio_group_names_end, var"libxcb-xkb.so.1"), xcb_generic_iterator_t, (Ptr{xcb_xkb_set_names_request_t}, Ptr{xcb_xkb_set_names_values_t}), R, S)
end

function xcb_xkb_set_names_values_serialize(_buffer, nTypes, indicators, virtualMods, groupNames, nKeys, nKeyAliases, nRadioGroups, which, _aux)
    ccall((:xcb_xkb_set_names_values_serialize, var"libxcb-xkb.so.1"), Cint, (Ptr{Ptr{Cvoid}}, UInt8, UInt32, UInt16, UInt8, UInt8, UInt8, UInt8, UInt32, Ptr{xcb_xkb_set_names_values_t}), _buffer, nTypes, indicators, virtualMods, groupNames, nKeys, nKeyAliases, nRadioGroups, which, _aux)
end

function xcb_xkb_set_names_values_unpack(_buffer, nTypes, indicators, virtualMods, groupNames, nKeys, nKeyAliases, nRadioGroups, which, _aux)
    ccall((:xcb_xkb_set_names_values_unpack, var"libxcb-xkb.so.1"), Cint, (Ptr{Cvoid}, UInt8, UInt32, UInt16, UInt8, UInt8, UInt8, UInt8, UInt32, Ptr{xcb_xkb_set_names_values_t}), _buffer, nTypes, indicators, virtualMods, groupNames, nKeys, nKeyAliases, nRadioGroups, which, _aux)
end

function xcb_xkb_set_names_values_sizeof(_buffer, nTypes, indicators, virtualMods, groupNames, nKeys, nKeyAliases, nRadioGroups, which)
    ccall((:xcb_xkb_set_names_values_sizeof, var"libxcb-xkb.so.1"), Cint, (Ptr{Cvoid}, UInt8, UInt32, UInt16, UInt8, UInt8, UInt8, UInt8, UInt32), _buffer, nTypes, indicators, virtualMods, groupNames, nKeys, nKeyAliases, nRadioGroups, which)
end

function xcb_xkb_set_names_sizeof(_buffer)
    ccall((:xcb_xkb_set_names_sizeof, var"libxcb-xkb.so.1"), Cint, (Ptr{Cvoid},), _buffer)
end

function xcb_xkb_set_names_checked(c, deviceSpec, virtualMods, which, firstType, nTypes, firstKTLevelt, nKTLevels, indicators, groupNames, nRadioGroups, firstKey, nKeys, nKeyAliases, totalKTLevelNames, values)
    ccall((:xcb_xkb_set_names_checked, var"libxcb-xkb.so.1"), xcb_void_cookie_t, (Ptr{xcb_connection_t}, xcb_xkb_device_spec_t, UInt16, UInt32, UInt8, UInt8, UInt8, UInt8, UInt32, UInt8, UInt8, xcb_keycode_t, UInt8, UInt8, UInt16, Ptr{Cvoid}), c, deviceSpec, virtualMods, which, firstType, nTypes, firstKTLevelt, nKTLevels, indicators, groupNames, nRadioGroups, firstKey, nKeys, nKeyAliases, totalKTLevelNames, values)
end

function xcb_xkb_set_names(c, deviceSpec, virtualMods, which, firstType, nTypes, firstKTLevelt, nKTLevels, indicators, groupNames, nRadioGroups, firstKey, nKeys, nKeyAliases, totalKTLevelNames, values)
    ccall((:xcb_xkb_set_names, var"libxcb-xkb.so.1"), xcb_void_cookie_t, (Ptr{xcb_connection_t}, xcb_xkb_device_spec_t, UInt16, UInt32, UInt8, UInt8, UInt8, UInt8, UInt32, UInt8, UInt8, xcb_keycode_t, UInt8, UInt8, UInt16, Ptr{Cvoid}), c, deviceSpec, virtualMods, which, firstType, nTypes, firstKTLevelt, nKTLevels, indicators, groupNames, nRadioGroups, firstKey, nKeys, nKeyAliases, totalKTLevelNames, values)
end

function xcb_xkb_set_names_aux_checked(c, deviceSpec, virtualMods, which, firstType, nTypes, firstKTLevelt, nKTLevels, indicators, groupNames, nRadioGroups, firstKey, nKeys, nKeyAliases, totalKTLevelNames, values)
    ccall((:xcb_xkb_set_names_aux_checked, var"libxcb-xkb.so.1"), xcb_void_cookie_t, (Ptr{xcb_connection_t}, xcb_xkb_device_spec_t, UInt16, UInt32, UInt8, UInt8, UInt8, UInt8, UInt32, UInt8, UInt8, xcb_keycode_t, UInt8, UInt8, UInt16, Ptr{xcb_xkb_set_names_values_t}), c, deviceSpec, virtualMods, which, firstType, nTypes, firstKTLevelt, nKTLevels, indicators, groupNames, nRadioGroups, firstKey, nKeys, nKeyAliases, totalKTLevelNames, values)
end

function xcb_xkb_set_names_aux(c, deviceSpec, virtualMods, which, firstType, nTypes, firstKTLevelt, nKTLevels, indicators, groupNames, nRadioGroups, firstKey, nKeys, nKeyAliases, totalKTLevelNames, values)
    ccall((:xcb_xkb_set_names_aux, var"libxcb-xkb.so.1"), xcb_void_cookie_t, (Ptr{xcb_connection_t}, xcb_xkb_device_spec_t, UInt16, UInt32, UInt8, UInt8, UInt8, UInt8, UInt32, UInt8, UInt8, xcb_keycode_t, UInt8, UInt8, UInt16, Ptr{xcb_xkb_set_names_values_t}), c, deviceSpec, virtualMods, which, firstType, nTypes, firstKTLevelt, nKTLevels, indicators, groupNames, nRadioGroups, firstKey, nKeys, nKeyAliases, totalKTLevelNames, values)
end

function xcb_xkb_set_names_values(R)
    ccall((:xcb_xkb_set_names_values, var"libxcb-xkb.so.1"), Ptr{Cvoid}, (Ptr{xcb_xkb_set_names_request_t},), R)
end

function xcb_xkb_per_client_flags(c, deviceSpec, change, value, ctrlsToChange, autoCtrls, autoCtrlsValues)
    ccall((:xcb_xkb_per_client_flags, var"libxcb-xkb.so.1"), xcb_xkb_per_client_flags_cookie_t, (Ptr{xcb_connection_t}, xcb_xkb_device_spec_t, UInt32, UInt32, UInt32, UInt32, UInt32), c, deviceSpec, change, value, ctrlsToChange, autoCtrls, autoCtrlsValues)
end

function xcb_xkb_per_client_flags_unchecked(c, deviceSpec, change, value, ctrlsToChange, autoCtrls, autoCtrlsValues)
    ccall((:xcb_xkb_per_client_flags_unchecked, var"libxcb-xkb.so.1"), xcb_xkb_per_client_flags_cookie_t, (Ptr{xcb_connection_t}, xcb_xkb_device_spec_t, UInt32, UInt32, UInt32, UInt32, UInt32), c, deviceSpec, change, value, ctrlsToChange, autoCtrls, autoCtrlsValues)
end

function xcb_xkb_per_client_flags_reply(c, cookie, e)
    ccall((:xcb_xkb_per_client_flags_reply, var"libxcb-xkb.so.1"), Ptr{xcb_xkb_per_client_flags_reply_t}, (Ptr{xcb_connection_t}, xcb_xkb_per_client_flags_cookie_t, Ptr{Ptr{xcb_generic_error_t}}), c, cookie, e)
end

function xcb_xkb_list_components_sizeof(_buffer)
    ccall((:xcb_xkb_list_components_sizeof, var"libxcb-xkb.so.1"), Cint, (Ptr{Cvoid},), _buffer)
end

function xcb_xkb_list_components(c, deviceSpec, maxNames)
    ccall((:xcb_xkb_list_components, var"libxcb-xkb.so.1"), xcb_xkb_list_components_cookie_t, (Ptr{xcb_connection_t}, xcb_xkb_device_spec_t, UInt16), c, deviceSpec, maxNames)
end

function xcb_xkb_list_components_unchecked(c, deviceSpec, maxNames)
    ccall((:xcb_xkb_list_components_unchecked, var"libxcb-xkb.so.1"), xcb_xkb_list_components_cookie_t, (Ptr{xcb_connection_t}, xcb_xkb_device_spec_t, UInt16), c, deviceSpec, maxNames)
end

function xcb_xkb_list_components_keymaps_length(R)
    ccall((:xcb_xkb_list_components_keymaps_length, var"libxcb-xkb.so.1"), Cint, (Ptr{xcb_xkb_list_components_reply_t},), R)
end

function xcb_xkb_list_components_keymaps_iterator(R)
    ccall((:xcb_xkb_list_components_keymaps_iterator, var"libxcb-xkb.so.1"), xcb_xkb_listing_iterator_t, (Ptr{xcb_xkb_list_components_reply_t},), R)
end

function xcb_xkb_list_components_keycodes_length(R)
    ccall((:xcb_xkb_list_components_keycodes_length, var"libxcb-xkb.so.1"), Cint, (Ptr{xcb_xkb_list_components_reply_t},), R)
end

function xcb_xkb_list_components_keycodes_iterator(R)
    ccall((:xcb_xkb_list_components_keycodes_iterator, var"libxcb-xkb.so.1"), xcb_xkb_listing_iterator_t, (Ptr{xcb_xkb_list_components_reply_t},), R)
end

function xcb_xkb_list_components_types_length(R)
    ccall((:xcb_xkb_list_components_types_length, var"libxcb-xkb.so.1"), Cint, (Ptr{xcb_xkb_list_components_reply_t},), R)
end

function xcb_xkb_list_components_types_iterator(R)
    ccall((:xcb_xkb_list_components_types_iterator, var"libxcb-xkb.so.1"), xcb_xkb_listing_iterator_t, (Ptr{xcb_xkb_list_components_reply_t},), R)
end

function xcb_xkb_list_components_compat_maps_length(R)
    ccall((:xcb_xkb_list_components_compat_maps_length, var"libxcb-xkb.so.1"), Cint, (Ptr{xcb_xkb_list_components_reply_t},), R)
end

function xcb_xkb_list_components_compat_maps_iterator(R)
    ccall((:xcb_xkb_list_components_compat_maps_iterator, var"libxcb-xkb.so.1"), xcb_xkb_listing_iterator_t, (Ptr{xcb_xkb_list_components_reply_t},), R)
end

function xcb_xkb_list_components_symbols_length(R)
    ccall((:xcb_xkb_list_components_symbols_length, var"libxcb-xkb.so.1"), Cint, (Ptr{xcb_xkb_list_components_reply_t},), R)
end

function xcb_xkb_list_components_symbols_iterator(R)
    ccall((:xcb_xkb_list_components_symbols_iterator, var"libxcb-xkb.so.1"), xcb_xkb_listing_iterator_t, (Ptr{xcb_xkb_list_components_reply_t},), R)
end

function xcb_xkb_list_components_geometries_length(R)
    ccall((:xcb_xkb_list_components_geometries_length, var"libxcb-xkb.so.1"), Cint, (Ptr{xcb_xkb_list_components_reply_t},), R)
end

function xcb_xkb_list_components_geometries_iterator(R)
    ccall((:xcb_xkb_list_components_geometries_iterator, var"libxcb-xkb.so.1"), xcb_xkb_listing_iterator_t, (Ptr{xcb_xkb_list_components_reply_t},), R)
end

function xcb_xkb_list_components_reply(c, cookie, e)
    ccall((:xcb_xkb_list_components_reply, var"libxcb-xkb.so.1"), Ptr{xcb_xkb_list_components_reply_t}, (Ptr{xcb_connection_t}, xcb_xkb_list_components_cookie_t, Ptr{Ptr{xcb_generic_error_t}}), c, cookie, e)
end

function xcb_xkb_get_kbd_by_name_replies_types_map_types_rtrn_length(R, S)
    ccall((:xcb_xkb_get_kbd_by_name_replies_types_map_types_rtrn_length, var"libxcb-xkb.so.1"), Cint, (Ptr{xcb_xkb_get_kbd_by_name_reply_t}, Ptr{xcb_xkb_get_kbd_by_name_replies_t}), R, S)
end

function xcb_xkb_get_kbd_by_name_replies_types_map_types_rtrn_iterator(R, S)
    ccall((:xcb_xkb_get_kbd_by_name_replies_types_map_types_rtrn_iterator, var"libxcb-xkb.so.1"), xcb_xkb_key_type_iterator_t, (Ptr{xcb_xkb_get_kbd_by_name_reply_t}, Ptr{xcb_xkb_get_kbd_by_name_replies_t}), R, S)
end

function xcb_xkb_get_kbd_by_name_replies_types_map_syms_rtrn_length(R, S)
    ccall((:xcb_xkb_get_kbd_by_name_replies_types_map_syms_rtrn_length, var"libxcb-xkb.so.1"), Cint, (Ptr{xcb_xkb_get_kbd_by_name_reply_t}, Ptr{xcb_xkb_get_kbd_by_name_replies_t}), R, S)
end

function xcb_xkb_get_kbd_by_name_replies_types_map_syms_rtrn_iterator(R, S)
    ccall((:xcb_xkb_get_kbd_by_name_replies_types_map_syms_rtrn_iterator, var"libxcb-xkb.so.1"), xcb_xkb_key_sym_map_iterator_t, (Ptr{xcb_xkb_get_kbd_by_name_reply_t}, Ptr{xcb_xkb_get_kbd_by_name_replies_t}), R, S)
end

function xcb_xkb_get_kbd_by_name_replies_types_map_acts_rtrn_count(S)
    ccall((:xcb_xkb_get_kbd_by_name_replies_types_map_acts_rtrn_count, var"libxcb-xkb.so.1"), Ptr{UInt8}, (Ptr{xcb_xkb_get_kbd_by_name_replies_t},), S)
end

function xcb_xkb_get_kbd_by_name_replies_types_map_acts_rtrn_count_length(R, S)
    ccall((:xcb_xkb_get_kbd_by_name_replies_types_map_acts_rtrn_count_length, var"libxcb-xkb.so.1"), Cint, (Ptr{xcb_xkb_get_kbd_by_name_reply_t}, Ptr{xcb_xkb_get_kbd_by_name_replies_t}), R, S)
end

function xcb_xkb_get_kbd_by_name_replies_types_map_acts_rtrn_count_end(R, S)
    ccall((:xcb_xkb_get_kbd_by_name_replies_types_map_acts_rtrn_count_end, var"libxcb-xkb.so.1"), xcb_generic_iterator_t, (Ptr{xcb_xkb_get_kbd_by_name_reply_t}, Ptr{xcb_xkb_get_kbd_by_name_replies_t}), R, S)
end

function xcb_xkb_get_kbd_by_name_replies_types_map_acts_rtrn_acts(S)
    ccall((:xcb_xkb_get_kbd_by_name_replies_types_map_acts_rtrn_acts, var"libxcb-xkb.so.1"), Ptr{xcb_xkb_action_t}, (Ptr{xcb_xkb_get_kbd_by_name_replies_t},), S)
end

function xcb_xkb_get_kbd_by_name_replies_types_map_acts_rtrn_acts_length(R, S)
    ccall((:xcb_xkb_get_kbd_by_name_replies_types_map_acts_rtrn_acts_length, var"libxcb-xkb.so.1"), Cint, (Ptr{xcb_xkb_get_kbd_by_name_reply_t}, Ptr{xcb_xkb_get_kbd_by_name_replies_t}), R, S)
end

function xcb_xkb_get_kbd_by_name_replies_types_map_acts_rtrn_acts_iterator(R, S)
    ccall((:xcb_xkb_get_kbd_by_name_replies_types_map_acts_rtrn_acts_iterator, var"libxcb-xkb.so.1"), xcb_xkb_action_iterator_t, (Ptr{xcb_xkb_get_kbd_by_name_reply_t}, Ptr{xcb_xkb_get_kbd_by_name_replies_t}), R, S)
end

function xcb_xkb_get_kbd_by_name_replies_types_map_behaviors_rtrn(S)
    ccall((:xcb_xkb_get_kbd_by_name_replies_types_map_behaviors_rtrn, var"libxcb-xkb.so.1"), Ptr{xcb_xkb_set_behavior_t}, (Ptr{xcb_xkb_get_kbd_by_name_replies_t},), S)
end

function xcb_xkb_get_kbd_by_name_replies_types_map_behaviors_rtrn_length(R, S)
    ccall((:xcb_xkb_get_kbd_by_name_replies_types_map_behaviors_rtrn_length, var"libxcb-xkb.so.1"), Cint, (Ptr{xcb_xkb_get_kbd_by_name_reply_t}, Ptr{xcb_xkb_get_kbd_by_name_replies_t}), R, S)
end

function xcb_xkb_get_kbd_by_name_replies_types_map_behaviors_rtrn_iterator(R, S)
    ccall((:xcb_xkb_get_kbd_by_name_replies_types_map_behaviors_rtrn_iterator, var"libxcb-xkb.so.1"), xcb_xkb_set_behavior_iterator_t, (Ptr{xcb_xkb_get_kbd_by_name_reply_t}, Ptr{xcb_xkb_get_kbd_by_name_replies_t}), R, S)
end

function xcb_xkb_get_kbd_by_name_replies_types_map_vmods_rtrn(S)
    ccall((:xcb_xkb_get_kbd_by_name_replies_types_map_vmods_rtrn, var"libxcb-xkb.so.1"), Ptr{UInt8}, (Ptr{xcb_xkb_get_kbd_by_name_replies_t},), S)
end

function xcb_xkb_get_kbd_by_name_replies_types_map_vmods_rtrn_length(R, S)
    ccall((:xcb_xkb_get_kbd_by_name_replies_types_map_vmods_rtrn_length, var"libxcb-xkb.so.1"), Cint, (Ptr{xcb_xkb_get_kbd_by_name_reply_t}, Ptr{xcb_xkb_get_kbd_by_name_replies_t}), R, S)
end

function xcb_xkb_get_kbd_by_name_replies_types_map_vmods_rtrn_end(R, S)
    ccall((:xcb_xkb_get_kbd_by_name_replies_types_map_vmods_rtrn_end, var"libxcb-xkb.so.1"), xcb_generic_iterator_t, (Ptr{xcb_xkb_get_kbd_by_name_reply_t}, Ptr{xcb_xkb_get_kbd_by_name_replies_t}), R, S)
end

function xcb_xkb_get_kbd_by_name_replies_types_map_explicit_rtrn(S)
    ccall((:xcb_xkb_get_kbd_by_name_replies_types_map_explicit_rtrn, var"libxcb-xkb.so.1"), Ptr{xcb_xkb_set_explicit_t}, (Ptr{xcb_xkb_get_kbd_by_name_replies_t},), S)
end

function xcb_xkb_get_kbd_by_name_replies_types_map_explicit_rtrn_length(R, S)
    ccall((:xcb_xkb_get_kbd_by_name_replies_types_map_explicit_rtrn_length, var"libxcb-xkb.so.1"), Cint, (Ptr{xcb_xkb_get_kbd_by_name_reply_t}, Ptr{xcb_xkb_get_kbd_by_name_replies_t}), R, S)
end

function xcb_xkb_get_kbd_by_name_replies_types_map_explicit_rtrn_iterator(R, S)
    ccall((:xcb_xkb_get_kbd_by_name_replies_types_map_explicit_rtrn_iterator, var"libxcb-xkb.so.1"), xcb_xkb_set_explicit_iterator_t, (Ptr{xcb_xkb_get_kbd_by_name_reply_t}, Ptr{xcb_xkb_get_kbd_by_name_replies_t}), R, S)
end

function xcb_xkb_get_kbd_by_name_replies_types_map_modmap_rtrn(S)
    ccall((:xcb_xkb_get_kbd_by_name_replies_types_map_modmap_rtrn, var"libxcb-xkb.so.1"), Ptr{xcb_xkb_key_mod_map_t}, (Ptr{xcb_xkb_get_kbd_by_name_replies_t},), S)
end

function xcb_xkb_get_kbd_by_name_replies_types_map_modmap_rtrn_length(R, S)
    ccall((:xcb_xkb_get_kbd_by_name_replies_types_map_modmap_rtrn_length, var"libxcb-xkb.so.1"), Cint, (Ptr{xcb_xkb_get_kbd_by_name_reply_t}, Ptr{xcb_xkb_get_kbd_by_name_replies_t}), R, S)
end

function xcb_xkb_get_kbd_by_name_replies_types_map_modmap_rtrn_iterator(R, S)
    ccall((:xcb_xkb_get_kbd_by_name_replies_types_map_modmap_rtrn_iterator, var"libxcb-xkb.so.1"), xcb_xkb_key_mod_map_iterator_t, (Ptr{xcb_xkb_get_kbd_by_name_reply_t}, Ptr{xcb_xkb_get_kbd_by_name_replies_t}), R, S)
end

function xcb_xkb_get_kbd_by_name_replies_types_map_vmodmap_rtrn(S)
    ccall((:xcb_xkb_get_kbd_by_name_replies_types_map_vmodmap_rtrn, var"libxcb-xkb.so.1"), Ptr{xcb_xkb_key_v_mod_map_t}, (Ptr{xcb_xkb_get_kbd_by_name_replies_t},), S)
end

function xcb_xkb_get_kbd_by_name_replies_types_map_vmodmap_rtrn_length(R, S)
    ccall((:xcb_xkb_get_kbd_by_name_replies_types_map_vmodmap_rtrn_length, var"libxcb-xkb.so.1"), Cint, (Ptr{xcb_xkb_get_kbd_by_name_reply_t}, Ptr{xcb_xkb_get_kbd_by_name_replies_t}), R, S)
end

function xcb_xkb_get_kbd_by_name_replies_types_map_vmodmap_rtrn_iterator(R, S)
    ccall((:xcb_xkb_get_kbd_by_name_replies_types_map_vmodmap_rtrn_iterator, var"libxcb-xkb.so.1"), xcb_xkb_key_v_mod_map_iterator_t, (Ptr{xcb_xkb_get_kbd_by_name_reply_t}, Ptr{xcb_xkb_get_kbd_by_name_replies_t}), R, S)
end

function xcb_xkb_get_kbd_by_name_replies_types_map_serialize(_buffer, nTypes, nKeySyms, nKeyActions, totalActions, totalKeyBehaviors, virtualMods, totalKeyExplicit, totalModMapKeys, totalVModMapKeys, present, _aux)
    ccall((:xcb_xkb_get_kbd_by_name_replies_types_map_serialize, var"libxcb-xkb.so.1"), Cint, (Ptr{Ptr{Cvoid}}, UInt8, UInt8, UInt8, UInt16, UInt8, UInt16, UInt8, UInt8, UInt8, UInt16, Ptr{xcb_xkb_get_kbd_by_name_replies_types_map_t}), _buffer, nTypes, nKeySyms, nKeyActions, totalActions, totalKeyBehaviors, virtualMods, totalKeyExplicit, totalModMapKeys, totalVModMapKeys, present, _aux)
end

function xcb_xkb_get_kbd_by_name_replies_types_map_unpack(_buffer, nTypes, nKeySyms, nKeyActions, totalActions, totalKeyBehaviors, virtualMods, totalKeyExplicit, totalModMapKeys, totalVModMapKeys, present, _aux)
    ccall((:xcb_xkb_get_kbd_by_name_replies_types_map_unpack, var"libxcb-xkb.so.1"), Cint, (Ptr{Cvoid}, UInt8, UInt8, UInt8, UInt16, UInt8, UInt16, UInt8, UInt8, UInt8, UInt16, Ptr{xcb_xkb_get_kbd_by_name_replies_types_map_t}), _buffer, nTypes, nKeySyms, nKeyActions, totalActions, totalKeyBehaviors, virtualMods, totalKeyExplicit, totalModMapKeys, totalVModMapKeys, present, _aux)
end

function xcb_xkb_get_kbd_by_name_replies_types_map_sizeof(_buffer, nTypes, nKeySyms, nKeyActions, totalActions, totalKeyBehaviors, virtualMods, totalKeyExplicit, totalModMapKeys, totalVModMapKeys, present)
    ccall((:xcb_xkb_get_kbd_by_name_replies_types_map_sizeof, var"libxcb-xkb.so.1"), Cint, (Ptr{Cvoid}, UInt8, UInt8, UInt8, UInt16, UInt8, UInt16, UInt8, UInt8, UInt8, UInt16), _buffer, nTypes, nKeySyms, nKeyActions, totalActions, totalKeyBehaviors, virtualMods, totalKeyExplicit, totalModMapKeys, totalVModMapKeys, present)
end

function xcb_xkb_get_kbd_by_name_replies_key_names_value_list_type_names(S)
    ccall((:xcb_xkb_get_kbd_by_name_replies_key_names_value_list_type_names, var"libxcb-xkb.so.1"), Ptr{xcb_atom_t}, (Ptr{xcb_xkb_get_kbd_by_name_replies_t},), S)
end

function xcb_xkb_get_kbd_by_name_replies_key_names_value_list_type_names_length(R, S)
    ccall((:xcb_xkb_get_kbd_by_name_replies_key_names_value_list_type_names_length, var"libxcb-xkb.so.1"), Cint, (Ptr{xcb_xkb_get_kbd_by_name_reply_t}, Ptr{xcb_xkb_get_kbd_by_name_replies_t}), R, S)
end

function xcb_xkb_get_kbd_by_name_replies_key_names_value_list_type_names_end(R, S)
    ccall((:xcb_xkb_get_kbd_by_name_replies_key_names_value_list_type_names_end, var"libxcb-xkb.so.1"), xcb_generic_iterator_t, (Ptr{xcb_xkb_get_kbd_by_name_reply_t}, Ptr{xcb_xkb_get_kbd_by_name_replies_t}), R, S)
end

function xcb_xkb_get_kbd_by_name_replies_key_names_value_list_n_levels_per_type(S)
    ccall((:xcb_xkb_get_kbd_by_name_replies_key_names_value_list_n_levels_per_type, var"libxcb-xkb.so.1"), Ptr{UInt8}, (Ptr{xcb_xkb_get_kbd_by_name_replies_t},), S)
end

function xcb_xkb_get_kbd_by_name_replies_key_names_value_list_n_levels_per_type_length(R, S)
    ccall((:xcb_xkb_get_kbd_by_name_replies_key_names_value_list_n_levels_per_type_length, var"libxcb-xkb.so.1"), Cint, (Ptr{xcb_xkb_get_kbd_by_name_reply_t}, Ptr{xcb_xkb_get_kbd_by_name_replies_t}), R, S)
end

function xcb_xkb_get_kbd_by_name_replies_key_names_value_list_n_levels_per_type_end(R, S)
    ccall((:xcb_xkb_get_kbd_by_name_replies_key_names_value_list_n_levels_per_type_end, var"libxcb-xkb.so.1"), xcb_generic_iterator_t, (Ptr{xcb_xkb_get_kbd_by_name_reply_t}, Ptr{xcb_xkb_get_kbd_by_name_replies_t}), R, S)
end

function xcb_xkb_get_kbd_by_name_replies_key_names_value_list_kt_level_names(S)
    ccall((:xcb_xkb_get_kbd_by_name_replies_key_names_value_list_kt_level_names, var"libxcb-xkb.so.1"), Ptr{xcb_atom_t}, (Ptr{xcb_xkb_get_kbd_by_name_replies_t},), S)
end

function xcb_xkb_get_kbd_by_name_replies_key_names_value_list_kt_level_names_length(R, S)
    ccall((:xcb_xkb_get_kbd_by_name_replies_key_names_value_list_kt_level_names_length, var"libxcb-xkb.so.1"), Cint, (Ptr{xcb_xkb_get_kbd_by_name_reply_t}, Ptr{xcb_xkb_get_kbd_by_name_replies_t}), R, S)
end

function xcb_xkb_get_kbd_by_name_replies_key_names_value_list_kt_level_names_end(R, S)
    ccall((:xcb_xkb_get_kbd_by_name_replies_key_names_value_list_kt_level_names_end, var"libxcb-xkb.so.1"), xcb_generic_iterator_t, (Ptr{xcb_xkb_get_kbd_by_name_reply_t}, Ptr{xcb_xkb_get_kbd_by_name_replies_t}), R, S)
end

function xcb_xkb_get_kbd_by_name_replies_key_names_value_list_indicator_names(S)
    ccall((:xcb_xkb_get_kbd_by_name_replies_key_names_value_list_indicator_names, var"libxcb-xkb.so.1"), Ptr{xcb_atom_t}, (Ptr{xcb_xkb_get_kbd_by_name_replies_t},), S)
end

function xcb_xkb_get_kbd_by_name_replies_key_names_value_list_indicator_names_length(R, S)
    ccall((:xcb_xkb_get_kbd_by_name_replies_key_names_value_list_indicator_names_length, var"libxcb-xkb.so.1"), Cint, (Ptr{xcb_xkb_get_kbd_by_name_reply_t}, Ptr{xcb_xkb_get_kbd_by_name_replies_t}), R, S)
end

function xcb_xkb_get_kbd_by_name_replies_key_names_value_list_indicator_names_end(R, S)
    ccall((:xcb_xkb_get_kbd_by_name_replies_key_names_value_list_indicator_names_end, var"libxcb-xkb.so.1"), xcb_generic_iterator_t, (Ptr{xcb_xkb_get_kbd_by_name_reply_t}, Ptr{xcb_xkb_get_kbd_by_name_replies_t}), R, S)
end

function xcb_xkb_get_kbd_by_name_replies_key_names_value_list_virtual_mod_names(S)
    ccall((:xcb_xkb_get_kbd_by_name_replies_key_names_value_list_virtual_mod_names, var"libxcb-xkb.so.1"), Ptr{xcb_atom_t}, (Ptr{xcb_xkb_get_kbd_by_name_replies_t},), S)
end

function xcb_xkb_get_kbd_by_name_replies_key_names_value_list_virtual_mod_names_length(R, S)
    ccall((:xcb_xkb_get_kbd_by_name_replies_key_names_value_list_virtual_mod_names_length, var"libxcb-xkb.so.1"), Cint, (Ptr{xcb_xkb_get_kbd_by_name_reply_t}, Ptr{xcb_xkb_get_kbd_by_name_replies_t}), R, S)
end

function xcb_xkb_get_kbd_by_name_replies_key_names_value_list_virtual_mod_names_end(R, S)
    ccall((:xcb_xkb_get_kbd_by_name_replies_key_names_value_list_virtual_mod_names_end, var"libxcb-xkb.so.1"), xcb_generic_iterator_t, (Ptr{xcb_xkb_get_kbd_by_name_reply_t}, Ptr{xcb_xkb_get_kbd_by_name_replies_t}), R, S)
end

function xcb_xkb_get_kbd_by_name_replies_key_names_value_list_groups(S)
    ccall((:xcb_xkb_get_kbd_by_name_replies_key_names_value_list_groups, var"libxcb-xkb.so.1"), Ptr{xcb_atom_t}, (Ptr{xcb_xkb_get_kbd_by_name_replies_t},), S)
end

function xcb_xkb_get_kbd_by_name_replies_key_names_value_list_groups_length(R, S)
    ccall((:xcb_xkb_get_kbd_by_name_replies_key_names_value_list_groups_length, var"libxcb-xkb.so.1"), Cint, (Ptr{xcb_xkb_get_kbd_by_name_reply_t}, Ptr{xcb_xkb_get_kbd_by_name_replies_t}), R, S)
end

function xcb_xkb_get_kbd_by_name_replies_key_names_value_list_groups_end(R, S)
    ccall((:xcb_xkb_get_kbd_by_name_replies_key_names_value_list_groups_end, var"libxcb-xkb.so.1"), xcb_generic_iterator_t, (Ptr{xcb_xkb_get_kbd_by_name_reply_t}, Ptr{xcb_xkb_get_kbd_by_name_replies_t}), R, S)
end

function xcb_xkb_get_kbd_by_name_replies_key_names_value_list_key_names(S)
    ccall((:xcb_xkb_get_kbd_by_name_replies_key_names_value_list_key_names, var"libxcb-xkb.so.1"), Ptr{xcb_xkb_key_name_t}, (Ptr{xcb_xkb_get_kbd_by_name_replies_t},), S)
end

function xcb_xkb_get_kbd_by_name_replies_key_names_value_list_key_names_length(R, S)
    ccall((:xcb_xkb_get_kbd_by_name_replies_key_names_value_list_key_names_length, var"libxcb-xkb.so.1"), Cint, (Ptr{xcb_xkb_get_kbd_by_name_reply_t}, Ptr{xcb_xkb_get_kbd_by_name_replies_t}), R, S)
end

function xcb_xkb_get_kbd_by_name_replies_key_names_value_list_key_names_iterator(R, S)
    ccall((:xcb_xkb_get_kbd_by_name_replies_key_names_value_list_key_names_iterator, var"libxcb-xkb.so.1"), xcb_xkb_key_name_iterator_t, (Ptr{xcb_xkb_get_kbd_by_name_reply_t}, Ptr{xcb_xkb_get_kbd_by_name_replies_t}), R, S)
end

function xcb_xkb_get_kbd_by_name_replies_key_names_value_list_key_aliases(S)
    ccall((:xcb_xkb_get_kbd_by_name_replies_key_names_value_list_key_aliases, var"libxcb-xkb.so.1"), Ptr{xcb_xkb_key_alias_t}, (Ptr{xcb_xkb_get_kbd_by_name_replies_t},), S)
end

function xcb_xkb_get_kbd_by_name_replies_key_names_value_list_key_aliases_length(R, S)
    ccall((:xcb_xkb_get_kbd_by_name_replies_key_names_value_list_key_aliases_length, var"libxcb-xkb.so.1"), Cint, (Ptr{xcb_xkb_get_kbd_by_name_reply_t}, Ptr{xcb_xkb_get_kbd_by_name_replies_t}), R, S)
end

function xcb_xkb_get_kbd_by_name_replies_key_names_value_list_key_aliases_iterator(R, S)
    ccall((:xcb_xkb_get_kbd_by_name_replies_key_names_value_list_key_aliases_iterator, var"libxcb-xkb.so.1"), xcb_xkb_key_alias_iterator_t, (Ptr{xcb_xkb_get_kbd_by_name_reply_t}, Ptr{xcb_xkb_get_kbd_by_name_replies_t}), R, S)
end

function xcb_xkb_get_kbd_by_name_replies_key_names_value_list_radio_group_names(S)
    ccall((:xcb_xkb_get_kbd_by_name_replies_key_names_value_list_radio_group_names, var"libxcb-xkb.so.1"), Ptr{xcb_atom_t}, (Ptr{xcb_xkb_get_kbd_by_name_replies_t},), S)
end

function xcb_xkb_get_kbd_by_name_replies_key_names_value_list_radio_group_names_length(R, S)
    ccall((:xcb_xkb_get_kbd_by_name_replies_key_names_value_list_radio_group_names_length, var"libxcb-xkb.so.1"), Cint, (Ptr{xcb_xkb_get_kbd_by_name_reply_t}, Ptr{xcb_xkb_get_kbd_by_name_replies_t}), R, S)
end

function xcb_xkb_get_kbd_by_name_replies_key_names_value_list_radio_group_names_end(R, S)
    ccall((:xcb_xkb_get_kbd_by_name_replies_key_names_value_list_radio_group_names_end, var"libxcb-xkb.so.1"), xcb_generic_iterator_t, (Ptr{xcb_xkb_get_kbd_by_name_reply_t}, Ptr{xcb_xkb_get_kbd_by_name_replies_t}), R, S)
end

function xcb_xkb_get_kbd_by_name_replies_key_names_value_list_serialize(_buffer, nTypes, indicators, virtualMods, groupNames, nKeys, nKeyAliases, nRadioGroups, which, _aux)
    ccall((:xcb_xkb_get_kbd_by_name_replies_key_names_value_list_serialize, var"libxcb-xkb.so.1"), Cint, (Ptr{Ptr{Cvoid}}, UInt8, UInt32, UInt16, UInt8, UInt8, UInt8, UInt8, UInt32, Ptr{xcb_xkb_get_kbd_by_name_replies_key_names_value_list_t}), _buffer, nTypes, indicators, virtualMods, groupNames, nKeys, nKeyAliases, nRadioGroups, which, _aux)
end

function xcb_xkb_get_kbd_by_name_replies_key_names_value_list_unpack(_buffer, nTypes, indicators, virtualMods, groupNames, nKeys, nKeyAliases, nRadioGroups, which, _aux)
    ccall((:xcb_xkb_get_kbd_by_name_replies_key_names_value_list_unpack, var"libxcb-xkb.so.1"), Cint, (Ptr{Cvoid}, UInt8, UInt32, UInt16, UInt8, UInt8, UInt8, UInt8, UInt32, Ptr{xcb_xkb_get_kbd_by_name_replies_key_names_value_list_t}), _buffer, nTypes, indicators, virtualMods, groupNames, nKeys, nKeyAliases, nRadioGroups, which, _aux)
end

function xcb_xkb_get_kbd_by_name_replies_key_names_value_list_sizeof(_buffer, nTypes, indicators, virtualMods, groupNames, nKeys, nKeyAliases, nRadioGroups, which)
    ccall((:xcb_xkb_get_kbd_by_name_replies_key_names_value_list_sizeof, var"libxcb-xkb.so.1"), Cint, (Ptr{Cvoid}, UInt8, UInt32, UInt16, UInt8, UInt8, UInt8, UInt8, UInt32), _buffer, nTypes, indicators, virtualMods, groupNames, nKeys, nKeyAliases, nRadioGroups, which)
end

function xcb_xkb_get_kbd_by_name_replies_compat_map_si_rtrn(S)
    ccall((:xcb_xkb_get_kbd_by_name_replies_compat_map_si_rtrn, var"libxcb-xkb.so.1"), Ptr{xcb_xkb_sym_interpret_t}, (Ptr{xcb_xkb_get_kbd_by_name_replies_t},), S)
end

function xcb_xkb_get_kbd_by_name_replies_compat_map_si_rtrn_length(R, S)
    ccall((:xcb_xkb_get_kbd_by_name_replies_compat_map_si_rtrn_length, var"libxcb-xkb.so.1"), Cint, (Ptr{xcb_xkb_get_kbd_by_name_reply_t}, Ptr{xcb_xkb_get_kbd_by_name_replies_t}), R, S)
end

function xcb_xkb_get_kbd_by_name_replies_compat_map_si_rtrn_iterator(R, S)
    ccall((:xcb_xkb_get_kbd_by_name_replies_compat_map_si_rtrn_iterator, var"libxcb-xkb.so.1"), xcb_xkb_sym_interpret_iterator_t, (Ptr{xcb_xkb_get_kbd_by_name_reply_t}, Ptr{xcb_xkb_get_kbd_by_name_replies_t}), R, S)
end

function xcb_xkb_get_kbd_by_name_replies_compat_map_group_rtrn(S)
    ccall((:xcb_xkb_get_kbd_by_name_replies_compat_map_group_rtrn, var"libxcb-xkb.so.1"), Ptr{xcb_xkb_mod_def_t}, (Ptr{xcb_xkb_get_kbd_by_name_replies_t},), S)
end

function xcb_xkb_get_kbd_by_name_replies_compat_map_group_rtrn_length(R, S)
    ccall((:xcb_xkb_get_kbd_by_name_replies_compat_map_group_rtrn_length, var"libxcb-xkb.so.1"), Cint, (Ptr{xcb_xkb_get_kbd_by_name_reply_t}, Ptr{xcb_xkb_get_kbd_by_name_replies_t}), R, S)
end

function xcb_xkb_get_kbd_by_name_replies_compat_map_group_rtrn_iterator(R, S)
    ccall((:xcb_xkb_get_kbd_by_name_replies_compat_map_group_rtrn_iterator, var"libxcb-xkb.so.1"), xcb_xkb_mod_def_iterator_t, (Ptr{xcb_xkb_get_kbd_by_name_reply_t}, Ptr{xcb_xkb_get_kbd_by_name_replies_t}), R, S)
end

function xcb_xkb_get_kbd_by_name_replies_indicator_maps_maps(S)
    ccall((:xcb_xkb_get_kbd_by_name_replies_indicator_maps_maps, var"libxcb-xkb.so.1"), Ptr{xcb_xkb_indicator_map_t}, (Ptr{xcb_xkb_get_kbd_by_name_replies_t},), S)
end

function xcb_xkb_get_kbd_by_name_replies_indicator_maps_maps_length(R, S)
    ccall((:xcb_xkb_get_kbd_by_name_replies_indicator_maps_maps_length, var"libxcb-xkb.so.1"), Cint, (Ptr{xcb_xkb_get_kbd_by_name_reply_t}, Ptr{xcb_xkb_get_kbd_by_name_replies_t}), R, S)
end

function xcb_xkb_get_kbd_by_name_replies_indicator_maps_maps_iterator(R, S)
    ccall((:xcb_xkb_get_kbd_by_name_replies_indicator_maps_maps_iterator, var"libxcb-xkb.so.1"), xcb_xkb_indicator_map_iterator_t, (Ptr{xcb_xkb_get_kbd_by_name_reply_t}, Ptr{xcb_xkb_get_kbd_by_name_replies_t}), R, S)
end

function xcb_xkb_get_kbd_by_name_replies_key_names_value_list(R)
    ccall((:xcb_xkb_get_kbd_by_name_replies_key_names_value_list, var"libxcb-xkb.so.1"), Ptr{xcb_xkb_get_kbd_by_name_replies_key_names_value_list_t}, (Ptr{xcb_xkb_get_kbd_by_name_replies_t},), R)
end

function xcb_xkb_get_kbd_by_name_replies_geometry_label_font(R)
    ccall((:xcb_xkb_get_kbd_by_name_replies_geometry_label_font, var"libxcb-xkb.so.1"), Ptr{xcb_xkb_counted_string_16_t}, (Ptr{xcb_xkb_get_kbd_by_name_replies_t},), R)
end

function xcb_xkb_get_kbd_by_name_replies_serialize(_buffer, reported, _aux)
    ccall((:xcb_xkb_get_kbd_by_name_replies_serialize, var"libxcb-xkb.so.1"), Cint, (Ptr{Ptr{Cvoid}}, UInt16, Ptr{xcb_xkb_get_kbd_by_name_replies_t}), _buffer, reported, _aux)
end

function xcb_xkb_get_kbd_by_name_replies_unpack(_buffer, reported, _aux)
    ccall((:xcb_xkb_get_kbd_by_name_replies_unpack, var"libxcb-xkb.so.1"), Cint, (Ptr{Cvoid}, UInt16, Ptr{xcb_xkb_get_kbd_by_name_replies_t}), _buffer, reported, _aux)
end

function xcb_xkb_get_kbd_by_name_replies_sizeof(_buffer, reported)
    ccall((:xcb_xkb_get_kbd_by_name_replies_sizeof, var"libxcb-xkb.so.1"), Cint, (Ptr{Cvoid}, UInt16), _buffer, reported)
end

function xcb_xkb_get_kbd_by_name_sizeof(_buffer)
    ccall((:xcb_xkb_get_kbd_by_name_sizeof, var"libxcb-xkb.so.1"), Cint, (Ptr{Cvoid},), _buffer)
end

function xcb_xkb_get_kbd_by_name(c, deviceSpec, need, want, load)
    ccall((:xcb_xkb_get_kbd_by_name, var"libxcb-xkb.so.1"), xcb_xkb_get_kbd_by_name_cookie_t, (Ptr{xcb_connection_t}, xcb_xkb_device_spec_t, UInt16, UInt16, UInt8), c, deviceSpec, need, want, load)
end

function xcb_xkb_get_kbd_by_name_unchecked(c, deviceSpec, need, want, load)
    ccall((:xcb_xkb_get_kbd_by_name_unchecked, var"libxcb-xkb.so.1"), xcb_xkb_get_kbd_by_name_cookie_t, (Ptr{xcb_connection_t}, xcb_xkb_device_spec_t, UInt16, UInt16, UInt8), c, deviceSpec, need, want, load)
end

function xcb_xkb_get_kbd_by_name_replies(R)
    ccall((:xcb_xkb_get_kbd_by_name_replies, var"libxcb-xkb.so.1"), Ptr{Cvoid}, (Ptr{xcb_xkb_get_kbd_by_name_reply_t},), R)
end

function xcb_xkb_get_kbd_by_name_reply(c, cookie, e)
    ccall((:xcb_xkb_get_kbd_by_name_reply, var"libxcb-xkb.so.1"), Ptr{xcb_xkb_get_kbd_by_name_reply_t}, (Ptr{xcb_connection_t}, xcb_xkb_get_kbd_by_name_cookie_t, Ptr{Ptr{xcb_generic_error_t}}), c, cookie, e)
end

function xcb_xkb_get_device_info_sizeof(_buffer)
    ccall((:xcb_xkb_get_device_info_sizeof, var"libxcb-xkb.so.1"), Cint, (Ptr{Cvoid},), _buffer)
end

function xcb_xkb_get_device_info(c, deviceSpec, wanted, allButtons, firstButton, nButtons, ledClass, ledID)
    ccall((:xcb_xkb_get_device_info, var"libxcb-xkb.so.1"), xcb_xkb_get_device_info_cookie_t, (Ptr{xcb_connection_t}, xcb_xkb_device_spec_t, UInt16, UInt8, UInt8, UInt8, xcb_xkb_led_class_spec_t, xcb_xkb_id_spec_t), c, deviceSpec, wanted, allButtons, firstButton, nButtons, ledClass, ledID)
end

function xcb_xkb_get_device_info_unchecked(c, deviceSpec, wanted, allButtons, firstButton, nButtons, ledClass, ledID)
    ccall((:xcb_xkb_get_device_info_unchecked, var"libxcb-xkb.so.1"), xcb_xkb_get_device_info_cookie_t, (Ptr{xcb_connection_t}, xcb_xkb_device_spec_t, UInt16, UInt8, UInt8, UInt8, xcb_xkb_led_class_spec_t, xcb_xkb_id_spec_t), c, deviceSpec, wanted, allButtons, firstButton, nButtons, ledClass, ledID)
end

function xcb_xkb_get_device_info_name(R)
    ccall((:xcb_xkb_get_device_info_name, var"libxcb-xkb.so.1"), Ptr{xcb_xkb_string8_t}, (Ptr{xcb_xkb_get_device_info_reply_t},), R)
end

function xcb_xkb_get_device_info_name_length(R)
    ccall((:xcb_xkb_get_device_info_name_length, var"libxcb-xkb.so.1"), Cint, (Ptr{xcb_xkb_get_device_info_reply_t},), R)
end

function xcb_xkb_get_device_info_name_end(R)
    ccall((:xcb_xkb_get_device_info_name_end, var"libxcb-xkb.so.1"), xcb_generic_iterator_t, (Ptr{xcb_xkb_get_device_info_reply_t},), R)
end

function xcb_xkb_get_device_info_btn_actions(R)
    ccall((:xcb_xkb_get_device_info_btn_actions, var"libxcb-xkb.so.1"), Ptr{xcb_xkb_action_t}, (Ptr{xcb_xkb_get_device_info_reply_t},), R)
end

function xcb_xkb_get_device_info_btn_actions_length(R)
    ccall((:xcb_xkb_get_device_info_btn_actions_length, var"libxcb-xkb.so.1"), Cint, (Ptr{xcb_xkb_get_device_info_reply_t},), R)
end

function xcb_xkb_get_device_info_btn_actions_iterator(R)
    ccall((:xcb_xkb_get_device_info_btn_actions_iterator, var"libxcb-xkb.so.1"), xcb_xkb_action_iterator_t, (Ptr{xcb_xkb_get_device_info_reply_t},), R)
end

function xcb_xkb_get_device_info_leds_length(R)
    ccall((:xcb_xkb_get_device_info_leds_length, var"libxcb-xkb.so.1"), Cint, (Ptr{xcb_xkb_get_device_info_reply_t},), R)
end

function xcb_xkb_get_device_info_leds_iterator(R)
    ccall((:xcb_xkb_get_device_info_leds_iterator, var"libxcb-xkb.so.1"), xcb_xkb_device_led_info_iterator_t, (Ptr{xcb_xkb_get_device_info_reply_t},), R)
end

function xcb_xkb_get_device_info_reply(c, cookie, e)
    ccall((:xcb_xkb_get_device_info_reply, var"libxcb-xkb.so.1"), Ptr{xcb_xkb_get_device_info_reply_t}, (Ptr{xcb_connection_t}, xcb_xkb_get_device_info_cookie_t, Ptr{Ptr{xcb_generic_error_t}}), c, cookie, e)
end

function xcb_xkb_set_device_info_sizeof(_buffer)
    ccall((:xcb_xkb_set_device_info_sizeof, var"libxcb-xkb.so.1"), Cint, (Ptr{Cvoid},), _buffer)
end

function xcb_xkb_set_device_info_checked(c, deviceSpec, firstBtn, nBtns, change, nDeviceLedFBs, btnActions, leds)
    ccall((:xcb_xkb_set_device_info_checked, var"libxcb-xkb.so.1"), xcb_void_cookie_t, (Ptr{xcb_connection_t}, xcb_xkb_device_spec_t, UInt8, UInt8, UInt16, UInt16, Ptr{xcb_xkb_action_t}, Ptr{xcb_xkb_device_led_info_t}), c, deviceSpec, firstBtn, nBtns, change, nDeviceLedFBs, btnActions, leds)
end

function xcb_xkb_set_device_info(c, deviceSpec, firstBtn, nBtns, change, nDeviceLedFBs, btnActions, leds)
    ccall((:xcb_xkb_set_device_info, var"libxcb-xkb.so.1"), xcb_void_cookie_t, (Ptr{xcb_connection_t}, xcb_xkb_device_spec_t, UInt8, UInt8, UInt16, UInt16, Ptr{xcb_xkb_action_t}, Ptr{xcb_xkb_device_led_info_t}), c, deviceSpec, firstBtn, nBtns, change, nDeviceLedFBs, btnActions, leds)
end

function xcb_xkb_set_device_info_btn_actions(R)
    ccall((:xcb_xkb_set_device_info_btn_actions, var"libxcb-xkb.so.1"), Ptr{xcb_xkb_action_t}, (Ptr{xcb_xkb_set_device_info_request_t},), R)
end

function xcb_xkb_set_device_info_btn_actions_length(R)
    ccall((:xcb_xkb_set_device_info_btn_actions_length, var"libxcb-xkb.so.1"), Cint, (Ptr{xcb_xkb_set_device_info_request_t},), R)
end

function xcb_xkb_set_device_info_btn_actions_iterator(R)
    ccall((:xcb_xkb_set_device_info_btn_actions_iterator, var"libxcb-xkb.so.1"), xcb_xkb_action_iterator_t, (Ptr{xcb_xkb_set_device_info_request_t},), R)
end

function xcb_xkb_set_device_info_leds_length(R)
    ccall((:xcb_xkb_set_device_info_leds_length, var"libxcb-xkb.so.1"), Cint, (Ptr{xcb_xkb_set_device_info_request_t},), R)
end

function xcb_xkb_set_device_info_leds_iterator(R)
    ccall((:xcb_xkb_set_device_info_leds_iterator, var"libxcb-xkb.so.1"), xcb_xkb_device_led_info_iterator_t, (Ptr{xcb_xkb_set_device_info_request_t},), R)
end

function xcb_xkb_set_debugging_flags_sizeof(_buffer)
    ccall((:xcb_xkb_set_debugging_flags_sizeof, var"libxcb-xkb.so.1"), Cint, (Ptr{Cvoid},), _buffer)
end

function xcb_xkb_set_debugging_flags(c, msgLength, affectFlags, flags, affectCtrls, ctrls, message)
    ccall((:xcb_xkb_set_debugging_flags, var"libxcb-xkb.so.1"), xcb_xkb_set_debugging_flags_cookie_t, (Ptr{xcb_connection_t}, UInt16, UInt32, UInt32, UInt32, UInt32, Ptr{xcb_xkb_string8_t}), c, msgLength, affectFlags, flags, affectCtrls, ctrls, message)
end

function xcb_xkb_set_debugging_flags_unchecked(c, msgLength, affectFlags, flags, affectCtrls, ctrls, message)
    ccall((:xcb_xkb_set_debugging_flags_unchecked, var"libxcb-xkb.so.1"), xcb_xkb_set_debugging_flags_cookie_t, (Ptr{xcb_connection_t}, UInt16, UInt32, UInt32, UInt32, UInt32, Ptr{xcb_xkb_string8_t}), c, msgLength, affectFlags, flags, affectCtrls, ctrls, message)
end

function xcb_xkb_set_debugging_flags_reply(c, cookie, e)
    ccall((:xcb_xkb_set_debugging_flags_reply, var"libxcb-xkb.so.1"), Ptr{xcb_xkb_set_debugging_flags_reply_t}, (Ptr{xcb_connection_t}, xcb_xkb_set_debugging_flags_cookie_t, Ptr{Ptr{xcb_generic_error_t}}), c, cookie, e)
end
