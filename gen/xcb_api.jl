# Julia wrapper for header: xcb.h
# Automatically generated using Clang.jl


function xcb_char2b_next(i)
    ccall((:xcb_char2b_next, libxcb), Cvoid, (Ptr{xcb_char2b_iterator_t},), i)
end

function xcb_char2b_end(i)
    ccall((:xcb_char2b_end, libxcb), xcb_generic_iterator_t, (xcb_char2b_iterator_t,), i)
end

function xcb_window_next(i)
    ccall((:xcb_window_next, libxcb), Cvoid, (Ptr{xcb_window_iterator_t},), i)
end

function xcb_window_end(i)
    ccall((:xcb_window_end, libxcb), xcb_generic_iterator_t, (xcb_window_iterator_t,), i)
end

function xcb_pixmap_next(i)
    ccall((:xcb_pixmap_next, libxcb), Cvoid, (Ptr{xcb_pixmap_iterator_t},), i)
end

function xcb_pixmap_end(i)
    ccall((:xcb_pixmap_end, libxcb), xcb_generic_iterator_t, (xcb_pixmap_iterator_t,), i)
end

function xcb_cursor_next(i)
    ccall((:xcb_cursor_next, libxcb), Cvoid, (Ptr{xcb_cursor_iterator_t},), i)
end

function xcb_cursor_end(i)
    ccall((:xcb_cursor_end, libxcb), xcb_generic_iterator_t, (xcb_cursor_iterator_t,), i)
end

function xcb_font_next(i)
    ccall((:xcb_font_next, libxcb), Cvoid, (Ptr{xcb_font_iterator_t},), i)
end

function xcb_font_end(i)
    ccall((:xcb_font_end, libxcb), xcb_generic_iterator_t, (xcb_font_iterator_t,), i)
end

function xcb_gcontext_next(i)
    ccall((:xcb_gcontext_next, libxcb), Cvoid, (Ptr{xcb_gcontext_iterator_t},), i)
end

function xcb_gcontext_end(i)
    ccall((:xcb_gcontext_end, libxcb), xcb_generic_iterator_t, (xcb_gcontext_iterator_t,), i)
end

function xcb_colormap_next(i)
    ccall((:xcb_colormap_next, libxcb), Cvoid, (Ptr{xcb_colormap_iterator_t},), i)
end

function xcb_colormap_end(i)
    ccall((:xcb_colormap_end, libxcb), xcb_generic_iterator_t, (xcb_colormap_iterator_t,), i)
end

function xcb_atom_next(i)
    ccall((:xcb_atom_next, libxcb), Cvoid, (Ptr{xcb_atom_iterator_t},), i)
end

function xcb_atom_end(i)
    ccall((:xcb_atom_end, libxcb), xcb_generic_iterator_t, (xcb_atom_iterator_t,), i)
end

function xcb_drawable_next(i)
    ccall((:xcb_drawable_next, libxcb), Cvoid, (Ptr{xcb_drawable_iterator_t},), i)
end

function xcb_drawable_end(i)
    ccall((:xcb_drawable_end, libxcb), xcb_generic_iterator_t, (xcb_drawable_iterator_t,), i)
end

function xcb_fontable_next(i)
    ccall((:xcb_fontable_next, libxcb), Cvoid, (Ptr{xcb_fontable_iterator_t},), i)
end

function xcb_fontable_end(i)
    ccall((:xcb_fontable_end, libxcb), xcb_generic_iterator_t, (xcb_fontable_iterator_t,), i)
end

function xcb_bool32_next(i)
    ccall((:xcb_bool32_next, libxcb), Cvoid, (Ptr{xcb_bool32_iterator_t},), i)
end

function xcb_bool32_end(i)
    ccall((:xcb_bool32_end, libxcb), xcb_generic_iterator_t, (xcb_bool32_iterator_t,), i)
end

function xcb_visualid_next(i)
    ccall((:xcb_visualid_next, libxcb), Cvoid, (Ptr{xcb_visualid_iterator_t},), i)
end

function xcb_visualid_end(i)
    ccall((:xcb_visualid_end, libxcb), xcb_generic_iterator_t, (xcb_visualid_iterator_t,), i)
end

function xcb_timestamp_next(i)
    ccall((:xcb_timestamp_next, libxcb), Cvoid, (Ptr{xcb_timestamp_iterator_t},), i)
end

function xcb_timestamp_end(i)
    ccall((:xcb_timestamp_end, libxcb), xcb_generic_iterator_t, (xcb_timestamp_iterator_t,), i)
end

function xcb_keysym_next(i)
    ccall((:xcb_keysym_next, libxcb), Cvoid, (Ptr{xcb_keysym_iterator_t},), i)
end

function xcb_keysym_end(i)
    ccall((:xcb_keysym_end, libxcb), xcb_generic_iterator_t, (xcb_keysym_iterator_t,), i)
end

function xcb_keycode_next(i)
    ccall((:xcb_keycode_next, libxcb), Cvoid, (Ptr{xcb_keycode_iterator_t},), i)
end

function xcb_keycode_end(i)
    ccall((:xcb_keycode_end, libxcb), xcb_generic_iterator_t, (xcb_keycode_iterator_t,), i)
end

function xcb_keycode32_next(i)
    ccall((:xcb_keycode32_next, libxcb), Cvoid, (Ptr{xcb_keycode32_iterator_t},), i)
end

function xcb_keycode32_end(i)
    ccall((:xcb_keycode32_end, libxcb), xcb_generic_iterator_t, (xcb_keycode32_iterator_t,), i)
end

function xcb_button_next(i)
    ccall((:xcb_button_next, libxcb), Cvoid, (Ptr{xcb_button_iterator_t},), i)
end

function xcb_button_end(i)
    ccall((:xcb_button_end, libxcb), xcb_generic_iterator_t, (xcb_button_iterator_t,), i)
end

function xcb_point_next(i)
    ccall((:xcb_point_next, libxcb), Cvoid, (Ptr{xcb_point_iterator_t},), i)
end

function xcb_point_end(i)
    ccall((:xcb_point_end, libxcb), xcb_generic_iterator_t, (xcb_point_iterator_t,), i)
end

function xcb_rectangle_next(i)
    ccall((:xcb_rectangle_next, libxcb), Cvoid, (Ptr{xcb_rectangle_iterator_t},), i)
end

function xcb_rectangle_end(i)
    ccall((:xcb_rectangle_end, libxcb), xcb_generic_iterator_t, (xcb_rectangle_iterator_t,), i)
end

function xcb_arc_next(i)
    ccall((:xcb_arc_next, libxcb), Cvoid, (Ptr{xcb_arc_iterator_t},), i)
end

function xcb_arc_end(i)
    ccall((:xcb_arc_end, libxcb), xcb_generic_iterator_t, (xcb_arc_iterator_t,), i)
end

function xcb_format_next(i)
    ccall((:xcb_format_next, libxcb), Cvoid, (Ptr{xcb_format_iterator_t},), i)
end

function xcb_format_end(i)
    ccall((:xcb_format_end, libxcb), xcb_generic_iterator_t, (xcb_format_iterator_t,), i)
end

function xcb_visualtype_next(i)
    ccall((:xcb_visualtype_next, libxcb), Cvoid, (Ptr{xcb_visualtype_iterator_t},), i)
end

function xcb_visualtype_end(i)
    ccall((:xcb_visualtype_end, libxcb), xcb_generic_iterator_t, (xcb_visualtype_iterator_t,), i)
end

function xcb_depth_sizeof(_buffer)
    ccall((:xcb_depth_sizeof, libxcb), Cint, (Ptr{Cvoid},), _buffer)
end

function xcb_depth_visuals(R)
    ccall((:xcb_depth_visuals, libxcb), Ptr{xcb_visualtype_t}, (Ptr{xcb_depth_t},), R)
end

function xcb_depth_visuals_length(R)
    ccall((:xcb_depth_visuals_length, libxcb), Cint, (Ptr{xcb_depth_t},), R)
end

function xcb_depth_visuals_iterator(R)
    ccall((:xcb_depth_visuals_iterator, libxcb), xcb_visualtype_iterator_t, (Ptr{xcb_depth_t},), R)
end

function xcb_depth_next(i)
    ccall((:xcb_depth_next, libxcb), Cvoid, (Ptr{xcb_depth_iterator_t},), i)
end

function xcb_depth_end(i)
    ccall((:xcb_depth_end, libxcb), xcb_generic_iterator_t, (xcb_depth_iterator_t,), i)
end

function xcb_screen_sizeof(_buffer)
    ccall((:xcb_screen_sizeof, libxcb), Cint, (Ptr{Cvoid},), _buffer)
end

function xcb_screen_allowed_depths_length(R)
    ccall((:xcb_screen_allowed_depths_length, libxcb), Cint, (Ptr{xcb_screen_t},), R)
end

function xcb_screen_allowed_depths_iterator(R)
    ccall((:xcb_screen_allowed_depths_iterator, libxcb), xcb_depth_iterator_t, (Ptr{xcb_screen_t},), R)
end

function xcb_screen_next(i)
    ccall((:xcb_screen_next, libxcb), Cvoid, (Ptr{xcb_screen_iterator_t},), i)
end

function xcb_screen_end(i)
    ccall((:xcb_screen_end, libxcb), xcb_generic_iterator_t, (xcb_screen_iterator_t,), i)
end

function xcb_setup_request_sizeof(_buffer)
    ccall((:xcb_setup_request_sizeof, libxcb), Cint, (Ptr{Cvoid},), _buffer)
end

function xcb_setup_request_authorization_protocol_name(R)
    ccall((:xcb_setup_request_authorization_protocol_name, libxcb), Cstring, (Ptr{xcb_setup_request_t},), R)
end

function xcb_setup_request_authorization_protocol_name_length(R)
    ccall((:xcb_setup_request_authorization_protocol_name_length, libxcb), Cint, (Ptr{xcb_setup_request_t},), R)
end

function xcb_setup_request_authorization_protocol_name_end(R)
    ccall((:xcb_setup_request_authorization_protocol_name_end, libxcb), xcb_generic_iterator_t, (Ptr{xcb_setup_request_t},), R)
end

function xcb_setup_request_authorization_protocol_data(R)
    ccall((:xcb_setup_request_authorization_protocol_data, libxcb), Cstring, (Ptr{xcb_setup_request_t},), R)
end

function xcb_setup_request_authorization_protocol_data_length(R)
    ccall((:xcb_setup_request_authorization_protocol_data_length, libxcb), Cint, (Ptr{xcb_setup_request_t},), R)
end

function xcb_setup_request_authorization_protocol_data_end(R)
    ccall((:xcb_setup_request_authorization_protocol_data_end, libxcb), xcb_generic_iterator_t, (Ptr{xcb_setup_request_t},), R)
end

function xcb_setup_request_next(i)
    ccall((:xcb_setup_request_next, libxcb), Cvoid, (Ptr{xcb_setup_request_iterator_t},), i)
end

function xcb_setup_request_end(i)
    ccall((:xcb_setup_request_end, libxcb), xcb_generic_iterator_t, (xcb_setup_request_iterator_t,), i)
end

function xcb_setup_failed_sizeof(_buffer)
    ccall((:xcb_setup_failed_sizeof, libxcb), Cint, (Ptr{Cvoid},), _buffer)
end

function xcb_setup_failed_reason(R)
    ccall((:xcb_setup_failed_reason, libxcb), Cstring, (Ptr{xcb_setup_failed_t},), R)
end

function xcb_setup_failed_reason_length(R)
    ccall((:xcb_setup_failed_reason_length, libxcb), Cint, (Ptr{xcb_setup_failed_t},), R)
end

function xcb_setup_failed_reason_end(R)
    ccall((:xcb_setup_failed_reason_end, libxcb), xcb_generic_iterator_t, (Ptr{xcb_setup_failed_t},), R)
end

function xcb_setup_failed_next(i)
    ccall((:xcb_setup_failed_next, libxcb), Cvoid, (Ptr{xcb_setup_failed_iterator_t},), i)
end

function xcb_setup_failed_end(i)
    ccall((:xcb_setup_failed_end, libxcb), xcb_generic_iterator_t, (xcb_setup_failed_iterator_t,), i)
end

function xcb_setup_authenticate_sizeof(_buffer)
    ccall((:xcb_setup_authenticate_sizeof, libxcb), Cint, (Ptr{Cvoid},), _buffer)
end

function xcb_setup_authenticate_reason(R)
    ccall((:xcb_setup_authenticate_reason, libxcb), Cstring, (Ptr{xcb_setup_authenticate_t},), R)
end

function xcb_setup_authenticate_reason_length(R)
    ccall((:xcb_setup_authenticate_reason_length, libxcb), Cint, (Ptr{xcb_setup_authenticate_t},), R)
end

function xcb_setup_authenticate_reason_end(R)
    ccall((:xcb_setup_authenticate_reason_end, libxcb), xcb_generic_iterator_t, (Ptr{xcb_setup_authenticate_t},), R)
end

function xcb_setup_authenticate_next(i)
    ccall((:xcb_setup_authenticate_next, libxcb), Cvoid, (Ptr{xcb_setup_authenticate_iterator_t},), i)
end

function xcb_setup_authenticate_end(i)
    ccall((:xcb_setup_authenticate_end, libxcb), xcb_generic_iterator_t, (xcb_setup_authenticate_iterator_t,), i)
end

function xcb_setup_sizeof(_buffer)
    ccall((:xcb_setup_sizeof, libxcb), Cint, (Ptr{Cvoid},), _buffer)
end

function xcb_setup_vendor(R)
    ccall((:xcb_setup_vendor, libxcb), Cstring, (Ptr{xcb_setup_t},), R)
end

function xcb_setup_vendor_length(R)
    ccall((:xcb_setup_vendor_length, libxcb), Cint, (Ptr{xcb_setup_t},), R)
end

function xcb_setup_vendor_end(R)
    ccall((:xcb_setup_vendor_end, libxcb), xcb_generic_iterator_t, (Ptr{xcb_setup_t},), R)
end

function xcb_setup_pixmap_formats(R)
    ccall((:xcb_setup_pixmap_formats, libxcb), Ptr{xcb_format_t}, (Ptr{xcb_setup_t},), R)
end

function xcb_setup_pixmap_formats_length(R)
    ccall((:xcb_setup_pixmap_formats_length, libxcb), Cint, (Ptr{xcb_setup_t},), R)
end

function xcb_setup_pixmap_formats_iterator(R)
    ccall((:xcb_setup_pixmap_formats_iterator, libxcb), xcb_format_iterator_t, (Ptr{xcb_setup_t},), R)
end

function xcb_setup_roots_length(R)
    ccall((:xcb_setup_roots_length, libxcb), Cint, (Ptr{xcb_setup_t},), R)
end

function xcb_setup_roots_iterator(R)
    ccall((:xcb_setup_roots_iterator, libxcb), xcb_screen_iterator_t, (Ptr{xcb_setup_t},), R)
end

function xcb_setup_next(i)
    ccall((:xcb_setup_next, libxcb), Cvoid, (Ptr{xcb_setup_iterator_t},), i)
end

function xcb_setup_end(i)
    ccall((:xcb_setup_end, libxcb), xcb_generic_iterator_t, (xcb_setup_iterator_t,), i)
end

function xcb_client_message_data_next(i)
    ccall((:xcb_client_message_data_next, libxcb), Cvoid, (Ptr{xcb_client_message_data_iterator_t},), i)
end

function xcb_client_message_data_end(i)
    ccall((:xcb_client_message_data_end, libxcb), xcb_generic_iterator_t, (xcb_client_message_data_iterator_t,), i)
end

function xcb_create_window_value_list_serialize(_buffer, value_mask, _aux)
    ccall((:xcb_create_window_value_list_serialize, libxcb), Cint, (Ptr{Ptr{Cvoid}}, UInt32, Ptr{xcb_create_window_value_list_t}), _buffer, value_mask, _aux)
end

function xcb_create_window_value_list_unpack(_buffer, value_mask, _aux)
    ccall((:xcb_create_window_value_list_unpack, libxcb), Cint, (Ptr{Cvoid}, UInt32, Ptr{xcb_create_window_value_list_t}), _buffer, value_mask, _aux)
end

function xcb_create_window_value_list_sizeof(_buffer, value_mask)
    ccall((:xcb_create_window_value_list_sizeof, libxcb), Cint, (Ptr{Cvoid}, UInt32), _buffer, value_mask)
end

function xcb_create_window_sizeof(_buffer)
    ccall((:xcb_create_window_sizeof, libxcb), Cint, (Ptr{Cvoid},), _buffer)
end

function xcb_create_window_checked(c, depth, wid, parent, x, y, width, height, border_width, _class, visual, value_mask, value_list)
    ccall((:xcb_create_window_checked, libxcb), xcb_void_cookie_t, (Ptr{xcb_connection_t}, UInt8, xcb_window_t, xcb_window_t, Int16, Int16, UInt16, UInt16, UInt16, UInt16, xcb_visualid_t, UInt32, Ptr{Cvoid}), c, depth, wid, parent, x, y, width, height, border_width, _class, visual, value_mask, value_list)
end

function xcb_create_window(c, depth, wid, parent, x, y, width, height, border_width, _class, visual, value_mask, value_list)
    ccall((:xcb_create_window, libxcb), xcb_void_cookie_t, (Ptr{xcb_connection_t}, UInt8, xcb_window_t, xcb_window_t, Int16, Int16, UInt16, UInt16, UInt16, UInt16, xcb_visualid_t, UInt32, Ptr{Cvoid}), c, depth, wid, parent, x, y, width, height, border_width, _class, visual, value_mask, value_list)
end

function xcb_create_window_aux_checked(c, depth, wid, parent, x, y, width, height, border_width, _class, visual, value_mask, value_list)
    ccall((:xcb_create_window_aux_checked, libxcb), xcb_void_cookie_t, (Ptr{xcb_connection_t}, UInt8, xcb_window_t, xcb_window_t, Int16, Int16, UInt16, UInt16, UInt16, UInt16, xcb_visualid_t, UInt32, Ptr{xcb_create_window_value_list_t}), c, depth, wid, parent, x, y, width, height, border_width, _class, visual, value_mask, value_list)
end

function xcb_create_window_aux(c, depth, wid, parent, x, y, width, height, border_width, _class, visual, value_mask, value_list)
    ccall((:xcb_create_window_aux, libxcb), xcb_void_cookie_t, (Ptr{xcb_connection_t}, UInt8, xcb_window_t, xcb_window_t, Int16, Int16, UInt16, UInt16, UInt16, UInt16, xcb_visualid_t, UInt32, Ptr{xcb_create_window_value_list_t}), c, depth, wid, parent, x, y, width, height, border_width, _class, visual, value_mask, value_list)
end

function xcb_create_window_value_list(R)
    ccall((:xcb_create_window_value_list, libxcb), Ptr{Cvoid}, (Ptr{xcb_create_window_request_t},), R)
end

function xcb_change_window_attributes_value_list_serialize(_buffer, value_mask, _aux)
    ccall((:xcb_change_window_attributes_value_list_serialize, libxcb), Cint, (Ptr{Ptr{Cvoid}}, UInt32, Ptr{xcb_change_window_attributes_value_list_t}), _buffer, value_mask, _aux)
end

function xcb_change_window_attributes_value_list_unpack(_buffer, value_mask, _aux)
    ccall((:xcb_change_window_attributes_value_list_unpack, libxcb), Cint, (Ptr{Cvoid}, UInt32, Ptr{xcb_change_window_attributes_value_list_t}), _buffer, value_mask, _aux)
end

function xcb_change_window_attributes_value_list_sizeof(_buffer, value_mask)
    ccall((:xcb_change_window_attributes_value_list_sizeof, libxcb), Cint, (Ptr{Cvoid}, UInt32), _buffer, value_mask)
end

function xcb_change_window_attributes_sizeof(_buffer)
    ccall((:xcb_change_window_attributes_sizeof, libxcb), Cint, (Ptr{Cvoid},), _buffer)
end

function xcb_change_window_attributes_checked(c, window, value_mask, value_list)
    ccall((:xcb_change_window_attributes_checked, libxcb), xcb_void_cookie_t, (Ptr{xcb_connection_t}, xcb_window_t, UInt32, Ptr{Cvoid}), c, window, value_mask, value_list)
end

function xcb_change_window_attributes(c, window, value_mask, value_list)
    ccall((:xcb_change_window_attributes, libxcb), xcb_void_cookie_t, (Ptr{xcb_connection_t}, xcb_window_t, UInt32, Ptr{Cvoid}), c, window, value_mask, value_list)
end

function xcb_change_window_attributes_aux_checked(c, window, value_mask, value_list)
    ccall((:xcb_change_window_attributes_aux_checked, libxcb), xcb_void_cookie_t, (Ptr{xcb_connection_t}, xcb_window_t, UInt32, Ptr{xcb_change_window_attributes_value_list_t}), c, window, value_mask, value_list)
end

function xcb_change_window_attributes_aux(c, window, value_mask, value_list)
    ccall((:xcb_change_window_attributes_aux, libxcb), xcb_void_cookie_t, (Ptr{xcb_connection_t}, xcb_window_t, UInt32, Ptr{xcb_change_window_attributes_value_list_t}), c, window, value_mask, value_list)
end

function xcb_change_window_attributes_value_list(R)
    ccall((:xcb_change_window_attributes_value_list, libxcb), Ptr{Cvoid}, (Ptr{xcb_change_window_attributes_request_t},), R)
end

function xcb_get_window_attributes(c, window)
    ccall((:xcb_get_window_attributes, libxcb), xcb_get_window_attributes_cookie_t, (Ptr{xcb_connection_t}, xcb_window_t), c, window)
end

function xcb_get_window_attributes_unchecked(c, window)
    ccall((:xcb_get_window_attributes_unchecked, libxcb), xcb_get_window_attributes_cookie_t, (Ptr{xcb_connection_t}, xcb_window_t), c, window)
end

function xcb_get_window_attributes_reply(c, cookie, e)
    ccall((:xcb_get_window_attributes_reply, libxcb), Ptr{xcb_get_window_attributes_reply_t}, (Ptr{xcb_connection_t}, xcb_get_window_attributes_cookie_t, Ptr{Ptr{xcb_generic_error_t}}), c, cookie, e)
end

function xcb_destroy_window_checked(c, window)
    ccall((:xcb_destroy_window_checked, libxcb), xcb_void_cookie_t, (Ptr{xcb_connection_t}, xcb_window_t), c, window)
end

function xcb_destroy_window(c, window)
    ccall((:xcb_destroy_window, libxcb), xcb_void_cookie_t, (Ptr{xcb_connection_t}, xcb_window_t), c, window)
end

function xcb_destroy_subwindows_checked(c, window)
    ccall((:xcb_destroy_subwindows_checked, libxcb), xcb_void_cookie_t, (Ptr{xcb_connection_t}, xcb_window_t), c, window)
end

function xcb_destroy_subwindows(c, window)
    ccall((:xcb_destroy_subwindows, libxcb), xcb_void_cookie_t, (Ptr{xcb_connection_t}, xcb_window_t), c, window)
end

function xcb_change_save_set_checked(c, mode, window)
    ccall((:xcb_change_save_set_checked, libxcb), xcb_void_cookie_t, (Ptr{xcb_connection_t}, UInt8, xcb_window_t), c, mode, window)
end

function xcb_change_save_set(c, mode, window)
    ccall((:xcb_change_save_set, libxcb), xcb_void_cookie_t, (Ptr{xcb_connection_t}, UInt8, xcb_window_t), c, mode, window)
end

function xcb_reparent_window_checked(c, window, parent, x, y)
    ccall((:xcb_reparent_window_checked, libxcb), xcb_void_cookie_t, (Ptr{xcb_connection_t}, xcb_window_t, xcb_window_t, Int16, Int16), c, window, parent, x, y)
end

function xcb_reparent_window(c, window, parent, x, y)
    ccall((:xcb_reparent_window, libxcb), xcb_void_cookie_t, (Ptr{xcb_connection_t}, xcb_window_t, xcb_window_t, Int16, Int16), c, window, parent, x, y)
end

function xcb_map_window_checked(c, window)
    ccall((:xcb_map_window_checked, libxcb), xcb_void_cookie_t, (Ptr{xcb_connection_t}, xcb_window_t), c, window)
end

function xcb_map_window(c, window)
    ccall((:xcb_map_window, libxcb), xcb_void_cookie_t, (Ptr{xcb_connection_t}, xcb_window_t), c, window)
end

function xcb_map_subwindows_checked(c, window)
    ccall((:xcb_map_subwindows_checked, libxcb), xcb_void_cookie_t, (Ptr{xcb_connection_t}, xcb_window_t), c, window)
end

function xcb_map_subwindows(c, window)
    ccall((:xcb_map_subwindows, libxcb), xcb_void_cookie_t, (Ptr{xcb_connection_t}, xcb_window_t), c, window)
end

function xcb_unmap_window_checked(c, window)
    ccall((:xcb_unmap_window_checked, libxcb), xcb_void_cookie_t, (Ptr{xcb_connection_t}, xcb_window_t), c, window)
end

function xcb_unmap_window(c, window)
    ccall((:xcb_unmap_window, libxcb), xcb_void_cookie_t, (Ptr{xcb_connection_t}, xcb_window_t), c, window)
end

function xcb_unmap_subwindows_checked(c, window)
    ccall((:xcb_unmap_subwindows_checked, libxcb), xcb_void_cookie_t, (Ptr{xcb_connection_t}, xcb_window_t), c, window)
end

function xcb_unmap_subwindows(c, window)
    ccall((:xcb_unmap_subwindows, libxcb), xcb_void_cookie_t, (Ptr{xcb_connection_t}, xcb_window_t), c, window)
end

function xcb_configure_window_value_list_serialize(_buffer, value_mask, _aux)
    ccall((:xcb_configure_window_value_list_serialize, libxcb), Cint, (Ptr{Ptr{Cvoid}}, UInt16, Ptr{xcb_configure_window_value_list_t}), _buffer, value_mask, _aux)
end

function xcb_configure_window_value_list_unpack(_buffer, value_mask, _aux)
    ccall((:xcb_configure_window_value_list_unpack, libxcb), Cint, (Ptr{Cvoid}, UInt16, Ptr{xcb_configure_window_value_list_t}), _buffer, value_mask, _aux)
end

function xcb_configure_window_value_list_sizeof(_buffer, value_mask)
    ccall((:xcb_configure_window_value_list_sizeof, libxcb), Cint, (Ptr{Cvoid}, UInt16), _buffer, value_mask)
end

function xcb_configure_window_sizeof(_buffer)
    ccall((:xcb_configure_window_sizeof, libxcb), Cint, (Ptr{Cvoid},), _buffer)
end

function xcb_configure_window_checked(c, window, value_mask, value_list)
    ccall((:xcb_configure_window_checked, libxcb), xcb_void_cookie_t, (Ptr{xcb_connection_t}, xcb_window_t, UInt16, Ptr{Cvoid}), c, window, value_mask, value_list)
end

function xcb_configure_window(c, window, value_mask, value_list)
    ccall((:xcb_configure_window, libxcb), xcb_void_cookie_t, (Ptr{xcb_connection_t}, xcb_window_t, UInt16, Ptr{Cvoid}), c, window, value_mask, value_list)
end

function xcb_configure_window_aux_checked(c, window, value_mask, value_list)
    ccall((:xcb_configure_window_aux_checked, libxcb), xcb_void_cookie_t, (Ptr{xcb_connection_t}, xcb_window_t, UInt16, Ptr{xcb_configure_window_value_list_t}), c, window, value_mask, value_list)
end

function xcb_configure_window_aux(c, window, value_mask, value_list)
    ccall((:xcb_configure_window_aux, libxcb), xcb_void_cookie_t, (Ptr{xcb_connection_t}, xcb_window_t, UInt16, Ptr{xcb_configure_window_value_list_t}), c, window, value_mask, value_list)
end

function xcb_configure_window_value_list(R)
    ccall((:xcb_configure_window_value_list, libxcb), Ptr{Cvoid}, (Ptr{xcb_configure_window_request_t},), R)
end

function xcb_circulate_window_checked(c, direction, window)
    ccall((:xcb_circulate_window_checked, libxcb), xcb_void_cookie_t, (Ptr{xcb_connection_t}, UInt8, xcb_window_t), c, direction, window)
end

function xcb_circulate_window(c, direction, window)
    ccall((:xcb_circulate_window, libxcb), xcb_void_cookie_t, (Ptr{xcb_connection_t}, UInt8, xcb_window_t), c, direction, window)
end

function xcb_get_geometry(c, drawable)
    ccall((:xcb_get_geometry, libxcb), xcb_get_geometry_cookie_t, (Ptr{xcb_connection_t}, xcb_drawable_t), c, drawable)
end

function xcb_get_geometry_unchecked(c, drawable)
    ccall((:xcb_get_geometry_unchecked, libxcb), xcb_get_geometry_cookie_t, (Ptr{xcb_connection_t}, xcb_drawable_t), c, drawable)
end

function xcb_get_geometry_reply(c, cookie, e)
    ccall((:xcb_get_geometry_reply, libxcb), Ptr{xcb_get_geometry_reply_t}, (Ptr{xcb_connection_t}, xcb_get_geometry_cookie_t, Ptr{Ptr{xcb_generic_error_t}}), c, cookie, e)
end

function xcb_query_tree_sizeof(_buffer)
    ccall((:xcb_query_tree_sizeof, libxcb), Cint, (Ptr{Cvoid},), _buffer)
end

function xcb_query_tree(c, window)
    ccall((:xcb_query_tree, libxcb), xcb_query_tree_cookie_t, (Ptr{xcb_connection_t}, xcb_window_t), c, window)
end

function xcb_query_tree_unchecked(c, window)
    ccall((:xcb_query_tree_unchecked, libxcb), xcb_query_tree_cookie_t, (Ptr{xcb_connection_t}, xcb_window_t), c, window)
end

function xcb_query_tree_children(R)
    ccall((:xcb_query_tree_children, libxcb), Ptr{xcb_window_t}, (Ptr{xcb_query_tree_reply_t},), R)
end

function xcb_query_tree_children_length(R)
    ccall((:xcb_query_tree_children_length, libxcb), Cint, (Ptr{xcb_query_tree_reply_t},), R)
end

function xcb_query_tree_children_end(R)
    ccall((:xcb_query_tree_children_end, libxcb), xcb_generic_iterator_t, (Ptr{xcb_query_tree_reply_t},), R)
end

function xcb_query_tree_reply(c, cookie, e)
    ccall((:xcb_query_tree_reply, libxcb), Ptr{xcb_query_tree_reply_t}, (Ptr{xcb_connection_t}, xcb_query_tree_cookie_t, Ptr{Ptr{xcb_generic_error_t}}), c, cookie, e)
end

function xcb_intern_atom_sizeof(_buffer)
    ccall((:xcb_intern_atom_sizeof, libxcb), Cint, (Ptr{Cvoid},), _buffer)
end

function xcb_intern_atom(c, only_if_exists, name_len, name)
    ccall((:xcb_intern_atom, libxcb), xcb_intern_atom_cookie_t, (Ptr{xcb_connection_t}, UInt8, UInt16, Cstring), c, only_if_exists, name_len, name)
end

function xcb_intern_atom_unchecked(c, only_if_exists, name_len, name)
    ccall((:xcb_intern_atom_unchecked, libxcb), xcb_intern_atom_cookie_t, (Ptr{xcb_connection_t}, UInt8, UInt16, Cstring), c, only_if_exists, name_len, name)
end

function xcb_intern_atom_reply(c, cookie, e)
    ccall((:xcb_intern_atom_reply, libxcb), Ptr{xcb_intern_atom_reply_t}, (Ptr{xcb_connection_t}, xcb_intern_atom_cookie_t, Ptr{Ptr{xcb_generic_error_t}}), c, cookie, e)
end

function xcb_get_atom_name_sizeof(_buffer)
    ccall((:xcb_get_atom_name_sizeof, libxcb), Cint, (Ptr{Cvoid},), _buffer)
end

function xcb_get_atom_name(c, atom)
    ccall((:xcb_get_atom_name, libxcb), xcb_get_atom_name_cookie_t, (Ptr{xcb_connection_t}, xcb_atom_t), c, atom)
end

function xcb_get_atom_name_unchecked(c, atom)
    ccall((:xcb_get_atom_name_unchecked, libxcb), xcb_get_atom_name_cookie_t, (Ptr{xcb_connection_t}, xcb_atom_t), c, atom)
end

function xcb_get_atom_name_name(R)
    ccall((:xcb_get_atom_name_name, libxcb), Cstring, (Ptr{xcb_get_atom_name_reply_t},), R)
end

function xcb_get_atom_name_name_length(R)
    ccall((:xcb_get_atom_name_name_length, libxcb), Cint, (Ptr{xcb_get_atom_name_reply_t},), R)
end

function xcb_get_atom_name_name_end(R)
    ccall((:xcb_get_atom_name_name_end, libxcb), xcb_generic_iterator_t, (Ptr{xcb_get_atom_name_reply_t},), R)
end

function xcb_get_atom_name_reply(c, cookie, e)
    ccall((:xcb_get_atom_name_reply, libxcb), Ptr{xcb_get_atom_name_reply_t}, (Ptr{xcb_connection_t}, xcb_get_atom_name_cookie_t, Ptr{Ptr{xcb_generic_error_t}}), c, cookie, e)
end

function xcb_change_property_sizeof(_buffer)
    ccall((:xcb_change_property_sizeof, libxcb), Cint, (Ptr{Cvoid},), _buffer)
end

function xcb_change_property_checked(c, mode, window, property, type, format, data_len, data)
    ccall((:xcb_change_property_checked, libxcb), xcb_void_cookie_t, (Ptr{xcb_connection_t}, UInt8, xcb_window_t, xcb_atom_t, xcb_atom_t, UInt8, UInt32, Ptr{Cvoid}), c, mode, window, property, type, format, data_len, data)
end

function xcb_change_property(c, mode, window, property, type, format, data_len, data)
    ccall((:xcb_change_property, libxcb), xcb_void_cookie_t, (Ptr{xcb_connection_t}, UInt8, xcb_window_t, xcb_atom_t, xcb_atom_t, UInt8, UInt32, Ptr{Cvoid}), c, mode, window, property, type, format, data_len, data)
end

function xcb_change_property_data(R)
    ccall((:xcb_change_property_data, libxcb), Ptr{Cvoid}, (Ptr{xcb_change_property_request_t},), R)
end

function xcb_change_property_data_length(R)
    ccall((:xcb_change_property_data_length, libxcb), Cint, (Ptr{xcb_change_property_request_t},), R)
end

function xcb_change_property_data_end(R)
    ccall((:xcb_change_property_data_end, libxcb), xcb_generic_iterator_t, (Ptr{xcb_change_property_request_t},), R)
end

function xcb_delete_property_checked(c, window, property)
    ccall((:xcb_delete_property_checked, libxcb), xcb_void_cookie_t, (Ptr{xcb_connection_t}, xcb_window_t, xcb_atom_t), c, window, property)
end

function xcb_delete_property(c, window, property)
    ccall((:xcb_delete_property, libxcb), xcb_void_cookie_t, (Ptr{xcb_connection_t}, xcb_window_t, xcb_atom_t), c, window, property)
end

function xcb_get_property_sizeof(_buffer)
    ccall((:xcb_get_property_sizeof, libxcb), Cint, (Ptr{Cvoid},), _buffer)
end

function xcb_get_property(c, _delete, window, property, type, long_offset, long_length)
    ccall((:xcb_get_property, libxcb), xcb_get_property_cookie_t, (Ptr{xcb_connection_t}, UInt8, xcb_window_t, xcb_atom_t, xcb_atom_t, UInt32, UInt32), c, _delete, window, property, type, long_offset, long_length)
end

function xcb_get_property_unchecked(c, _delete, window, property, type, long_offset, long_length)
    ccall((:xcb_get_property_unchecked, libxcb), xcb_get_property_cookie_t, (Ptr{xcb_connection_t}, UInt8, xcb_window_t, xcb_atom_t, xcb_atom_t, UInt32, UInt32), c, _delete, window, property, type, long_offset, long_length)
end

function xcb_get_property_value(R)
    ccall((:xcb_get_property_value, libxcb), Ptr{Cvoid}, (Ptr{xcb_get_property_reply_t},), R)
end

function xcb_get_property_value_length(R)
    ccall((:xcb_get_property_value_length, libxcb), Cint, (Ptr{xcb_get_property_reply_t},), R)
end

function xcb_get_property_value_end(R)
    ccall((:xcb_get_property_value_end, libxcb), xcb_generic_iterator_t, (Ptr{xcb_get_property_reply_t},), R)
end

function xcb_get_property_reply(c, cookie, e)
    ccall((:xcb_get_property_reply, libxcb), Ptr{xcb_get_property_reply_t}, (Ptr{xcb_connection_t}, xcb_get_property_cookie_t, Ptr{Ptr{xcb_generic_error_t}}), c, cookie, e)
end

function xcb_list_properties_sizeof(_buffer)
    ccall((:xcb_list_properties_sizeof, libxcb), Cint, (Ptr{Cvoid},), _buffer)
end

function xcb_list_properties(c, window)
    ccall((:xcb_list_properties, libxcb), xcb_list_properties_cookie_t, (Ptr{xcb_connection_t}, xcb_window_t), c, window)
end

function xcb_list_properties_unchecked(c, window)
    ccall((:xcb_list_properties_unchecked, libxcb), xcb_list_properties_cookie_t, (Ptr{xcb_connection_t}, xcb_window_t), c, window)
end

function xcb_list_properties_atoms(R)
    ccall((:xcb_list_properties_atoms, libxcb), Ptr{xcb_atom_t}, (Ptr{xcb_list_properties_reply_t},), R)
end

function xcb_list_properties_atoms_length(R)
    ccall((:xcb_list_properties_atoms_length, libxcb), Cint, (Ptr{xcb_list_properties_reply_t},), R)
end

function xcb_list_properties_atoms_end(R)
    ccall((:xcb_list_properties_atoms_end, libxcb), xcb_generic_iterator_t, (Ptr{xcb_list_properties_reply_t},), R)
end

function xcb_list_properties_reply(c, cookie, e)
    ccall((:xcb_list_properties_reply, libxcb), Ptr{xcb_list_properties_reply_t}, (Ptr{xcb_connection_t}, xcb_list_properties_cookie_t, Ptr{Ptr{xcb_generic_error_t}}), c, cookie, e)
end

function xcb_set_selection_owner_checked(c, owner, selection, time)
    ccall((:xcb_set_selection_owner_checked, libxcb), xcb_void_cookie_t, (Ptr{xcb_connection_t}, xcb_window_t, xcb_atom_t, xcb_timestamp_t), c, owner, selection, time)
end

function xcb_set_selection_owner(c, owner, selection, time)
    ccall((:xcb_set_selection_owner, libxcb), xcb_void_cookie_t, (Ptr{xcb_connection_t}, xcb_window_t, xcb_atom_t, xcb_timestamp_t), c, owner, selection, time)
end

function xcb_get_selection_owner(c, selection)
    ccall((:xcb_get_selection_owner, libxcb), xcb_get_selection_owner_cookie_t, (Ptr{xcb_connection_t}, xcb_atom_t), c, selection)
end

function xcb_get_selection_owner_unchecked(c, selection)
    ccall((:xcb_get_selection_owner_unchecked, libxcb), xcb_get_selection_owner_cookie_t, (Ptr{xcb_connection_t}, xcb_atom_t), c, selection)
end

function xcb_get_selection_owner_reply(c, cookie, e)
    ccall((:xcb_get_selection_owner_reply, libxcb), Ptr{xcb_get_selection_owner_reply_t}, (Ptr{xcb_connection_t}, xcb_get_selection_owner_cookie_t, Ptr{Ptr{xcb_generic_error_t}}), c, cookie, e)
end

function xcb_convert_selection_checked(c, requestor, selection, target, property, time)
    ccall((:xcb_convert_selection_checked, libxcb), xcb_void_cookie_t, (Ptr{xcb_connection_t}, xcb_window_t, xcb_atom_t, xcb_atom_t, xcb_atom_t, xcb_timestamp_t), c, requestor, selection, target, property, time)
end

function xcb_convert_selection(c, requestor, selection, target, property, time)
    ccall((:xcb_convert_selection, libxcb), xcb_void_cookie_t, (Ptr{xcb_connection_t}, xcb_window_t, xcb_atom_t, xcb_atom_t, xcb_atom_t, xcb_timestamp_t), c, requestor, selection, target, property, time)
end

function xcb_send_event_checked(c, propagate, destination, event_mask, event)
    ccall((:xcb_send_event_checked, libxcb), xcb_void_cookie_t, (Ptr{xcb_connection_t}, UInt8, xcb_window_t, UInt32, Cstring), c, propagate, destination, event_mask, event)
end

function xcb_send_event(c, propagate, destination, event_mask, event)
    ccall((:xcb_send_event, libxcb), xcb_void_cookie_t, (Ptr{xcb_connection_t}, UInt8, xcb_window_t, UInt32, Cstring), c, propagate, destination, event_mask, event)
end

function xcb_grab_pointer(c, owner_events, grab_window, event_mask, pointer_mode, keyboard_mode, confine_to, cursor, time)
    ccall((:xcb_grab_pointer, libxcb), xcb_grab_pointer_cookie_t, (Ptr{xcb_connection_t}, UInt8, xcb_window_t, UInt16, UInt8, UInt8, xcb_window_t, xcb_cursor_t, xcb_timestamp_t), c, owner_events, grab_window, event_mask, pointer_mode, keyboard_mode, confine_to, cursor, time)
end

function xcb_grab_pointer_unchecked(c, owner_events, grab_window, event_mask, pointer_mode, keyboard_mode, confine_to, cursor, time)
    ccall((:xcb_grab_pointer_unchecked, libxcb), xcb_grab_pointer_cookie_t, (Ptr{xcb_connection_t}, UInt8, xcb_window_t, UInt16, UInt8, UInt8, xcb_window_t, xcb_cursor_t, xcb_timestamp_t), c, owner_events, grab_window, event_mask, pointer_mode, keyboard_mode, confine_to, cursor, time)
end

function xcb_grab_pointer_reply(c, cookie, e)
    ccall((:xcb_grab_pointer_reply, libxcb), Ptr{xcb_grab_pointer_reply_t}, (Ptr{xcb_connection_t}, xcb_grab_pointer_cookie_t, Ptr{Ptr{xcb_generic_error_t}}), c, cookie, e)
end

function xcb_ungrab_pointer_checked(c, time)
    ccall((:xcb_ungrab_pointer_checked, libxcb), xcb_void_cookie_t, (Ptr{xcb_connection_t}, xcb_timestamp_t), c, time)
end

function xcb_ungrab_pointer(c, time)
    ccall((:xcb_ungrab_pointer, libxcb), xcb_void_cookie_t, (Ptr{xcb_connection_t}, xcb_timestamp_t), c, time)
end

function xcb_grab_button_checked(c, owner_events, grab_window, event_mask, pointer_mode, keyboard_mode, confine_to, cursor, button, modifiers)
    ccall((:xcb_grab_button_checked, libxcb), xcb_void_cookie_t, (Ptr{xcb_connection_t}, UInt8, xcb_window_t, UInt16, UInt8, UInt8, xcb_window_t, xcb_cursor_t, UInt8, UInt16), c, owner_events, grab_window, event_mask, pointer_mode, keyboard_mode, confine_to, cursor, button, modifiers)
end

function xcb_grab_button(c, owner_events, grab_window, event_mask, pointer_mode, keyboard_mode, confine_to, cursor, button, modifiers)
    ccall((:xcb_grab_button, libxcb), xcb_void_cookie_t, (Ptr{xcb_connection_t}, UInt8, xcb_window_t, UInt16, UInt8, UInt8, xcb_window_t, xcb_cursor_t, UInt8, UInt16), c, owner_events, grab_window, event_mask, pointer_mode, keyboard_mode, confine_to, cursor, button, modifiers)
end

function xcb_ungrab_button_checked(c, button, grab_window, modifiers)
    ccall((:xcb_ungrab_button_checked, libxcb), xcb_void_cookie_t, (Ptr{xcb_connection_t}, UInt8, xcb_window_t, UInt16), c, button, grab_window, modifiers)
end

function xcb_ungrab_button(c, button, grab_window, modifiers)
    ccall((:xcb_ungrab_button, libxcb), xcb_void_cookie_t, (Ptr{xcb_connection_t}, UInt8, xcb_window_t, UInt16), c, button, grab_window, modifiers)
end

function xcb_change_active_pointer_grab_checked(c, cursor, time, event_mask)
    ccall((:xcb_change_active_pointer_grab_checked, libxcb), xcb_void_cookie_t, (Ptr{xcb_connection_t}, xcb_cursor_t, xcb_timestamp_t, UInt16), c, cursor, time, event_mask)
end

function xcb_change_active_pointer_grab(c, cursor, time, event_mask)
    ccall((:xcb_change_active_pointer_grab, libxcb), xcb_void_cookie_t, (Ptr{xcb_connection_t}, xcb_cursor_t, xcb_timestamp_t, UInt16), c, cursor, time, event_mask)
end

function xcb_grab_keyboard(c, owner_events, grab_window, time, pointer_mode, keyboard_mode)
    ccall((:xcb_grab_keyboard, libxcb), xcb_grab_keyboard_cookie_t, (Ptr{xcb_connection_t}, UInt8, xcb_window_t, xcb_timestamp_t, UInt8, UInt8), c, owner_events, grab_window, time, pointer_mode, keyboard_mode)
end

function xcb_grab_keyboard_unchecked(c, owner_events, grab_window, time, pointer_mode, keyboard_mode)
    ccall((:xcb_grab_keyboard_unchecked, libxcb), xcb_grab_keyboard_cookie_t, (Ptr{xcb_connection_t}, UInt8, xcb_window_t, xcb_timestamp_t, UInt8, UInt8), c, owner_events, grab_window, time, pointer_mode, keyboard_mode)
end

function xcb_grab_keyboard_reply(c, cookie, e)
    ccall((:xcb_grab_keyboard_reply, libxcb), Ptr{xcb_grab_keyboard_reply_t}, (Ptr{xcb_connection_t}, xcb_grab_keyboard_cookie_t, Ptr{Ptr{xcb_generic_error_t}}), c, cookie, e)
end

function xcb_ungrab_keyboard_checked(c, time)
    ccall((:xcb_ungrab_keyboard_checked, libxcb), xcb_void_cookie_t, (Ptr{xcb_connection_t}, xcb_timestamp_t), c, time)
end

function xcb_ungrab_keyboard(c, time)
    ccall((:xcb_ungrab_keyboard, libxcb), xcb_void_cookie_t, (Ptr{xcb_connection_t}, xcb_timestamp_t), c, time)
end

function xcb_grab_key_checked(c, owner_events, grab_window, modifiers, key, pointer_mode, keyboard_mode)
    ccall((:xcb_grab_key_checked, libxcb), xcb_void_cookie_t, (Ptr{xcb_connection_t}, UInt8, xcb_window_t, UInt16, xcb_keycode_t, UInt8, UInt8), c, owner_events, grab_window, modifiers, key, pointer_mode, keyboard_mode)
end

function xcb_grab_key(c, owner_events, grab_window, modifiers, key, pointer_mode, keyboard_mode)
    ccall((:xcb_grab_key, libxcb), xcb_void_cookie_t, (Ptr{xcb_connection_t}, UInt8, xcb_window_t, UInt16, xcb_keycode_t, UInt8, UInt8), c, owner_events, grab_window, modifiers, key, pointer_mode, keyboard_mode)
end

function xcb_ungrab_key_checked(c, key, grab_window, modifiers)
    ccall((:xcb_ungrab_key_checked, libxcb), xcb_void_cookie_t, (Ptr{xcb_connection_t}, xcb_keycode_t, xcb_window_t, UInt16), c, key, grab_window, modifiers)
end

function xcb_ungrab_key(c, key, grab_window, modifiers)
    ccall((:xcb_ungrab_key, libxcb), xcb_void_cookie_t, (Ptr{xcb_connection_t}, xcb_keycode_t, xcb_window_t, UInt16), c, key, grab_window, modifiers)
end

function xcb_allow_events_checked(c, mode, time)
    ccall((:xcb_allow_events_checked, libxcb), xcb_void_cookie_t, (Ptr{xcb_connection_t}, UInt8, xcb_timestamp_t), c, mode, time)
end

function xcb_allow_events(c, mode, time)
    ccall((:xcb_allow_events, libxcb), xcb_void_cookie_t, (Ptr{xcb_connection_t}, UInt8, xcb_timestamp_t), c, mode, time)
end

function xcb_grab_server_checked(c)
    ccall((:xcb_grab_server_checked, libxcb), xcb_void_cookie_t, (Ptr{xcb_connection_t},), c)
end

function xcb_grab_server(c)
    ccall((:xcb_grab_server, libxcb), xcb_void_cookie_t, (Ptr{xcb_connection_t},), c)
end

function xcb_ungrab_server_checked(c)
    ccall((:xcb_ungrab_server_checked, libxcb), xcb_void_cookie_t, (Ptr{xcb_connection_t},), c)
end

function xcb_ungrab_server(c)
    ccall((:xcb_ungrab_server, libxcb), xcb_void_cookie_t, (Ptr{xcb_connection_t},), c)
end

function xcb_query_pointer(c, window)
    ccall((:xcb_query_pointer, libxcb), xcb_query_pointer_cookie_t, (Ptr{xcb_connection_t}, xcb_window_t), c, window)
end

function xcb_query_pointer_unchecked(c, window)
    ccall((:xcb_query_pointer_unchecked, libxcb), xcb_query_pointer_cookie_t, (Ptr{xcb_connection_t}, xcb_window_t), c, window)
end

function xcb_query_pointer_reply(c, cookie, e)
    ccall((:xcb_query_pointer_reply, libxcb), Ptr{xcb_query_pointer_reply_t}, (Ptr{xcb_connection_t}, xcb_query_pointer_cookie_t, Ptr{Ptr{xcb_generic_error_t}}), c, cookie, e)
end

function xcb_timecoord_next(i)
    ccall((:xcb_timecoord_next, libxcb), Cvoid, (Ptr{xcb_timecoord_iterator_t},), i)
end

function xcb_timecoord_end(i)
    ccall((:xcb_timecoord_end, libxcb), xcb_generic_iterator_t, (xcb_timecoord_iterator_t,), i)
end

function xcb_get_motion_events_sizeof(_buffer)
    ccall((:xcb_get_motion_events_sizeof, libxcb), Cint, (Ptr{Cvoid},), _buffer)
end

function xcb_get_motion_events(c, window, start, stop)
    ccall((:xcb_get_motion_events, libxcb), xcb_get_motion_events_cookie_t, (Ptr{xcb_connection_t}, xcb_window_t, xcb_timestamp_t, xcb_timestamp_t), c, window, start, stop)
end

function xcb_get_motion_events_unchecked(c, window, start, stop)
    ccall((:xcb_get_motion_events_unchecked, libxcb), xcb_get_motion_events_cookie_t, (Ptr{xcb_connection_t}, xcb_window_t, xcb_timestamp_t, xcb_timestamp_t), c, window, start, stop)
end

function xcb_get_motion_events_events(R)
    ccall((:xcb_get_motion_events_events, libxcb), Ptr{xcb_timecoord_t}, (Ptr{xcb_get_motion_events_reply_t},), R)
end

function xcb_get_motion_events_events_length(R)
    ccall((:xcb_get_motion_events_events_length, libxcb), Cint, (Ptr{xcb_get_motion_events_reply_t},), R)
end

function xcb_get_motion_events_events_iterator(R)
    ccall((:xcb_get_motion_events_events_iterator, libxcb), xcb_timecoord_iterator_t, (Ptr{xcb_get_motion_events_reply_t},), R)
end

function xcb_get_motion_events_reply(c, cookie, e)
    ccall((:xcb_get_motion_events_reply, libxcb), Ptr{xcb_get_motion_events_reply_t}, (Ptr{xcb_connection_t}, xcb_get_motion_events_cookie_t, Ptr{Ptr{xcb_generic_error_t}}), c, cookie, e)
end

function xcb_translate_coordinates(c, src_window, dst_window, src_x, src_y)
    ccall((:xcb_translate_coordinates, libxcb), xcb_translate_coordinates_cookie_t, (Ptr{xcb_connection_t}, xcb_window_t, xcb_window_t, Int16, Int16), c, src_window, dst_window, src_x, src_y)
end

function xcb_translate_coordinates_unchecked(c, src_window, dst_window, src_x, src_y)
    ccall((:xcb_translate_coordinates_unchecked, libxcb), xcb_translate_coordinates_cookie_t, (Ptr{xcb_connection_t}, xcb_window_t, xcb_window_t, Int16, Int16), c, src_window, dst_window, src_x, src_y)
end

function xcb_translate_coordinates_reply(c, cookie, e)
    ccall((:xcb_translate_coordinates_reply, libxcb), Ptr{xcb_translate_coordinates_reply_t}, (Ptr{xcb_connection_t}, xcb_translate_coordinates_cookie_t, Ptr{Ptr{xcb_generic_error_t}}), c, cookie, e)
end

function xcb_warp_pointer_checked(c, src_window, dst_window, src_x, src_y, src_width, src_height, dst_x, dst_y)
    ccall((:xcb_warp_pointer_checked, libxcb), xcb_void_cookie_t, (Ptr{xcb_connection_t}, xcb_window_t, xcb_window_t, Int16, Int16, UInt16, UInt16, Int16, Int16), c, src_window, dst_window, src_x, src_y, src_width, src_height, dst_x, dst_y)
end

function xcb_warp_pointer(c, src_window, dst_window, src_x, src_y, src_width, src_height, dst_x, dst_y)
    ccall((:xcb_warp_pointer, libxcb), xcb_void_cookie_t, (Ptr{xcb_connection_t}, xcb_window_t, xcb_window_t, Int16, Int16, UInt16, UInt16, Int16, Int16), c, src_window, dst_window, src_x, src_y, src_width, src_height, dst_x, dst_y)
end

function xcb_set_input_focus_checked(c, revert_to, focus, time)
    ccall((:xcb_set_input_focus_checked, libxcb), xcb_void_cookie_t, (Ptr{xcb_connection_t}, UInt8, xcb_window_t, xcb_timestamp_t), c, revert_to, focus, time)
end

function xcb_set_input_focus(c, revert_to, focus, time)
    ccall((:xcb_set_input_focus, libxcb), xcb_void_cookie_t, (Ptr{xcb_connection_t}, UInt8, xcb_window_t, xcb_timestamp_t), c, revert_to, focus, time)
end

function xcb_get_input_focus(c)
    ccall((:xcb_get_input_focus, libxcb), xcb_get_input_focus_cookie_t, (Ptr{xcb_connection_t},), c)
end

function xcb_get_input_focus_unchecked(c)
    ccall((:xcb_get_input_focus_unchecked, libxcb), xcb_get_input_focus_cookie_t, (Ptr{xcb_connection_t},), c)
end

function xcb_get_input_focus_reply(c, cookie, e)
    ccall((:xcb_get_input_focus_reply, libxcb), Ptr{xcb_get_input_focus_reply_t}, (Ptr{xcb_connection_t}, xcb_get_input_focus_cookie_t, Ptr{Ptr{xcb_generic_error_t}}), c, cookie, e)
end

function xcb_query_keymap(c)
    ccall((:xcb_query_keymap, libxcb), xcb_query_keymap_cookie_t, (Ptr{xcb_connection_t},), c)
end

function xcb_query_keymap_unchecked(c)
    ccall((:xcb_query_keymap_unchecked, libxcb), xcb_query_keymap_cookie_t, (Ptr{xcb_connection_t},), c)
end

function xcb_query_keymap_reply(c, cookie, e)
    ccall((:xcb_query_keymap_reply, libxcb), Ptr{xcb_query_keymap_reply_t}, (Ptr{xcb_connection_t}, xcb_query_keymap_cookie_t, Ptr{Ptr{xcb_generic_error_t}}), c, cookie, e)
end

function xcb_open_font_sizeof(_buffer)
    ccall((:xcb_open_font_sizeof, libxcb), Cint, (Ptr{Cvoid},), _buffer)
end

function xcb_open_font_checked(c, fid, name_len, name)
    ccall((:xcb_open_font_checked, libxcb), xcb_void_cookie_t, (Ptr{xcb_connection_t}, xcb_font_t, UInt16, Cstring), c, fid, name_len, name)
end

function xcb_open_font(c, fid, name_len, name)
    ccall((:xcb_open_font, libxcb), xcb_void_cookie_t, (Ptr{xcb_connection_t}, xcb_font_t, UInt16, Cstring), c, fid, name_len, name)
end

function xcb_open_font_name(R)
    ccall((:xcb_open_font_name, libxcb), Cstring, (Ptr{xcb_open_font_request_t},), R)
end

function xcb_open_font_name_length(R)
    ccall((:xcb_open_font_name_length, libxcb), Cint, (Ptr{xcb_open_font_request_t},), R)
end

function xcb_open_font_name_end(R)
    ccall((:xcb_open_font_name_end, libxcb), xcb_generic_iterator_t, (Ptr{xcb_open_font_request_t},), R)
end

function xcb_close_font_checked(c, font)
    ccall((:xcb_close_font_checked, libxcb), xcb_void_cookie_t, (Ptr{xcb_connection_t}, xcb_font_t), c, font)
end

function xcb_close_font(c, font)
    ccall((:xcb_close_font, libxcb), xcb_void_cookie_t, (Ptr{xcb_connection_t}, xcb_font_t), c, font)
end

function xcb_fontprop_next(i)
    ccall((:xcb_fontprop_next, libxcb), Cvoid, (Ptr{xcb_fontprop_iterator_t},), i)
end

function xcb_fontprop_end(i)
    ccall((:xcb_fontprop_end, libxcb), xcb_generic_iterator_t, (xcb_fontprop_iterator_t,), i)
end

function xcb_charinfo_next(i)
    ccall((:xcb_charinfo_next, libxcb), Cvoid, (Ptr{xcb_charinfo_iterator_t},), i)
end

function xcb_charinfo_end(i)
    ccall((:xcb_charinfo_end, libxcb), xcb_generic_iterator_t, (xcb_charinfo_iterator_t,), i)
end

function xcb_query_font_sizeof(_buffer)
    ccall((:xcb_query_font_sizeof, libxcb), Cint, (Ptr{Cvoid},), _buffer)
end

function xcb_query_font(c, font)
    ccall((:xcb_query_font, libxcb), xcb_query_font_cookie_t, (Ptr{xcb_connection_t}, xcb_fontable_t), c, font)
end

function xcb_query_font_unchecked(c, font)
    ccall((:xcb_query_font_unchecked, libxcb), xcb_query_font_cookie_t, (Ptr{xcb_connection_t}, xcb_fontable_t), c, font)
end

function xcb_query_font_properties(R)
    ccall((:xcb_query_font_properties, libxcb), Ptr{xcb_fontprop_t}, (Ptr{xcb_query_font_reply_t},), R)
end

function xcb_query_font_properties_length(R)
    ccall((:xcb_query_font_properties_length, libxcb), Cint, (Ptr{xcb_query_font_reply_t},), R)
end

function xcb_query_font_properties_iterator(R)
    ccall((:xcb_query_font_properties_iterator, libxcb), xcb_fontprop_iterator_t, (Ptr{xcb_query_font_reply_t},), R)
end

function xcb_query_font_char_infos(R)
    ccall((:xcb_query_font_char_infos, libxcb), Ptr{xcb_charinfo_t}, (Ptr{xcb_query_font_reply_t},), R)
end

function xcb_query_font_char_infos_length(R)
    ccall((:xcb_query_font_char_infos_length, libxcb), Cint, (Ptr{xcb_query_font_reply_t},), R)
end

function xcb_query_font_char_infos_iterator(R)
    ccall((:xcb_query_font_char_infos_iterator, libxcb), xcb_charinfo_iterator_t, (Ptr{xcb_query_font_reply_t},), R)
end

function xcb_query_font_reply(c, cookie, e)
    ccall((:xcb_query_font_reply, libxcb), Ptr{xcb_query_font_reply_t}, (Ptr{xcb_connection_t}, xcb_query_font_cookie_t, Ptr{Ptr{xcb_generic_error_t}}), c, cookie, e)
end

function xcb_query_text_extents_sizeof(_buffer, string_len)
    ccall((:xcb_query_text_extents_sizeof, libxcb), Cint, (Ptr{Cvoid}, UInt32), _buffer, string_len)
end

function xcb_query_text_extents(c, font, string_len, string)
    ccall((:xcb_query_text_extents, libxcb), xcb_query_text_extents_cookie_t, (Ptr{xcb_connection_t}, xcb_fontable_t, UInt32, Ptr{xcb_char2b_t}), c, font, string_len, string)
end

function xcb_query_text_extents_unchecked(c, font, string_len, string)
    ccall((:xcb_query_text_extents_unchecked, libxcb), xcb_query_text_extents_cookie_t, (Ptr{xcb_connection_t}, xcb_fontable_t, UInt32, Ptr{xcb_char2b_t}), c, font, string_len, string)
end

function xcb_query_text_extents_reply(c, cookie, e)
    ccall((:xcb_query_text_extents_reply, libxcb), Ptr{xcb_query_text_extents_reply_t}, (Ptr{xcb_connection_t}, xcb_query_text_extents_cookie_t, Ptr{Ptr{xcb_generic_error_t}}), c, cookie, e)
end

function xcb_str_sizeof(_buffer)
    ccall((:xcb_str_sizeof, libxcb), Cint, (Ptr{Cvoid},), _buffer)
end

function xcb_str_name(R)
    ccall((:xcb_str_name, libxcb), Cstring, (Ptr{xcb_str_t},), R)
end

function xcb_str_name_length(R)
    ccall((:xcb_str_name_length, libxcb), Cint, (Ptr{xcb_str_t},), R)
end

function xcb_str_name_end(R)
    ccall((:xcb_str_name_end, libxcb), xcb_generic_iterator_t, (Ptr{xcb_str_t},), R)
end

function xcb_str_next(i)
    ccall((:xcb_str_next, libxcb), Cvoid, (Ptr{xcb_str_iterator_t},), i)
end

function xcb_str_end(i)
    ccall((:xcb_str_end, libxcb), xcb_generic_iterator_t, (xcb_str_iterator_t,), i)
end

function xcb_list_fonts_sizeof(_buffer)
    ccall((:xcb_list_fonts_sizeof, libxcb), Cint, (Ptr{Cvoid},), _buffer)
end

function xcb_list_fonts(c, max_names, pattern_len, pattern)
    ccall((:xcb_list_fonts, libxcb), xcb_list_fonts_cookie_t, (Ptr{xcb_connection_t}, UInt16, UInt16, Cstring), c, max_names, pattern_len, pattern)
end

function xcb_list_fonts_unchecked(c, max_names, pattern_len, pattern)
    ccall((:xcb_list_fonts_unchecked, libxcb), xcb_list_fonts_cookie_t, (Ptr{xcb_connection_t}, UInt16, UInt16, Cstring), c, max_names, pattern_len, pattern)
end

function xcb_list_fonts_names_length(R)
    ccall((:xcb_list_fonts_names_length, libxcb), Cint, (Ptr{xcb_list_fonts_reply_t},), R)
end

function xcb_list_fonts_names_iterator(R)
    ccall((:xcb_list_fonts_names_iterator, libxcb), xcb_str_iterator_t, (Ptr{xcb_list_fonts_reply_t},), R)
end

function xcb_list_fonts_reply(c, cookie, e)
    ccall((:xcb_list_fonts_reply, libxcb), Ptr{xcb_list_fonts_reply_t}, (Ptr{xcb_connection_t}, xcb_list_fonts_cookie_t, Ptr{Ptr{xcb_generic_error_t}}), c, cookie, e)
end

function xcb_list_fonts_with_info_sizeof(_buffer)
    ccall((:xcb_list_fonts_with_info_sizeof, libxcb), Cint, (Ptr{Cvoid},), _buffer)
end

function xcb_list_fonts_with_info(c, max_names, pattern_len, pattern)
    ccall((:xcb_list_fonts_with_info, libxcb), xcb_list_fonts_with_info_cookie_t, (Ptr{xcb_connection_t}, UInt16, UInt16, Cstring), c, max_names, pattern_len, pattern)
end

function xcb_list_fonts_with_info_unchecked(c, max_names, pattern_len, pattern)
    ccall((:xcb_list_fonts_with_info_unchecked, libxcb), xcb_list_fonts_with_info_cookie_t, (Ptr{xcb_connection_t}, UInt16, UInt16, Cstring), c, max_names, pattern_len, pattern)
end

function xcb_list_fonts_with_info_properties(R)
    ccall((:xcb_list_fonts_with_info_properties, libxcb), Ptr{xcb_fontprop_t}, (Ptr{xcb_list_fonts_with_info_reply_t},), R)
end

function xcb_list_fonts_with_info_properties_length(R)
    ccall((:xcb_list_fonts_with_info_properties_length, libxcb), Cint, (Ptr{xcb_list_fonts_with_info_reply_t},), R)
end

function xcb_list_fonts_with_info_properties_iterator(R)
    ccall((:xcb_list_fonts_with_info_properties_iterator, libxcb), xcb_fontprop_iterator_t, (Ptr{xcb_list_fonts_with_info_reply_t},), R)
end

function xcb_list_fonts_with_info_name(R)
    ccall((:xcb_list_fonts_with_info_name, libxcb), Cstring, (Ptr{xcb_list_fonts_with_info_reply_t},), R)
end

function xcb_list_fonts_with_info_name_length(R)
    ccall((:xcb_list_fonts_with_info_name_length, libxcb), Cint, (Ptr{xcb_list_fonts_with_info_reply_t},), R)
end

function xcb_list_fonts_with_info_name_end(R)
    ccall((:xcb_list_fonts_with_info_name_end, libxcb), xcb_generic_iterator_t, (Ptr{xcb_list_fonts_with_info_reply_t},), R)
end

function xcb_list_fonts_with_info_reply(c, cookie, e)
    ccall((:xcb_list_fonts_with_info_reply, libxcb), Ptr{xcb_list_fonts_with_info_reply_t}, (Ptr{xcb_connection_t}, xcb_list_fonts_with_info_cookie_t, Ptr{Ptr{xcb_generic_error_t}}), c, cookie, e)
end

function xcb_set_font_path_sizeof(_buffer)
    ccall((:xcb_set_font_path_sizeof, libxcb), Cint, (Ptr{Cvoid},), _buffer)
end

function xcb_set_font_path_checked(c, font_qty, font)
    ccall((:xcb_set_font_path_checked, libxcb), xcb_void_cookie_t, (Ptr{xcb_connection_t}, UInt16, Ptr{xcb_str_t}), c, font_qty, font)
end

function xcb_set_font_path(c, font_qty, font)
    ccall((:xcb_set_font_path, libxcb), xcb_void_cookie_t, (Ptr{xcb_connection_t}, UInt16, Ptr{xcb_str_t}), c, font_qty, font)
end

function xcb_set_font_path_font_length(R)
    ccall((:xcb_set_font_path_font_length, libxcb), Cint, (Ptr{xcb_set_font_path_request_t},), R)
end

function xcb_set_font_path_font_iterator(R)
    ccall((:xcb_set_font_path_font_iterator, libxcb), xcb_str_iterator_t, (Ptr{xcb_set_font_path_request_t},), R)
end

function xcb_get_font_path_sizeof(_buffer)
    ccall((:xcb_get_font_path_sizeof, libxcb), Cint, (Ptr{Cvoid},), _buffer)
end

function xcb_get_font_path(c)
    ccall((:xcb_get_font_path, libxcb), xcb_get_font_path_cookie_t, (Ptr{xcb_connection_t},), c)
end

function xcb_get_font_path_unchecked(c)
    ccall((:xcb_get_font_path_unchecked, libxcb), xcb_get_font_path_cookie_t, (Ptr{xcb_connection_t},), c)
end

function xcb_get_font_path_path_length(R)
    ccall((:xcb_get_font_path_path_length, libxcb), Cint, (Ptr{xcb_get_font_path_reply_t},), R)
end

function xcb_get_font_path_path_iterator(R)
    ccall((:xcb_get_font_path_path_iterator, libxcb), xcb_str_iterator_t, (Ptr{xcb_get_font_path_reply_t},), R)
end

function xcb_get_font_path_reply(c, cookie, e)
    ccall((:xcb_get_font_path_reply, libxcb), Ptr{xcb_get_font_path_reply_t}, (Ptr{xcb_connection_t}, xcb_get_font_path_cookie_t, Ptr{Ptr{xcb_generic_error_t}}), c, cookie, e)
end

function xcb_create_pixmap_checked(c, depth, pid, drawable, width, height)
    ccall((:xcb_create_pixmap_checked, libxcb), xcb_void_cookie_t, (Ptr{xcb_connection_t}, UInt8, xcb_pixmap_t, xcb_drawable_t, UInt16, UInt16), c, depth, pid, drawable, width, height)
end

function xcb_create_pixmap(c, depth, pid, drawable, width, height)
    ccall((:xcb_create_pixmap, libxcb), xcb_void_cookie_t, (Ptr{xcb_connection_t}, UInt8, xcb_pixmap_t, xcb_drawable_t, UInt16, UInt16), c, depth, pid, drawable, width, height)
end

function xcb_free_pixmap_checked(c, pixmap)
    ccall((:xcb_free_pixmap_checked, libxcb), xcb_void_cookie_t, (Ptr{xcb_connection_t}, xcb_pixmap_t), c, pixmap)
end

function xcb_free_pixmap(c, pixmap)
    ccall((:xcb_free_pixmap, libxcb), xcb_void_cookie_t, (Ptr{xcb_connection_t}, xcb_pixmap_t), c, pixmap)
end

function xcb_create_gc_value_list_serialize(_buffer, value_mask, _aux)
    ccall((:xcb_create_gc_value_list_serialize, libxcb), Cint, (Ptr{Ptr{Cvoid}}, UInt32, Ptr{xcb_create_gc_value_list_t}), _buffer, value_mask, _aux)
end

function xcb_create_gc_value_list_unpack(_buffer, value_mask, _aux)
    ccall((:xcb_create_gc_value_list_unpack, libxcb), Cint, (Ptr{Cvoid}, UInt32, Ptr{xcb_create_gc_value_list_t}), _buffer, value_mask, _aux)
end

function xcb_create_gc_value_list_sizeof(_buffer, value_mask)
    ccall((:xcb_create_gc_value_list_sizeof, libxcb), Cint, (Ptr{Cvoid}, UInt32), _buffer, value_mask)
end

function xcb_create_gc_sizeof(_buffer)
    ccall((:xcb_create_gc_sizeof, libxcb), Cint, (Ptr{Cvoid},), _buffer)
end

function xcb_create_gc_checked(c, cid, drawable, value_mask, value_list)
    ccall((:xcb_create_gc_checked, libxcb), xcb_void_cookie_t, (Ptr{xcb_connection_t}, xcb_gcontext_t, xcb_drawable_t, UInt32, Ptr{Cvoid}), c, cid, drawable, value_mask, value_list)
end

function xcb_create_gc(c, cid, drawable, value_mask, value_list)
    ccall((:xcb_create_gc, libxcb), xcb_void_cookie_t, (Ptr{xcb_connection_t}, xcb_gcontext_t, xcb_drawable_t, UInt32, Ptr{Cvoid}), c, cid, drawable, value_mask, value_list)
end

function xcb_create_gc_aux_checked(c, cid, drawable, value_mask, value_list)
    ccall((:xcb_create_gc_aux_checked, libxcb), xcb_void_cookie_t, (Ptr{xcb_connection_t}, xcb_gcontext_t, xcb_drawable_t, UInt32, Ptr{xcb_create_gc_value_list_t}), c, cid, drawable, value_mask, value_list)
end

function xcb_create_gc_aux(c, cid, drawable, value_mask, value_list)
    ccall((:xcb_create_gc_aux, libxcb), xcb_void_cookie_t, (Ptr{xcb_connection_t}, xcb_gcontext_t, xcb_drawable_t, UInt32, Ptr{xcb_create_gc_value_list_t}), c, cid, drawable, value_mask, value_list)
end

function xcb_create_gc_value_list(R)
    ccall((:xcb_create_gc_value_list, libxcb), Ptr{Cvoid}, (Ptr{xcb_create_gc_request_t},), R)
end

function xcb_change_gc_value_list_serialize(_buffer, value_mask, _aux)
    ccall((:xcb_change_gc_value_list_serialize, libxcb), Cint, (Ptr{Ptr{Cvoid}}, UInt32, Ptr{xcb_change_gc_value_list_t}), _buffer, value_mask, _aux)
end

function xcb_change_gc_value_list_unpack(_buffer, value_mask, _aux)
    ccall((:xcb_change_gc_value_list_unpack, libxcb), Cint, (Ptr{Cvoid}, UInt32, Ptr{xcb_change_gc_value_list_t}), _buffer, value_mask, _aux)
end

function xcb_change_gc_value_list_sizeof(_buffer, value_mask)
    ccall((:xcb_change_gc_value_list_sizeof, libxcb), Cint, (Ptr{Cvoid}, UInt32), _buffer, value_mask)
end

function xcb_change_gc_sizeof(_buffer)
    ccall((:xcb_change_gc_sizeof, libxcb), Cint, (Ptr{Cvoid},), _buffer)
end

function xcb_change_gc_checked(c, gc, value_mask, value_list)
    ccall((:xcb_change_gc_checked, libxcb), xcb_void_cookie_t, (Ptr{xcb_connection_t}, xcb_gcontext_t, UInt32, Ptr{Cvoid}), c, gc, value_mask, value_list)
end

function xcb_change_gc(c, gc, value_mask, value_list)
    ccall((:xcb_change_gc, libxcb), xcb_void_cookie_t, (Ptr{xcb_connection_t}, xcb_gcontext_t, UInt32, Ptr{Cvoid}), c, gc, value_mask, value_list)
end

function xcb_change_gc_aux_checked(c, gc, value_mask, value_list)
    ccall((:xcb_change_gc_aux_checked, libxcb), xcb_void_cookie_t, (Ptr{xcb_connection_t}, xcb_gcontext_t, UInt32, Ptr{xcb_change_gc_value_list_t}), c, gc, value_mask, value_list)
end

function xcb_change_gc_aux(c, gc, value_mask, value_list)
    ccall((:xcb_change_gc_aux, libxcb), xcb_void_cookie_t, (Ptr{xcb_connection_t}, xcb_gcontext_t, UInt32, Ptr{xcb_change_gc_value_list_t}), c, gc, value_mask, value_list)
end

function xcb_change_gc_value_list(R)
    ccall((:xcb_change_gc_value_list, libxcb), Ptr{Cvoid}, (Ptr{xcb_change_gc_request_t},), R)
end

function xcb_copy_gc_checked(c, src_gc, dst_gc, value_mask)
    ccall((:xcb_copy_gc_checked, libxcb), xcb_void_cookie_t, (Ptr{xcb_connection_t}, xcb_gcontext_t, xcb_gcontext_t, UInt32), c, src_gc, dst_gc, value_mask)
end

function xcb_copy_gc(c, src_gc, dst_gc, value_mask)
    ccall((:xcb_copy_gc, libxcb), xcb_void_cookie_t, (Ptr{xcb_connection_t}, xcb_gcontext_t, xcb_gcontext_t, UInt32), c, src_gc, dst_gc, value_mask)
end

function xcb_set_dashes_sizeof(_buffer)
    ccall((:xcb_set_dashes_sizeof, libxcb), Cint, (Ptr{Cvoid},), _buffer)
end

function xcb_set_dashes_checked(c, gc, dash_offset, dashes_len, dashes)
    ccall((:xcb_set_dashes_checked, libxcb), xcb_void_cookie_t, (Ptr{xcb_connection_t}, xcb_gcontext_t, UInt16, UInt16, Ptr{UInt8}), c, gc, dash_offset, dashes_len, dashes)
end

function xcb_set_dashes(c, gc, dash_offset, dashes_len, dashes)
    ccall((:xcb_set_dashes, libxcb), xcb_void_cookie_t, (Ptr{xcb_connection_t}, xcb_gcontext_t, UInt16, UInt16, Ptr{UInt8}), c, gc, dash_offset, dashes_len, dashes)
end

function xcb_set_dashes_dashes(R)
    ccall((:xcb_set_dashes_dashes, libxcb), Ptr{UInt8}, (Ptr{xcb_set_dashes_request_t},), R)
end

function xcb_set_dashes_dashes_length(R)
    ccall((:xcb_set_dashes_dashes_length, libxcb), Cint, (Ptr{xcb_set_dashes_request_t},), R)
end

function xcb_set_dashes_dashes_end(R)
    ccall((:xcb_set_dashes_dashes_end, libxcb), xcb_generic_iterator_t, (Ptr{xcb_set_dashes_request_t},), R)
end

function xcb_set_clip_rectangles_sizeof(_buffer, rectangles_len)
    ccall((:xcb_set_clip_rectangles_sizeof, libxcb), Cint, (Ptr{Cvoid}, UInt32), _buffer, rectangles_len)
end

function xcb_set_clip_rectangles_checked(c, ordering, gc, clip_x_origin, clip_y_origin, rectangles_len, rectangles)
    ccall((:xcb_set_clip_rectangles_checked, libxcb), xcb_void_cookie_t, (Ptr{xcb_connection_t}, UInt8, xcb_gcontext_t, Int16, Int16, UInt32, Ptr{xcb_rectangle_t}), c, ordering, gc, clip_x_origin, clip_y_origin, rectangles_len, rectangles)
end

function xcb_set_clip_rectangles(c, ordering, gc, clip_x_origin, clip_y_origin, rectangles_len, rectangles)
    ccall((:xcb_set_clip_rectangles, libxcb), xcb_void_cookie_t, (Ptr{xcb_connection_t}, UInt8, xcb_gcontext_t, Int16, Int16, UInt32, Ptr{xcb_rectangle_t}), c, ordering, gc, clip_x_origin, clip_y_origin, rectangles_len, rectangles)
end

function xcb_set_clip_rectangles_rectangles(R)
    ccall((:xcb_set_clip_rectangles_rectangles, libxcb), Ptr{xcb_rectangle_t}, (Ptr{xcb_set_clip_rectangles_request_t},), R)
end

function xcb_set_clip_rectangles_rectangles_length(R)
    ccall((:xcb_set_clip_rectangles_rectangles_length, libxcb), Cint, (Ptr{xcb_set_clip_rectangles_request_t},), R)
end

function xcb_set_clip_rectangles_rectangles_iterator(R)
    ccall((:xcb_set_clip_rectangles_rectangles_iterator, libxcb), xcb_rectangle_iterator_t, (Ptr{xcb_set_clip_rectangles_request_t},), R)
end

function xcb_free_gc_checked(c, gc)
    ccall((:xcb_free_gc_checked, libxcb), xcb_void_cookie_t, (Ptr{xcb_connection_t}, xcb_gcontext_t), c, gc)
end

function xcb_free_gc(c, gc)
    ccall((:xcb_free_gc, libxcb), xcb_void_cookie_t, (Ptr{xcb_connection_t}, xcb_gcontext_t), c, gc)
end

function xcb_clear_area_checked(c, exposures, window, x, y, width, height)
    ccall((:xcb_clear_area_checked, libxcb), xcb_void_cookie_t, (Ptr{xcb_connection_t}, UInt8, xcb_window_t, Int16, Int16, UInt16, UInt16), c, exposures, window, x, y, width, height)
end

function xcb_clear_area(c, exposures, window, x, y, width, height)
    ccall((:xcb_clear_area, libxcb), xcb_void_cookie_t, (Ptr{xcb_connection_t}, UInt8, xcb_window_t, Int16, Int16, UInt16, UInt16), c, exposures, window, x, y, width, height)
end

function xcb_copy_area_checked(c, src_drawable, dst_drawable, gc, src_x, src_y, dst_x, dst_y, width, height)
    ccall((:xcb_copy_area_checked, libxcb), xcb_void_cookie_t, (Ptr{xcb_connection_t}, xcb_drawable_t, xcb_drawable_t, xcb_gcontext_t, Int16, Int16, Int16, Int16, UInt16, UInt16), c, src_drawable, dst_drawable, gc, src_x, src_y, dst_x, dst_y, width, height)
end

function xcb_copy_area(c, src_drawable, dst_drawable, gc, src_x, src_y, dst_x, dst_y, width, height)
    ccall((:xcb_copy_area, libxcb), xcb_void_cookie_t, (Ptr{xcb_connection_t}, xcb_drawable_t, xcb_drawable_t, xcb_gcontext_t, Int16, Int16, Int16, Int16, UInt16, UInt16), c, src_drawable, dst_drawable, gc, src_x, src_y, dst_x, dst_y, width, height)
end

function xcb_copy_plane_checked(c, src_drawable, dst_drawable, gc, src_x, src_y, dst_x, dst_y, width, height, bit_plane)
    ccall((:xcb_copy_plane_checked, libxcb), xcb_void_cookie_t, (Ptr{xcb_connection_t}, xcb_drawable_t, xcb_drawable_t, xcb_gcontext_t, Int16, Int16, Int16, Int16, UInt16, UInt16, UInt32), c, src_drawable, dst_drawable, gc, src_x, src_y, dst_x, dst_y, width, height, bit_plane)
end

function xcb_copy_plane(c, src_drawable, dst_drawable, gc, src_x, src_y, dst_x, dst_y, width, height, bit_plane)
    ccall((:xcb_copy_plane, libxcb), xcb_void_cookie_t, (Ptr{xcb_connection_t}, xcb_drawable_t, xcb_drawable_t, xcb_gcontext_t, Int16, Int16, Int16, Int16, UInt16, UInt16, UInt32), c, src_drawable, dst_drawable, gc, src_x, src_y, dst_x, dst_y, width, height, bit_plane)
end

function xcb_poly_point_sizeof(_buffer, points_len)
    ccall((:xcb_poly_point_sizeof, libxcb), Cint, (Ptr{Cvoid}, UInt32), _buffer, points_len)
end

function xcb_poly_point_checked(c, coordinate_mode, drawable, gc, points_len, points)
    ccall((:xcb_poly_point_checked, libxcb), xcb_void_cookie_t, (Ptr{xcb_connection_t}, UInt8, xcb_drawable_t, xcb_gcontext_t, UInt32, Ptr{xcb_point_t}), c, coordinate_mode, drawable, gc, points_len, points)
end

function xcb_poly_point(c, coordinate_mode, drawable, gc, points_len, points)
    ccall((:xcb_poly_point, libxcb), xcb_void_cookie_t, (Ptr{xcb_connection_t}, UInt8, xcb_drawable_t, xcb_gcontext_t, UInt32, Ptr{xcb_point_t}), c, coordinate_mode, drawable, gc, points_len, points)
end

function xcb_poly_point_points(R)
    ccall((:xcb_poly_point_points, libxcb), Ptr{xcb_point_t}, (Ptr{xcb_poly_point_request_t},), R)
end

function xcb_poly_point_points_length(R)
    ccall((:xcb_poly_point_points_length, libxcb), Cint, (Ptr{xcb_poly_point_request_t},), R)
end

function xcb_poly_point_points_iterator(R)
    ccall((:xcb_poly_point_points_iterator, libxcb), xcb_point_iterator_t, (Ptr{xcb_poly_point_request_t},), R)
end

function xcb_poly_line_sizeof(_buffer, points_len)
    ccall((:xcb_poly_line_sizeof, libxcb), Cint, (Ptr{Cvoid}, UInt32), _buffer, points_len)
end

function xcb_poly_line_checked(c, coordinate_mode, drawable, gc, points_len, points)
    ccall((:xcb_poly_line_checked, libxcb), xcb_void_cookie_t, (Ptr{xcb_connection_t}, UInt8, xcb_drawable_t, xcb_gcontext_t, UInt32, Ptr{xcb_point_t}), c, coordinate_mode, drawable, gc, points_len, points)
end

function xcb_poly_line(c, coordinate_mode, drawable, gc, points_len, points)
    ccall((:xcb_poly_line, libxcb), xcb_void_cookie_t, (Ptr{xcb_connection_t}, UInt8, xcb_drawable_t, xcb_gcontext_t, UInt32, Ptr{xcb_point_t}), c, coordinate_mode, drawable, gc, points_len, points)
end

function xcb_poly_line_points(R)
    ccall((:xcb_poly_line_points, libxcb), Ptr{xcb_point_t}, (Ptr{xcb_poly_line_request_t},), R)
end

function xcb_poly_line_points_length(R)
    ccall((:xcb_poly_line_points_length, libxcb), Cint, (Ptr{xcb_poly_line_request_t},), R)
end

function xcb_poly_line_points_iterator(R)
    ccall((:xcb_poly_line_points_iterator, libxcb), xcb_point_iterator_t, (Ptr{xcb_poly_line_request_t},), R)
end

function xcb_segment_next(i)
    ccall((:xcb_segment_next, libxcb), Cvoid, (Ptr{xcb_segment_iterator_t},), i)
end

function xcb_segment_end(i)
    ccall((:xcb_segment_end, libxcb), xcb_generic_iterator_t, (xcb_segment_iterator_t,), i)
end

function xcb_poly_segment_sizeof(_buffer, segments_len)
    ccall((:xcb_poly_segment_sizeof, libxcb), Cint, (Ptr{Cvoid}, UInt32), _buffer, segments_len)
end

function xcb_poly_segment_checked(c, drawable, gc, segments_len, segments)
    ccall((:xcb_poly_segment_checked, libxcb), xcb_void_cookie_t, (Ptr{xcb_connection_t}, xcb_drawable_t, xcb_gcontext_t, UInt32, Ptr{xcb_segment_t}), c, drawable, gc, segments_len, segments)
end

function xcb_poly_segment(c, drawable, gc, segments_len, segments)
    ccall((:xcb_poly_segment, libxcb), xcb_void_cookie_t, (Ptr{xcb_connection_t}, xcb_drawable_t, xcb_gcontext_t, UInt32, Ptr{xcb_segment_t}), c, drawable, gc, segments_len, segments)
end

function xcb_poly_segment_segments(R)
    ccall((:xcb_poly_segment_segments, libxcb), Ptr{xcb_segment_t}, (Ptr{xcb_poly_segment_request_t},), R)
end

function xcb_poly_segment_segments_length(R)
    ccall((:xcb_poly_segment_segments_length, libxcb), Cint, (Ptr{xcb_poly_segment_request_t},), R)
end

function xcb_poly_segment_segments_iterator(R)
    ccall((:xcb_poly_segment_segments_iterator, libxcb), xcb_segment_iterator_t, (Ptr{xcb_poly_segment_request_t},), R)
end

function xcb_poly_rectangle_sizeof(_buffer, rectangles_len)
    ccall((:xcb_poly_rectangle_sizeof, libxcb), Cint, (Ptr{Cvoid}, UInt32), _buffer, rectangles_len)
end

function xcb_poly_rectangle_checked(c, drawable, gc, rectangles_len, rectangles)
    ccall((:xcb_poly_rectangle_checked, libxcb), xcb_void_cookie_t, (Ptr{xcb_connection_t}, xcb_drawable_t, xcb_gcontext_t, UInt32, Ptr{xcb_rectangle_t}), c, drawable, gc, rectangles_len, rectangles)
end

function xcb_poly_rectangle(c, drawable, gc, rectangles_len, rectangles)
    ccall((:xcb_poly_rectangle, libxcb), xcb_void_cookie_t, (Ptr{xcb_connection_t}, xcb_drawable_t, xcb_gcontext_t, UInt32, Ptr{xcb_rectangle_t}), c, drawable, gc, rectangles_len, rectangles)
end

function xcb_poly_rectangle_rectangles(R)
    ccall((:xcb_poly_rectangle_rectangles, libxcb), Ptr{xcb_rectangle_t}, (Ptr{xcb_poly_rectangle_request_t},), R)
end

function xcb_poly_rectangle_rectangles_length(R)
    ccall((:xcb_poly_rectangle_rectangles_length, libxcb), Cint, (Ptr{xcb_poly_rectangle_request_t},), R)
end

function xcb_poly_rectangle_rectangles_iterator(R)
    ccall((:xcb_poly_rectangle_rectangles_iterator, libxcb), xcb_rectangle_iterator_t, (Ptr{xcb_poly_rectangle_request_t},), R)
end

function xcb_poly_arc_sizeof(_buffer, arcs_len)
    ccall((:xcb_poly_arc_sizeof, libxcb), Cint, (Ptr{Cvoid}, UInt32), _buffer, arcs_len)
end

function xcb_poly_arc_checked(c, drawable, gc, arcs_len, arcs)
    ccall((:xcb_poly_arc_checked, libxcb), xcb_void_cookie_t, (Ptr{xcb_connection_t}, xcb_drawable_t, xcb_gcontext_t, UInt32, Ptr{xcb_arc_t}), c, drawable, gc, arcs_len, arcs)
end

function xcb_poly_arc(c, drawable, gc, arcs_len, arcs)
    ccall((:xcb_poly_arc, libxcb), xcb_void_cookie_t, (Ptr{xcb_connection_t}, xcb_drawable_t, xcb_gcontext_t, UInt32, Ptr{xcb_arc_t}), c, drawable, gc, arcs_len, arcs)
end

function xcb_poly_arc_arcs(R)
    ccall((:xcb_poly_arc_arcs, libxcb), Ptr{xcb_arc_t}, (Ptr{xcb_poly_arc_request_t},), R)
end

function xcb_poly_arc_arcs_length(R)
    ccall((:xcb_poly_arc_arcs_length, libxcb), Cint, (Ptr{xcb_poly_arc_request_t},), R)
end

function xcb_poly_arc_arcs_iterator(R)
    ccall((:xcb_poly_arc_arcs_iterator, libxcb), xcb_arc_iterator_t, (Ptr{xcb_poly_arc_request_t},), R)
end

function xcb_fill_poly_sizeof(_buffer, points_len)
    ccall((:xcb_fill_poly_sizeof, libxcb), Cint, (Ptr{Cvoid}, UInt32), _buffer, points_len)
end

function xcb_fill_poly_checked(c, drawable, gc, shape, coordinate_mode, points_len, points)
    ccall((:xcb_fill_poly_checked, libxcb), xcb_void_cookie_t, (Ptr{xcb_connection_t}, xcb_drawable_t, xcb_gcontext_t, UInt8, UInt8, UInt32, Ptr{xcb_point_t}), c, drawable, gc, shape, coordinate_mode, points_len, points)
end

function xcb_fill_poly(c, drawable, gc, shape, coordinate_mode, points_len, points)
    ccall((:xcb_fill_poly, libxcb), xcb_void_cookie_t, (Ptr{xcb_connection_t}, xcb_drawable_t, xcb_gcontext_t, UInt8, UInt8, UInt32, Ptr{xcb_point_t}), c, drawable, gc, shape, coordinate_mode, points_len, points)
end

function xcb_fill_poly_points(R)
    ccall((:xcb_fill_poly_points, libxcb), Ptr{xcb_point_t}, (Ptr{xcb_fill_poly_request_t},), R)
end

function xcb_fill_poly_points_length(R)
    ccall((:xcb_fill_poly_points_length, libxcb), Cint, (Ptr{xcb_fill_poly_request_t},), R)
end

function xcb_fill_poly_points_iterator(R)
    ccall((:xcb_fill_poly_points_iterator, libxcb), xcb_point_iterator_t, (Ptr{xcb_fill_poly_request_t},), R)
end

function xcb_poly_fill_rectangle_sizeof(_buffer, rectangles_len)
    ccall((:xcb_poly_fill_rectangle_sizeof, libxcb), Cint, (Ptr{Cvoid}, UInt32), _buffer, rectangles_len)
end

function xcb_poly_fill_rectangle_checked(c, drawable, gc, rectangles_len, rectangles)
    ccall((:xcb_poly_fill_rectangle_checked, libxcb), xcb_void_cookie_t, (Ptr{xcb_connection_t}, xcb_drawable_t, xcb_gcontext_t, UInt32, Ptr{xcb_rectangle_t}), c, drawable, gc, rectangles_len, rectangles)
end

function xcb_poly_fill_rectangle(c, drawable, gc, rectangles_len, rectangles)
    ccall((:xcb_poly_fill_rectangle, libxcb), xcb_void_cookie_t, (Ptr{xcb_connection_t}, xcb_drawable_t, xcb_gcontext_t, UInt32, Ptr{xcb_rectangle_t}), c, drawable, gc, rectangles_len, rectangles)
end

function xcb_poly_fill_rectangle_rectangles(R)
    ccall((:xcb_poly_fill_rectangle_rectangles, libxcb), Ptr{xcb_rectangle_t}, (Ptr{xcb_poly_fill_rectangle_request_t},), R)
end

function xcb_poly_fill_rectangle_rectangles_length(R)
    ccall((:xcb_poly_fill_rectangle_rectangles_length, libxcb), Cint, (Ptr{xcb_poly_fill_rectangle_request_t},), R)
end

function xcb_poly_fill_rectangle_rectangles_iterator(R)
    ccall((:xcb_poly_fill_rectangle_rectangles_iterator, libxcb), xcb_rectangle_iterator_t, (Ptr{xcb_poly_fill_rectangle_request_t},), R)
end

function xcb_poly_fill_arc_sizeof(_buffer, arcs_len)
    ccall((:xcb_poly_fill_arc_sizeof, libxcb), Cint, (Ptr{Cvoid}, UInt32), _buffer, arcs_len)
end

function xcb_poly_fill_arc_checked(c, drawable, gc, arcs_len, arcs)
    ccall((:xcb_poly_fill_arc_checked, libxcb), xcb_void_cookie_t, (Ptr{xcb_connection_t}, xcb_drawable_t, xcb_gcontext_t, UInt32, Ptr{xcb_arc_t}), c, drawable, gc, arcs_len, arcs)
end

function xcb_poly_fill_arc(c, drawable, gc, arcs_len, arcs)
    ccall((:xcb_poly_fill_arc, libxcb), xcb_void_cookie_t, (Ptr{xcb_connection_t}, xcb_drawable_t, xcb_gcontext_t, UInt32, Ptr{xcb_arc_t}), c, drawable, gc, arcs_len, arcs)
end

function xcb_poly_fill_arc_arcs(R)
    ccall((:xcb_poly_fill_arc_arcs, libxcb), Ptr{xcb_arc_t}, (Ptr{xcb_poly_fill_arc_request_t},), R)
end

function xcb_poly_fill_arc_arcs_length(R)
    ccall((:xcb_poly_fill_arc_arcs_length, libxcb), Cint, (Ptr{xcb_poly_fill_arc_request_t},), R)
end

function xcb_poly_fill_arc_arcs_iterator(R)
    ccall((:xcb_poly_fill_arc_arcs_iterator, libxcb), xcb_arc_iterator_t, (Ptr{xcb_poly_fill_arc_request_t},), R)
end

function xcb_put_image_sizeof(_buffer, data_len)
    ccall((:xcb_put_image_sizeof, libxcb), Cint, (Ptr{Cvoid}, UInt32), _buffer, data_len)
end

function xcb_put_image_checked(c, format, drawable, gc, width, height, dst_x, dst_y, left_pad, depth, data_len, data)
    ccall((:xcb_put_image_checked, libxcb), xcb_void_cookie_t, (Ptr{xcb_connection_t}, UInt8, xcb_drawable_t, xcb_gcontext_t, UInt16, UInt16, Int16, Int16, UInt8, UInt8, UInt32, Ptr{UInt8}), c, format, drawable, gc, width, height, dst_x, dst_y, left_pad, depth, data_len, data)
end

function xcb_put_image(c, format, drawable, gc, width, height, dst_x, dst_y, left_pad, depth, data_len, data)
    ccall((:xcb_put_image, libxcb), xcb_void_cookie_t, (Ptr{xcb_connection_t}, UInt8, xcb_drawable_t, xcb_gcontext_t, UInt16, UInt16, Int16, Int16, UInt8, UInt8, UInt32, Ptr{UInt8}), c, format, drawable, gc, width, height, dst_x, dst_y, left_pad, depth, data_len, data)
end

function xcb_put_image_data(R)
    ccall((:xcb_put_image_data, libxcb), Ptr{UInt8}, (Ptr{xcb_put_image_request_t},), R)
end

function xcb_put_image_data_length(R)
    ccall((:xcb_put_image_data_length, libxcb), Cint, (Ptr{xcb_put_image_request_t},), R)
end

function xcb_put_image_data_end(R)
    ccall((:xcb_put_image_data_end, libxcb), xcb_generic_iterator_t, (Ptr{xcb_put_image_request_t},), R)
end

function xcb_get_image_sizeof(_buffer)
    ccall((:xcb_get_image_sizeof, libxcb), Cint, (Ptr{Cvoid},), _buffer)
end

function xcb_get_image(c, format, drawable, x, y, width, height, plane_mask)
    ccall((:xcb_get_image, libxcb), xcb_get_image_cookie_t, (Ptr{xcb_connection_t}, UInt8, xcb_drawable_t, Int16, Int16, UInt16, UInt16, UInt32), c, format, drawable, x, y, width, height, plane_mask)
end

function xcb_get_image_unchecked(c, format, drawable, x, y, width, height, plane_mask)
    ccall((:xcb_get_image_unchecked, libxcb), xcb_get_image_cookie_t, (Ptr{xcb_connection_t}, UInt8, xcb_drawable_t, Int16, Int16, UInt16, UInt16, UInt32), c, format, drawable, x, y, width, height, plane_mask)
end

function xcb_get_image_data(R)
    ccall((:xcb_get_image_data, libxcb), Ptr{UInt8}, (Ptr{xcb_get_image_reply_t},), R)
end

function xcb_get_image_data_length(R)
    ccall((:xcb_get_image_data_length, libxcb), Cint, (Ptr{xcb_get_image_reply_t},), R)
end

function xcb_get_image_data_end(R)
    ccall((:xcb_get_image_data_end, libxcb), xcb_generic_iterator_t, (Ptr{xcb_get_image_reply_t},), R)
end

function xcb_get_image_reply(c, cookie, e)
    ccall((:xcb_get_image_reply, libxcb), Ptr{xcb_get_image_reply_t}, (Ptr{xcb_connection_t}, xcb_get_image_cookie_t, Ptr{Ptr{xcb_generic_error_t}}), c, cookie, e)
end

function xcb_poly_text_8_sizeof(_buffer, items_len)
    ccall((:xcb_poly_text_8_sizeof, libxcb), Cint, (Ptr{Cvoid}, UInt32), _buffer, items_len)
end

function xcb_poly_text_8_checked(c, drawable, gc, x, y, items_len, items)
    ccall((:xcb_poly_text_8_checked, libxcb), xcb_void_cookie_t, (Ptr{xcb_connection_t}, xcb_drawable_t, xcb_gcontext_t, Int16, Int16, UInt32, Ptr{UInt8}), c, drawable, gc, x, y, items_len, items)
end

function xcb_poly_text_8(c, drawable, gc, x, y, items_len, items)
    ccall((:xcb_poly_text_8, libxcb), xcb_void_cookie_t, (Ptr{xcb_connection_t}, xcb_drawable_t, xcb_gcontext_t, Int16, Int16, UInt32, Ptr{UInt8}), c, drawable, gc, x, y, items_len, items)
end

function xcb_poly_text_8_items(R)
    ccall((:xcb_poly_text_8_items, libxcb), Ptr{UInt8}, (Ptr{xcb_poly_text_8_request_t},), R)
end

function xcb_poly_text_8_items_length(R)
    ccall((:xcb_poly_text_8_items_length, libxcb), Cint, (Ptr{xcb_poly_text_8_request_t},), R)
end

function xcb_poly_text_8_items_end(R)
    ccall((:xcb_poly_text_8_items_end, libxcb), xcb_generic_iterator_t, (Ptr{xcb_poly_text_8_request_t},), R)
end

function xcb_poly_text_16_sizeof(_buffer, items_len)
    ccall((:xcb_poly_text_16_sizeof, libxcb), Cint, (Ptr{Cvoid}, UInt32), _buffer, items_len)
end

function xcb_poly_text_16_checked(c, drawable, gc, x, y, items_len, items)
    ccall((:xcb_poly_text_16_checked, libxcb), xcb_void_cookie_t, (Ptr{xcb_connection_t}, xcb_drawable_t, xcb_gcontext_t, Int16, Int16, UInt32, Ptr{UInt8}), c, drawable, gc, x, y, items_len, items)
end

function xcb_poly_text_16(c, drawable, gc, x, y, items_len, items)
    ccall((:xcb_poly_text_16, libxcb), xcb_void_cookie_t, (Ptr{xcb_connection_t}, xcb_drawable_t, xcb_gcontext_t, Int16, Int16, UInt32, Ptr{UInt8}), c, drawable, gc, x, y, items_len, items)
end

function xcb_poly_text_16_items(R)
    ccall((:xcb_poly_text_16_items, libxcb), Ptr{UInt8}, (Ptr{xcb_poly_text_16_request_t},), R)
end

function xcb_poly_text_16_items_length(R)
    ccall((:xcb_poly_text_16_items_length, libxcb), Cint, (Ptr{xcb_poly_text_16_request_t},), R)
end

function xcb_poly_text_16_items_end(R)
    ccall((:xcb_poly_text_16_items_end, libxcb), xcb_generic_iterator_t, (Ptr{xcb_poly_text_16_request_t},), R)
end

function xcb_image_text_8_sizeof(_buffer)
    ccall((:xcb_image_text_8_sizeof, libxcb), Cint, (Ptr{Cvoid},), _buffer)
end

function xcb_image_text_8_checked(c, string_len, drawable, gc, x, y, string)
    ccall((:xcb_image_text_8_checked, libxcb), xcb_void_cookie_t, (Ptr{xcb_connection_t}, UInt8, xcb_drawable_t, xcb_gcontext_t, Int16, Int16, Cstring), c, string_len, drawable, gc, x, y, string)
end

function xcb_image_text_8(c, string_len, drawable, gc, x, y, string)
    ccall((:xcb_image_text_8, libxcb), xcb_void_cookie_t, (Ptr{xcb_connection_t}, UInt8, xcb_drawable_t, xcb_gcontext_t, Int16, Int16, Cstring), c, string_len, drawable, gc, x, y, string)
end

function xcb_image_text_8_string(R)
    ccall((:xcb_image_text_8_string, libxcb), Cstring, (Ptr{xcb_image_text_8_request_t},), R)
end

function xcb_image_text_8_string_length(R)
    ccall((:xcb_image_text_8_string_length, libxcb), Cint, (Ptr{xcb_image_text_8_request_t},), R)
end

function xcb_image_text_8_string_end(R)
    ccall((:xcb_image_text_8_string_end, libxcb), xcb_generic_iterator_t, (Ptr{xcb_image_text_8_request_t},), R)
end

function xcb_image_text_16_sizeof(_buffer)
    ccall((:xcb_image_text_16_sizeof, libxcb), Cint, (Ptr{Cvoid},), _buffer)
end

function xcb_image_text_16_checked(c, string_len, drawable, gc, x, y, string)
    ccall((:xcb_image_text_16_checked, libxcb), xcb_void_cookie_t, (Ptr{xcb_connection_t}, UInt8, xcb_drawable_t, xcb_gcontext_t, Int16, Int16, Ptr{xcb_char2b_t}), c, string_len, drawable, gc, x, y, string)
end

function xcb_image_text_16(c, string_len, drawable, gc, x, y, string)
    ccall((:xcb_image_text_16, libxcb), xcb_void_cookie_t, (Ptr{xcb_connection_t}, UInt8, xcb_drawable_t, xcb_gcontext_t, Int16, Int16, Ptr{xcb_char2b_t}), c, string_len, drawable, gc, x, y, string)
end

function xcb_image_text_16_string(R)
    ccall((:xcb_image_text_16_string, libxcb), Ptr{xcb_char2b_t}, (Ptr{xcb_image_text_16_request_t},), R)
end

function xcb_image_text_16_string_length(R)
    ccall((:xcb_image_text_16_string_length, libxcb), Cint, (Ptr{xcb_image_text_16_request_t},), R)
end

function xcb_image_text_16_string_iterator(R)
    ccall((:xcb_image_text_16_string_iterator, libxcb), xcb_char2b_iterator_t, (Ptr{xcb_image_text_16_request_t},), R)
end

function xcb_create_colormap_checked(c, alloc, mid, window, visual)
    ccall((:xcb_create_colormap_checked, libxcb), xcb_void_cookie_t, (Ptr{xcb_connection_t}, UInt8, xcb_colormap_t, xcb_window_t, xcb_visualid_t), c, alloc, mid, window, visual)
end

function xcb_create_colormap(c, alloc, mid, window, visual)
    ccall((:xcb_create_colormap, libxcb), xcb_void_cookie_t, (Ptr{xcb_connection_t}, UInt8, xcb_colormap_t, xcb_window_t, xcb_visualid_t), c, alloc, mid, window, visual)
end

function xcb_free_colormap_checked(c, cmap)
    ccall((:xcb_free_colormap_checked, libxcb), xcb_void_cookie_t, (Ptr{xcb_connection_t}, xcb_colormap_t), c, cmap)
end

function xcb_free_colormap(c, cmap)
    ccall((:xcb_free_colormap, libxcb), xcb_void_cookie_t, (Ptr{xcb_connection_t}, xcb_colormap_t), c, cmap)
end

function xcb_copy_colormap_and_free_checked(c, mid, src_cmap)
    ccall((:xcb_copy_colormap_and_free_checked, libxcb), xcb_void_cookie_t, (Ptr{xcb_connection_t}, xcb_colormap_t, xcb_colormap_t), c, mid, src_cmap)
end

function xcb_copy_colormap_and_free(c, mid, src_cmap)
    ccall((:xcb_copy_colormap_and_free, libxcb), xcb_void_cookie_t, (Ptr{xcb_connection_t}, xcb_colormap_t, xcb_colormap_t), c, mid, src_cmap)
end

function xcb_install_colormap_checked(c, cmap)
    ccall((:xcb_install_colormap_checked, libxcb), xcb_void_cookie_t, (Ptr{xcb_connection_t}, xcb_colormap_t), c, cmap)
end

function xcb_install_colormap(c, cmap)
    ccall((:xcb_install_colormap, libxcb), xcb_void_cookie_t, (Ptr{xcb_connection_t}, xcb_colormap_t), c, cmap)
end

function xcb_uninstall_colormap_checked(c, cmap)
    ccall((:xcb_uninstall_colormap_checked, libxcb), xcb_void_cookie_t, (Ptr{xcb_connection_t}, xcb_colormap_t), c, cmap)
end

function xcb_uninstall_colormap(c, cmap)
    ccall((:xcb_uninstall_colormap, libxcb), xcb_void_cookie_t, (Ptr{xcb_connection_t}, xcb_colormap_t), c, cmap)
end

function xcb_list_installed_colormaps_sizeof(_buffer)
    ccall((:xcb_list_installed_colormaps_sizeof, libxcb), Cint, (Ptr{Cvoid},), _buffer)
end

function xcb_list_installed_colormaps(c, window)
    ccall((:xcb_list_installed_colormaps, libxcb), xcb_list_installed_colormaps_cookie_t, (Ptr{xcb_connection_t}, xcb_window_t), c, window)
end

function xcb_list_installed_colormaps_unchecked(c, window)
    ccall((:xcb_list_installed_colormaps_unchecked, libxcb), xcb_list_installed_colormaps_cookie_t, (Ptr{xcb_connection_t}, xcb_window_t), c, window)
end

function xcb_list_installed_colormaps_cmaps(R)
    ccall((:xcb_list_installed_colormaps_cmaps, libxcb), Ptr{xcb_colormap_t}, (Ptr{xcb_list_installed_colormaps_reply_t},), R)
end

function xcb_list_installed_colormaps_cmaps_length(R)
    ccall((:xcb_list_installed_colormaps_cmaps_length, libxcb), Cint, (Ptr{xcb_list_installed_colormaps_reply_t},), R)
end

function xcb_list_installed_colormaps_cmaps_end(R)
    ccall((:xcb_list_installed_colormaps_cmaps_end, libxcb), xcb_generic_iterator_t, (Ptr{xcb_list_installed_colormaps_reply_t},), R)
end

function xcb_list_installed_colormaps_reply(c, cookie, e)
    ccall((:xcb_list_installed_colormaps_reply, libxcb), Ptr{xcb_list_installed_colormaps_reply_t}, (Ptr{xcb_connection_t}, xcb_list_installed_colormaps_cookie_t, Ptr{Ptr{xcb_generic_error_t}}), c, cookie, e)
end

function xcb_alloc_color(c, cmap, red, green, blue)
    ccall((:xcb_alloc_color, libxcb), xcb_alloc_color_cookie_t, (Ptr{xcb_connection_t}, xcb_colormap_t, UInt16, UInt16, UInt16), c, cmap, red, green, blue)
end

function xcb_alloc_color_unchecked(c, cmap, red, green, blue)
    ccall((:xcb_alloc_color_unchecked, libxcb), xcb_alloc_color_cookie_t, (Ptr{xcb_connection_t}, xcb_colormap_t, UInt16, UInt16, UInt16), c, cmap, red, green, blue)
end

function xcb_alloc_color_reply(c, cookie, e)
    ccall((:xcb_alloc_color_reply, libxcb), Ptr{xcb_alloc_color_reply_t}, (Ptr{xcb_connection_t}, xcb_alloc_color_cookie_t, Ptr{Ptr{xcb_generic_error_t}}), c, cookie, e)
end

function xcb_alloc_named_color_sizeof(_buffer)
    ccall((:xcb_alloc_named_color_sizeof, libxcb), Cint, (Ptr{Cvoid},), _buffer)
end

function xcb_alloc_named_color(c, cmap, name_len, name)
    ccall((:xcb_alloc_named_color, libxcb), xcb_alloc_named_color_cookie_t, (Ptr{xcb_connection_t}, xcb_colormap_t, UInt16, Cstring), c, cmap, name_len, name)
end

function xcb_alloc_named_color_unchecked(c, cmap, name_len, name)
    ccall((:xcb_alloc_named_color_unchecked, libxcb), xcb_alloc_named_color_cookie_t, (Ptr{xcb_connection_t}, xcb_colormap_t, UInt16, Cstring), c, cmap, name_len, name)
end

function xcb_alloc_named_color_reply(c, cookie, e)
    ccall((:xcb_alloc_named_color_reply, libxcb), Ptr{xcb_alloc_named_color_reply_t}, (Ptr{xcb_connection_t}, xcb_alloc_named_color_cookie_t, Ptr{Ptr{xcb_generic_error_t}}), c, cookie, e)
end

function xcb_alloc_color_cells_sizeof(_buffer)
    ccall((:xcb_alloc_color_cells_sizeof, libxcb), Cint, (Ptr{Cvoid},), _buffer)
end

function xcb_alloc_color_cells(c, contiguous, cmap, colors, planes)
    ccall((:xcb_alloc_color_cells, libxcb), xcb_alloc_color_cells_cookie_t, (Ptr{xcb_connection_t}, UInt8, xcb_colormap_t, UInt16, UInt16), c, contiguous, cmap, colors, planes)
end

function xcb_alloc_color_cells_unchecked(c, contiguous, cmap, colors, planes)
    ccall((:xcb_alloc_color_cells_unchecked, libxcb), xcb_alloc_color_cells_cookie_t, (Ptr{xcb_connection_t}, UInt8, xcb_colormap_t, UInt16, UInt16), c, contiguous, cmap, colors, planes)
end

function xcb_alloc_color_cells_pixels(R)
    ccall((:xcb_alloc_color_cells_pixels, libxcb), Ptr{UInt32}, (Ptr{xcb_alloc_color_cells_reply_t},), R)
end

function xcb_alloc_color_cells_pixels_length(R)
    ccall((:xcb_alloc_color_cells_pixels_length, libxcb), Cint, (Ptr{xcb_alloc_color_cells_reply_t},), R)
end

function xcb_alloc_color_cells_pixels_end(R)
    ccall((:xcb_alloc_color_cells_pixels_end, libxcb), xcb_generic_iterator_t, (Ptr{xcb_alloc_color_cells_reply_t},), R)
end

function xcb_alloc_color_cells_masks(R)
    ccall((:xcb_alloc_color_cells_masks, libxcb), Ptr{UInt32}, (Ptr{xcb_alloc_color_cells_reply_t},), R)
end

function xcb_alloc_color_cells_masks_length(R)
    ccall((:xcb_alloc_color_cells_masks_length, libxcb), Cint, (Ptr{xcb_alloc_color_cells_reply_t},), R)
end

function xcb_alloc_color_cells_masks_end(R)
    ccall((:xcb_alloc_color_cells_masks_end, libxcb), xcb_generic_iterator_t, (Ptr{xcb_alloc_color_cells_reply_t},), R)
end

function xcb_alloc_color_cells_reply(c, cookie, e)
    ccall((:xcb_alloc_color_cells_reply, libxcb), Ptr{xcb_alloc_color_cells_reply_t}, (Ptr{xcb_connection_t}, xcb_alloc_color_cells_cookie_t, Ptr{Ptr{xcb_generic_error_t}}), c, cookie, e)
end

function xcb_alloc_color_planes_sizeof(_buffer)
    ccall((:xcb_alloc_color_planes_sizeof, libxcb), Cint, (Ptr{Cvoid},), _buffer)
end

function xcb_alloc_color_planes(c, contiguous, cmap, colors, reds, greens, blues)
    ccall((:xcb_alloc_color_planes, libxcb), xcb_alloc_color_planes_cookie_t, (Ptr{xcb_connection_t}, UInt8, xcb_colormap_t, UInt16, UInt16, UInt16, UInt16), c, contiguous, cmap, colors, reds, greens, blues)
end

function xcb_alloc_color_planes_unchecked(c, contiguous, cmap, colors, reds, greens, blues)
    ccall((:xcb_alloc_color_planes_unchecked, libxcb), xcb_alloc_color_planes_cookie_t, (Ptr{xcb_connection_t}, UInt8, xcb_colormap_t, UInt16, UInt16, UInt16, UInt16), c, contiguous, cmap, colors, reds, greens, blues)
end

function xcb_alloc_color_planes_pixels(R)
    ccall((:xcb_alloc_color_planes_pixels, libxcb), Ptr{UInt32}, (Ptr{xcb_alloc_color_planes_reply_t},), R)
end

function xcb_alloc_color_planes_pixels_length(R)
    ccall((:xcb_alloc_color_planes_pixels_length, libxcb), Cint, (Ptr{xcb_alloc_color_planes_reply_t},), R)
end

function xcb_alloc_color_planes_pixels_end(R)
    ccall((:xcb_alloc_color_planes_pixels_end, libxcb), xcb_generic_iterator_t, (Ptr{xcb_alloc_color_planes_reply_t},), R)
end

function xcb_alloc_color_planes_reply(c, cookie, e)
    ccall((:xcb_alloc_color_planes_reply, libxcb), Ptr{xcb_alloc_color_planes_reply_t}, (Ptr{xcb_connection_t}, xcb_alloc_color_planes_cookie_t, Ptr{Ptr{xcb_generic_error_t}}), c, cookie, e)
end

function xcb_free_colors_sizeof(_buffer, pixels_len)
    ccall((:xcb_free_colors_sizeof, libxcb), Cint, (Ptr{Cvoid}, UInt32), _buffer, pixels_len)
end

function xcb_free_colors_checked(c, cmap, plane_mask, pixels_len, pixels)
    ccall((:xcb_free_colors_checked, libxcb), xcb_void_cookie_t, (Ptr{xcb_connection_t}, xcb_colormap_t, UInt32, UInt32, Ptr{UInt32}), c, cmap, plane_mask, pixels_len, pixels)
end

function xcb_free_colors(c, cmap, plane_mask, pixels_len, pixels)
    ccall((:xcb_free_colors, libxcb), xcb_void_cookie_t, (Ptr{xcb_connection_t}, xcb_colormap_t, UInt32, UInt32, Ptr{UInt32}), c, cmap, plane_mask, pixels_len, pixels)
end

function xcb_free_colors_pixels(R)
    ccall((:xcb_free_colors_pixels, libxcb), Ptr{UInt32}, (Ptr{xcb_free_colors_request_t},), R)
end

function xcb_free_colors_pixels_length(R)
    ccall((:xcb_free_colors_pixels_length, libxcb), Cint, (Ptr{xcb_free_colors_request_t},), R)
end

function xcb_free_colors_pixels_end(R)
    ccall((:xcb_free_colors_pixels_end, libxcb), xcb_generic_iterator_t, (Ptr{xcb_free_colors_request_t},), R)
end

function xcb_coloritem_next(i)
    ccall((:xcb_coloritem_next, libxcb), Cvoid, (Ptr{xcb_coloritem_iterator_t},), i)
end

function xcb_coloritem_end(i)
    ccall((:xcb_coloritem_end, libxcb), xcb_generic_iterator_t, (xcb_coloritem_iterator_t,), i)
end

function xcb_store_colors_sizeof(_buffer, items_len)
    ccall((:xcb_store_colors_sizeof, libxcb), Cint, (Ptr{Cvoid}, UInt32), _buffer, items_len)
end

function xcb_store_colors_checked(c, cmap, items_len, items)
    ccall((:xcb_store_colors_checked, libxcb), xcb_void_cookie_t, (Ptr{xcb_connection_t}, xcb_colormap_t, UInt32, Ptr{xcb_coloritem_t}), c, cmap, items_len, items)
end

function xcb_store_colors(c, cmap, items_len, items)
    ccall((:xcb_store_colors, libxcb), xcb_void_cookie_t, (Ptr{xcb_connection_t}, xcb_colormap_t, UInt32, Ptr{xcb_coloritem_t}), c, cmap, items_len, items)
end

function xcb_store_colors_items(R)
    ccall((:xcb_store_colors_items, libxcb), Ptr{xcb_coloritem_t}, (Ptr{xcb_store_colors_request_t},), R)
end

function xcb_store_colors_items_length(R)
    ccall((:xcb_store_colors_items_length, libxcb), Cint, (Ptr{xcb_store_colors_request_t},), R)
end

function xcb_store_colors_items_iterator(R)
    ccall((:xcb_store_colors_items_iterator, libxcb), xcb_coloritem_iterator_t, (Ptr{xcb_store_colors_request_t},), R)
end

function xcb_store_named_color_sizeof(_buffer)
    ccall((:xcb_store_named_color_sizeof, libxcb), Cint, (Ptr{Cvoid},), _buffer)
end

function xcb_store_named_color_checked(c, flags, cmap, pixel, name_len, name)
    ccall((:xcb_store_named_color_checked, libxcb), xcb_void_cookie_t, (Ptr{xcb_connection_t}, UInt8, xcb_colormap_t, UInt32, UInt16, Cstring), c, flags, cmap, pixel, name_len, name)
end

function xcb_store_named_color(c, flags, cmap, pixel, name_len, name)
    ccall((:xcb_store_named_color, libxcb), xcb_void_cookie_t, (Ptr{xcb_connection_t}, UInt8, xcb_colormap_t, UInt32, UInt16, Cstring), c, flags, cmap, pixel, name_len, name)
end

function xcb_store_named_color_name(R)
    ccall((:xcb_store_named_color_name, libxcb), Cstring, (Ptr{xcb_store_named_color_request_t},), R)
end

function xcb_store_named_color_name_length(R)
    ccall((:xcb_store_named_color_name_length, libxcb), Cint, (Ptr{xcb_store_named_color_request_t},), R)
end

function xcb_store_named_color_name_end(R)
    ccall((:xcb_store_named_color_name_end, libxcb), xcb_generic_iterator_t, (Ptr{xcb_store_named_color_request_t},), R)
end

function xcb_rgb_next(i)
    ccall((:xcb_rgb_next, libxcb), Cvoid, (Ptr{xcb_rgb_iterator_t},), i)
end

function xcb_rgb_end(i)
    ccall((:xcb_rgb_end, libxcb), xcb_generic_iterator_t, (xcb_rgb_iterator_t,), i)
end

function xcb_query_colors_sizeof(_buffer, pixels_len)
    ccall((:xcb_query_colors_sizeof, libxcb), Cint, (Ptr{Cvoid}, UInt32), _buffer, pixels_len)
end

function xcb_query_colors(c, cmap, pixels_len, pixels)
    ccall((:xcb_query_colors, libxcb), xcb_query_colors_cookie_t, (Ptr{xcb_connection_t}, xcb_colormap_t, UInt32, Ptr{UInt32}), c, cmap, pixels_len, pixels)
end

function xcb_query_colors_unchecked(c, cmap, pixels_len, pixels)
    ccall((:xcb_query_colors_unchecked, libxcb), xcb_query_colors_cookie_t, (Ptr{xcb_connection_t}, xcb_colormap_t, UInt32, Ptr{UInt32}), c, cmap, pixels_len, pixels)
end

function xcb_query_colors_colors(R)
    ccall((:xcb_query_colors_colors, libxcb), Ptr{xcb_rgb_t}, (Ptr{xcb_query_colors_reply_t},), R)
end

function xcb_query_colors_colors_length(R)
    ccall((:xcb_query_colors_colors_length, libxcb), Cint, (Ptr{xcb_query_colors_reply_t},), R)
end

function xcb_query_colors_colors_iterator(R)
    ccall((:xcb_query_colors_colors_iterator, libxcb), xcb_rgb_iterator_t, (Ptr{xcb_query_colors_reply_t},), R)
end

function xcb_query_colors_reply(c, cookie, e)
    ccall((:xcb_query_colors_reply, libxcb), Ptr{xcb_query_colors_reply_t}, (Ptr{xcb_connection_t}, xcb_query_colors_cookie_t, Ptr{Ptr{xcb_generic_error_t}}), c, cookie, e)
end

function xcb_lookup_color_sizeof(_buffer)
    ccall((:xcb_lookup_color_sizeof, libxcb), Cint, (Ptr{Cvoid},), _buffer)
end

function xcb_lookup_color(c, cmap, name_len, name)
    ccall((:xcb_lookup_color, libxcb), xcb_lookup_color_cookie_t, (Ptr{xcb_connection_t}, xcb_colormap_t, UInt16, Cstring), c, cmap, name_len, name)
end

function xcb_lookup_color_unchecked(c, cmap, name_len, name)
    ccall((:xcb_lookup_color_unchecked, libxcb), xcb_lookup_color_cookie_t, (Ptr{xcb_connection_t}, xcb_colormap_t, UInt16, Cstring), c, cmap, name_len, name)
end

function xcb_lookup_color_reply(c, cookie, e)
    ccall((:xcb_lookup_color_reply, libxcb), Ptr{xcb_lookup_color_reply_t}, (Ptr{xcb_connection_t}, xcb_lookup_color_cookie_t, Ptr{Ptr{xcb_generic_error_t}}), c, cookie, e)
end

function xcb_create_cursor_checked(c, cid, source, mask, fore_red, fore_green, fore_blue, back_red, back_green, back_blue, x, y)
    ccall((:xcb_create_cursor_checked, libxcb), xcb_void_cookie_t, (Ptr{xcb_connection_t}, xcb_cursor_t, xcb_pixmap_t, xcb_pixmap_t, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16), c, cid, source, mask, fore_red, fore_green, fore_blue, back_red, back_green, back_blue, x, y)
end

function xcb_create_cursor(c, cid, source, mask, fore_red, fore_green, fore_blue, back_red, back_green, back_blue, x, y)
    ccall((:xcb_create_cursor, libxcb), xcb_void_cookie_t, (Ptr{xcb_connection_t}, xcb_cursor_t, xcb_pixmap_t, xcb_pixmap_t, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16), c, cid, source, mask, fore_red, fore_green, fore_blue, back_red, back_green, back_blue, x, y)
end

function xcb_create_glyph_cursor_checked(c, cid, source_font, mask_font, source_char, mask_char, fore_red, fore_green, fore_blue, back_red, back_green, back_blue)
    ccall((:xcb_create_glyph_cursor_checked, libxcb), xcb_void_cookie_t, (Ptr{xcb_connection_t}, xcb_cursor_t, xcb_font_t, xcb_font_t, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16), c, cid, source_font, mask_font, source_char, mask_char, fore_red, fore_green, fore_blue, back_red, back_green, back_blue)
end

function xcb_create_glyph_cursor(c, cid, source_font, mask_font, source_char, mask_char, fore_red, fore_green, fore_blue, back_red, back_green, back_blue)
    ccall((:xcb_create_glyph_cursor, libxcb), xcb_void_cookie_t, (Ptr{xcb_connection_t}, xcb_cursor_t, xcb_font_t, xcb_font_t, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16), c, cid, source_font, mask_font, source_char, mask_char, fore_red, fore_green, fore_blue, back_red, back_green, back_blue)
end

function xcb_free_cursor_checked(c, cursor)
    ccall((:xcb_free_cursor_checked, libxcb), xcb_void_cookie_t, (Ptr{xcb_connection_t}, xcb_cursor_t), c, cursor)
end

function xcb_free_cursor(c, cursor)
    ccall((:xcb_free_cursor, libxcb), xcb_void_cookie_t, (Ptr{xcb_connection_t}, xcb_cursor_t), c, cursor)
end

function xcb_recolor_cursor_checked(c, cursor, fore_red, fore_green, fore_blue, back_red, back_green, back_blue)
    ccall((:xcb_recolor_cursor_checked, libxcb), xcb_void_cookie_t, (Ptr{xcb_connection_t}, xcb_cursor_t, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16), c, cursor, fore_red, fore_green, fore_blue, back_red, back_green, back_blue)
end

function xcb_recolor_cursor(c, cursor, fore_red, fore_green, fore_blue, back_red, back_green, back_blue)
    ccall((:xcb_recolor_cursor, libxcb), xcb_void_cookie_t, (Ptr{xcb_connection_t}, xcb_cursor_t, UInt16, UInt16, UInt16, UInt16, UInt16, UInt16), c, cursor, fore_red, fore_green, fore_blue, back_red, back_green, back_blue)
end

function xcb_query_best_size(c, _class, drawable, width, height)
    ccall((:xcb_query_best_size, libxcb), xcb_query_best_size_cookie_t, (Ptr{xcb_connection_t}, UInt8, xcb_drawable_t, UInt16, UInt16), c, _class, drawable, width, height)
end

function xcb_query_best_size_unchecked(c, _class, drawable, width, height)
    ccall((:xcb_query_best_size_unchecked, libxcb), xcb_query_best_size_cookie_t, (Ptr{xcb_connection_t}, UInt8, xcb_drawable_t, UInt16, UInt16), c, _class, drawable, width, height)
end

function xcb_query_best_size_reply(c, cookie, e)
    ccall((:xcb_query_best_size_reply, libxcb), Ptr{xcb_query_best_size_reply_t}, (Ptr{xcb_connection_t}, xcb_query_best_size_cookie_t, Ptr{Ptr{xcb_generic_error_t}}), c, cookie, e)
end

function xcb_query_extension_sizeof(_buffer)
    ccall((:xcb_query_extension_sizeof, libxcb), Cint, (Ptr{Cvoid},), _buffer)
end

function xcb_query_extension(c, name_len, name)
    ccall((:xcb_query_extension, libxcb), xcb_query_extension_cookie_t, (Ptr{xcb_connection_t}, UInt16, Cstring), c, name_len, name)
end

function xcb_query_extension_unchecked(c, name_len, name)
    ccall((:xcb_query_extension_unchecked, libxcb), xcb_query_extension_cookie_t, (Ptr{xcb_connection_t}, UInt16, Cstring), c, name_len, name)
end

function xcb_query_extension_reply(c, cookie, e)
    ccall((:xcb_query_extension_reply, libxcb), Ptr{xcb_query_extension_reply_t}, (Ptr{xcb_connection_t}, xcb_query_extension_cookie_t, Ptr{Ptr{xcb_generic_error_t}}), c, cookie, e)
end

function xcb_list_extensions_sizeof(_buffer)
    ccall((:xcb_list_extensions_sizeof, libxcb), Cint, (Ptr{Cvoid},), _buffer)
end

function xcb_list_extensions(c)
    ccall((:xcb_list_extensions, libxcb), xcb_list_extensions_cookie_t, (Ptr{xcb_connection_t},), c)
end

function xcb_list_extensions_unchecked(c)
    ccall((:xcb_list_extensions_unchecked, libxcb), xcb_list_extensions_cookie_t, (Ptr{xcb_connection_t},), c)
end

function xcb_list_extensions_names_length(R)
    ccall((:xcb_list_extensions_names_length, libxcb), Cint, (Ptr{xcb_list_extensions_reply_t},), R)
end

function xcb_list_extensions_names_iterator(R)
    ccall((:xcb_list_extensions_names_iterator, libxcb), xcb_str_iterator_t, (Ptr{xcb_list_extensions_reply_t},), R)
end

function xcb_list_extensions_reply(c, cookie, e)
    ccall((:xcb_list_extensions_reply, libxcb), Ptr{xcb_list_extensions_reply_t}, (Ptr{xcb_connection_t}, xcb_list_extensions_cookie_t, Ptr{Ptr{xcb_generic_error_t}}), c, cookie, e)
end

function xcb_change_keyboard_mapping_sizeof(_buffer)
    ccall((:xcb_change_keyboard_mapping_sizeof, libxcb), Cint, (Ptr{Cvoid},), _buffer)
end

function xcb_change_keyboard_mapping_checked(c, keycode_count, first_keycode, keysyms_per_keycode, keysyms)
    ccall((:xcb_change_keyboard_mapping_checked, libxcb), xcb_void_cookie_t, (Ptr{xcb_connection_t}, UInt8, xcb_keycode_t, UInt8, Ptr{xcb_keysym_t}), c, keycode_count, first_keycode, keysyms_per_keycode, keysyms)
end

function xcb_change_keyboard_mapping(c, keycode_count, first_keycode, keysyms_per_keycode, keysyms)
    ccall((:xcb_change_keyboard_mapping, libxcb), xcb_void_cookie_t, (Ptr{xcb_connection_t}, UInt8, xcb_keycode_t, UInt8, Ptr{xcb_keysym_t}), c, keycode_count, first_keycode, keysyms_per_keycode, keysyms)
end

function xcb_change_keyboard_mapping_keysyms(R)
    ccall((:xcb_change_keyboard_mapping_keysyms, libxcb), Ptr{xcb_keysym_t}, (Ptr{xcb_change_keyboard_mapping_request_t},), R)
end

function xcb_change_keyboard_mapping_keysyms_length(R)
    ccall((:xcb_change_keyboard_mapping_keysyms_length, libxcb), Cint, (Ptr{xcb_change_keyboard_mapping_request_t},), R)
end

function xcb_change_keyboard_mapping_keysyms_end(R)
    ccall((:xcb_change_keyboard_mapping_keysyms_end, libxcb), xcb_generic_iterator_t, (Ptr{xcb_change_keyboard_mapping_request_t},), R)
end

function xcb_get_keyboard_mapping_sizeof(_buffer)
    ccall((:xcb_get_keyboard_mapping_sizeof, libxcb), Cint, (Ptr{Cvoid},), _buffer)
end

function xcb_get_keyboard_mapping(c, first_keycode, count)
    ccall((:xcb_get_keyboard_mapping, libxcb), xcb_get_keyboard_mapping_cookie_t, (Ptr{xcb_connection_t}, xcb_keycode_t, UInt8), c, first_keycode, count)
end

function xcb_get_keyboard_mapping_unchecked(c, first_keycode, count)
    ccall((:xcb_get_keyboard_mapping_unchecked, libxcb), xcb_get_keyboard_mapping_cookie_t, (Ptr{xcb_connection_t}, xcb_keycode_t, UInt8), c, first_keycode, count)
end

function xcb_get_keyboard_mapping_keysyms(R)
    ccall((:xcb_get_keyboard_mapping_keysyms, libxcb), Ptr{xcb_keysym_t}, (Ptr{xcb_get_keyboard_mapping_reply_t},), R)
end

function xcb_get_keyboard_mapping_keysyms_length(R)
    ccall((:xcb_get_keyboard_mapping_keysyms_length, libxcb), Cint, (Ptr{xcb_get_keyboard_mapping_reply_t},), R)
end

function xcb_get_keyboard_mapping_keysyms_end(R)
    ccall((:xcb_get_keyboard_mapping_keysyms_end, libxcb), xcb_generic_iterator_t, (Ptr{xcb_get_keyboard_mapping_reply_t},), R)
end

function xcb_get_keyboard_mapping_reply(c, cookie, e)
    ccall((:xcb_get_keyboard_mapping_reply, libxcb), Ptr{xcb_get_keyboard_mapping_reply_t}, (Ptr{xcb_connection_t}, xcb_get_keyboard_mapping_cookie_t, Ptr{Ptr{xcb_generic_error_t}}), c, cookie, e)
end

function xcb_change_keyboard_control_value_list_serialize(_buffer, value_mask, _aux)
    ccall((:xcb_change_keyboard_control_value_list_serialize, libxcb), Cint, (Ptr{Ptr{Cvoid}}, UInt32, Ptr{xcb_change_keyboard_control_value_list_t}), _buffer, value_mask, _aux)
end

function xcb_change_keyboard_control_value_list_unpack(_buffer, value_mask, _aux)
    ccall((:xcb_change_keyboard_control_value_list_unpack, libxcb), Cint, (Ptr{Cvoid}, UInt32, Ptr{xcb_change_keyboard_control_value_list_t}), _buffer, value_mask, _aux)
end

function xcb_change_keyboard_control_value_list_sizeof(_buffer, value_mask)
    ccall((:xcb_change_keyboard_control_value_list_sizeof, libxcb), Cint, (Ptr{Cvoid}, UInt32), _buffer, value_mask)
end

function xcb_change_keyboard_control_sizeof(_buffer)
    ccall((:xcb_change_keyboard_control_sizeof, libxcb), Cint, (Ptr{Cvoid},), _buffer)
end

function xcb_change_keyboard_control_checked(c, value_mask, value_list)
    ccall((:xcb_change_keyboard_control_checked, libxcb), xcb_void_cookie_t, (Ptr{xcb_connection_t}, UInt32, Ptr{Cvoid}), c, value_mask, value_list)
end

function xcb_change_keyboard_control(c, value_mask, value_list)
    ccall((:xcb_change_keyboard_control, libxcb), xcb_void_cookie_t, (Ptr{xcb_connection_t}, UInt32, Ptr{Cvoid}), c, value_mask, value_list)
end

function xcb_change_keyboard_control_aux_checked(c, value_mask, value_list)
    ccall((:xcb_change_keyboard_control_aux_checked, libxcb), xcb_void_cookie_t, (Ptr{xcb_connection_t}, UInt32, Ptr{xcb_change_keyboard_control_value_list_t}), c, value_mask, value_list)
end

function xcb_change_keyboard_control_aux(c, value_mask, value_list)
    ccall((:xcb_change_keyboard_control_aux, libxcb), xcb_void_cookie_t, (Ptr{xcb_connection_t}, UInt32, Ptr{xcb_change_keyboard_control_value_list_t}), c, value_mask, value_list)
end

function xcb_change_keyboard_control_value_list(R)
    ccall((:xcb_change_keyboard_control_value_list, libxcb), Ptr{Cvoid}, (Ptr{xcb_change_keyboard_control_request_t},), R)
end

function xcb_get_keyboard_control(c)
    ccall((:xcb_get_keyboard_control, libxcb), xcb_get_keyboard_control_cookie_t, (Ptr{xcb_connection_t},), c)
end

function xcb_get_keyboard_control_unchecked(c)
    ccall((:xcb_get_keyboard_control_unchecked, libxcb), xcb_get_keyboard_control_cookie_t, (Ptr{xcb_connection_t},), c)
end

function xcb_get_keyboard_control_reply(c, cookie, e)
    ccall((:xcb_get_keyboard_control_reply, libxcb), Ptr{xcb_get_keyboard_control_reply_t}, (Ptr{xcb_connection_t}, xcb_get_keyboard_control_cookie_t, Ptr{Ptr{xcb_generic_error_t}}), c, cookie, e)
end

function xcb_bell_checked(c, percent)
    ccall((:xcb_bell_checked, libxcb), xcb_void_cookie_t, (Ptr{xcb_connection_t}, Int8), c, percent)
end

function xcb_bell(c, percent)
    ccall((:xcb_bell, libxcb), xcb_void_cookie_t, (Ptr{xcb_connection_t}, Int8), c, percent)
end

function xcb_change_pointer_control_checked(c, acceleration_numerator, acceleration_denominator, threshold, do_acceleration, do_threshold)
    ccall((:xcb_change_pointer_control_checked, libxcb), xcb_void_cookie_t, (Ptr{xcb_connection_t}, Int16, Int16, Int16, UInt8, UInt8), c, acceleration_numerator, acceleration_denominator, threshold, do_acceleration, do_threshold)
end

function xcb_change_pointer_control(c, acceleration_numerator, acceleration_denominator, threshold, do_acceleration, do_threshold)
    ccall((:xcb_change_pointer_control, libxcb), xcb_void_cookie_t, (Ptr{xcb_connection_t}, Int16, Int16, Int16, UInt8, UInt8), c, acceleration_numerator, acceleration_denominator, threshold, do_acceleration, do_threshold)
end

function xcb_get_pointer_control(c)
    ccall((:xcb_get_pointer_control, libxcb), xcb_get_pointer_control_cookie_t, (Ptr{xcb_connection_t},), c)
end

function xcb_get_pointer_control_unchecked(c)
    ccall((:xcb_get_pointer_control_unchecked, libxcb), xcb_get_pointer_control_cookie_t, (Ptr{xcb_connection_t},), c)
end

function xcb_get_pointer_control_reply(c, cookie, e)
    ccall((:xcb_get_pointer_control_reply, libxcb), Ptr{xcb_get_pointer_control_reply_t}, (Ptr{xcb_connection_t}, xcb_get_pointer_control_cookie_t, Ptr{Ptr{xcb_generic_error_t}}), c, cookie, e)
end

function xcb_set_screen_saver_checked(c, timeout, interval, prefer_blanking, allow_exposures)
    ccall((:xcb_set_screen_saver_checked, libxcb), xcb_void_cookie_t, (Ptr{xcb_connection_t}, Int16, Int16, UInt8, UInt8), c, timeout, interval, prefer_blanking, allow_exposures)
end

function xcb_set_screen_saver(c, timeout, interval, prefer_blanking, allow_exposures)
    ccall((:xcb_set_screen_saver, libxcb), xcb_void_cookie_t, (Ptr{xcb_connection_t}, Int16, Int16, UInt8, UInt8), c, timeout, interval, prefer_blanking, allow_exposures)
end

function xcb_get_screen_saver(c)
    ccall((:xcb_get_screen_saver, libxcb), xcb_get_screen_saver_cookie_t, (Ptr{xcb_connection_t},), c)
end

function xcb_get_screen_saver_unchecked(c)
    ccall((:xcb_get_screen_saver_unchecked, libxcb), xcb_get_screen_saver_cookie_t, (Ptr{xcb_connection_t},), c)
end

function xcb_get_screen_saver_reply(c, cookie, e)
    ccall((:xcb_get_screen_saver_reply, libxcb), Ptr{xcb_get_screen_saver_reply_t}, (Ptr{xcb_connection_t}, xcb_get_screen_saver_cookie_t, Ptr{Ptr{xcb_generic_error_t}}), c, cookie, e)
end

function xcb_change_hosts_sizeof(_buffer)
    ccall((:xcb_change_hosts_sizeof, libxcb), Cint, (Ptr{Cvoid},), _buffer)
end

function xcb_change_hosts_checked(c, mode, family, address_len, address)
    ccall((:xcb_change_hosts_checked, libxcb), xcb_void_cookie_t, (Ptr{xcb_connection_t}, UInt8, UInt8, UInt16, Ptr{UInt8}), c, mode, family, address_len, address)
end

function xcb_change_hosts(c, mode, family, address_len, address)
    ccall((:xcb_change_hosts, libxcb), xcb_void_cookie_t, (Ptr{xcb_connection_t}, UInt8, UInt8, UInt16, Ptr{UInt8}), c, mode, family, address_len, address)
end

function xcb_change_hosts_address(R)
    ccall((:xcb_change_hosts_address, libxcb), Ptr{UInt8}, (Ptr{xcb_change_hosts_request_t},), R)
end

function xcb_change_hosts_address_length(R)
    ccall((:xcb_change_hosts_address_length, libxcb), Cint, (Ptr{xcb_change_hosts_request_t},), R)
end

function xcb_change_hosts_address_end(R)
    ccall((:xcb_change_hosts_address_end, libxcb), xcb_generic_iterator_t, (Ptr{xcb_change_hosts_request_t},), R)
end

function xcb_host_sizeof(_buffer)
    ccall((:xcb_host_sizeof, libxcb), Cint, (Ptr{Cvoid},), _buffer)
end

function xcb_host_address(R)
    ccall((:xcb_host_address, libxcb), Ptr{UInt8}, (Ptr{xcb_host_t},), R)
end

function xcb_host_address_length(R)
    ccall((:xcb_host_address_length, libxcb), Cint, (Ptr{xcb_host_t},), R)
end

function xcb_host_address_end(R)
    ccall((:xcb_host_address_end, libxcb), xcb_generic_iterator_t, (Ptr{xcb_host_t},), R)
end

function xcb_host_next(i)
    ccall((:xcb_host_next, libxcb), Cvoid, (Ptr{xcb_host_iterator_t},), i)
end

function xcb_host_end(i)
    ccall((:xcb_host_end, libxcb), xcb_generic_iterator_t, (xcb_host_iterator_t,), i)
end

function xcb_list_hosts_sizeof(_buffer)
    ccall((:xcb_list_hosts_sizeof, libxcb), Cint, (Ptr{Cvoid},), _buffer)
end

function xcb_list_hosts(c)
    ccall((:xcb_list_hosts, libxcb), xcb_list_hosts_cookie_t, (Ptr{xcb_connection_t},), c)
end

function xcb_list_hosts_unchecked(c)
    ccall((:xcb_list_hosts_unchecked, libxcb), xcb_list_hosts_cookie_t, (Ptr{xcb_connection_t},), c)
end

function xcb_list_hosts_hosts_length(R)
    ccall((:xcb_list_hosts_hosts_length, libxcb), Cint, (Ptr{xcb_list_hosts_reply_t},), R)
end

function xcb_list_hosts_hosts_iterator(R)
    ccall((:xcb_list_hosts_hosts_iterator, libxcb), xcb_host_iterator_t, (Ptr{xcb_list_hosts_reply_t},), R)
end

function xcb_list_hosts_reply(c, cookie, e)
    ccall((:xcb_list_hosts_reply, libxcb), Ptr{xcb_list_hosts_reply_t}, (Ptr{xcb_connection_t}, xcb_list_hosts_cookie_t, Ptr{Ptr{xcb_generic_error_t}}), c, cookie, e)
end

function xcb_set_access_control_checked(c, mode)
    ccall((:xcb_set_access_control_checked, libxcb), xcb_void_cookie_t, (Ptr{xcb_connection_t}, UInt8), c, mode)
end

function xcb_set_access_control(c, mode)
    ccall((:xcb_set_access_control, libxcb), xcb_void_cookie_t, (Ptr{xcb_connection_t}, UInt8), c, mode)
end

function xcb_set_close_down_mode_checked(c, mode)
    ccall((:xcb_set_close_down_mode_checked, libxcb), xcb_void_cookie_t, (Ptr{xcb_connection_t}, UInt8), c, mode)
end

function xcb_set_close_down_mode(c, mode)
    ccall((:xcb_set_close_down_mode, libxcb), xcb_void_cookie_t, (Ptr{xcb_connection_t}, UInt8), c, mode)
end

function xcb_kill_client_checked(c, resource)
    ccall((:xcb_kill_client_checked, libxcb), xcb_void_cookie_t, (Ptr{xcb_connection_t}, UInt32), c, resource)
end

function xcb_kill_client(c, resource)
    ccall((:xcb_kill_client, libxcb), xcb_void_cookie_t, (Ptr{xcb_connection_t}, UInt32), c, resource)
end

function xcb_rotate_properties_sizeof(_buffer)
    ccall((:xcb_rotate_properties_sizeof, libxcb), Cint, (Ptr{Cvoid},), _buffer)
end

function xcb_rotate_properties_checked(c, window, atoms_len, delta, atoms)
    ccall((:xcb_rotate_properties_checked, libxcb), xcb_void_cookie_t, (Ptr{xcb_connection_t}, xcb_window_t, UInt16, Int16, Ptr{xcb_atom_t}), c, window, atoms_len, delta, atoms)
end

function xcb_rotate_properties(c, window, atoms_len, delta, atoms)
    ccall((:xcb_rotate_properties, libxcb), xcb_void_cookie_t, (Ptr{xcb_connection_t}, xcb_window_t, UInt16, Int16, Ptr{xcb_atom_t}), c, window, atoms_len, delta, atoms)
end

function xcb_rotate_properties_atoms(R)
    ccall((:xcb_rotate_properties_atoms, libxcb), Ptr{xcb_atom_t}, (Ptr{xcb_rotate_properties_request_t},), R)
end

function xcb_rotate_properties_atoms_length(R)
    ccall((:xcb_rotate_properties_atoms_length, libxcb), Cint, (Ptr{xcb_rotate_properties_request_t},), R)
end

function xcb_rotate_properties_atoms_end(R)
    ccall((:xcb_rotate_properties_atoms_end, libxcb), xcb_generic_iterator_t, (Ptr{xcb_rotate_properties_request_t},), R)
end

function xcb_force_screen_saver_checked(c, mode)
    ccall((:xcb_force_screen_saver_checked, libxcb), xcb_void_cookie_t, (Ptr{xcb_connection_t}, UInt8), c, mode)
end

function xcb_force_screen_saver(c, mode)
    ccall((:xcb_force_screen_saver, libxcb), xcb_void_cookie_t, (Ptr{xcb_connection_t}, UInt8), c, mode)
end

function xcb_set_pointer_mapping_sizeof(_buffer)
    ccall((:xcb_set_pointer_mapping_sizeof, libxcb), Cint, (Ptr{Cvoid},), _buffer)
end

function xcb_set_pointer_mapping(c, map_len, map)
    ccall((:xcb_set_pointer_mapping, libxcb), xcb_set_pointer_mapping_cookie_t, (Ptr{xcb_connection_t}, UInt8, Ptr{UInt8}), c, map_len, map)
end

function xcb_set_pointer_mapping_unchecked(c, map_len, map)
    ccall((:xcb_set_pointer_mapping_unchecked, libxcb), xcb_set_pointer_mapping_cookie_t, (Ptr{xcb_connection_t}, UInt8, Ptr{UInt8}), c, map_len, map)
end

function xcb_set_pointer_mapping_reply(c, cookie, e)
    ccall((:xcb_set_pointer_mapping_reply, libxcb), Ptr{xcb_set_pointer_mapping_reply_t}, (Ptr{xcb_connection_t}, xcb_set_pointer_mapping_cookie_t, Ptr{Ptr{xcb_generic_error_t}}), c, cookie, e)
end

function xcb_get_pointer_mapping_sizeof(_buffer)
    ccall((:xcb_get_pointer_mapping_sizeof, libxcb), Cint, (Ptr{Cvoid},), _buffer)
end

function xcb_get_pointer_mapping(c)
    ccall((:xcb_get_pointer_mapping, libxcb), xcb_get_pointer_mapping_cookie_t, (Ptr{xcb_connection_t},), c)
end

function xcb_get_pointer_mapping_unchecked(c)
    ccall((:xcb_get_pointer_mapping_unchecked, libxcb), xcb_get_pointer_mapping_cookie_t, (Ptr{xcb_connection_t},), c)
end

function xcb_get_pointer_mapping_map(R)
    ccall((:xcb_get_pointer_mapping_map, libxcb), Ptr{UInt8}, (Ptr{xcb_get_pointer_mapping_reply_t},), R)
end

function xcb_get_pointer_mapping_map_length(R)
    ccall((:xcb_get_pointer_mapping_map_length, libxcb), Cint, (Ptr{xcb_get_pointer_mapping_reply_t},), R)
end

function xcb_get_pointer_mapping_map_end(R)
    ccall((:xcb_get_pointer_mapping_map_end, libxcb), xcb_generic_iterator_t, (Ptr{xcb_get_pointer_mapping_reply_t},), R)
end

function xcb_get_pointer_mapping_reply(c, cookie, e)
    ccall((:xcb_get_pointer_mapping_reply, libxcb), Ptr{xcb_get_pointer_mapping_reply_t}, (Ptr{xcb_connection_t}, xcb_get_pointer_mapping_cookie_t, Ptr{Ptr{xcb_generic_error_t}}), c, cookie, e)
end

function xcb_set_modifier_mapping_sizeof(_buffer)
    ccall((:xcb_set_modifier_mapping_sizeof, libxcb), Cint, (Ptr{Cvoid},), _buffer)
end

function xcb_set_modifier_mapping(c, keycodes_per_modifier, keycodes)
    ccall((:xcb_set_modifier_mapping, libxcb), xcb_set_modifier_mapping_cookie_t, (Ptr{xcb_connection_t}, UInt8, Ptr{xcb_keycode_t}), c, keycodes_per_modifier, keycodes)
end

function xcb_set_modifier_mapping_unchecked(c, keycodes_per_modifier, keycodes)
    ccall((:xcb_set_modifier_mapping_unchecked, libxcb), xcb_set_modifier_mapping_cookie_t, (Ptr{xcb_connection_t}, UInt8, Ptr{xcb_keycode_t}), c, keycodes_per_modifier, keycodes)
end

function xcb_set_modifier_mapping_reply(c, cookie, e)
    ccall((:xcb_set_modifier_mapping_reply, libxcb), Ptr{xcb_set_modifier_mapping_reply_t}, (Ptr{xcb_connection_t}, xcb_set_modifier_mapping_cookie_t, Ptr{Ptr{xcb_generic_error_t}}), c, cookie, e)
end

function xcb_get_modifier_mapping_sizeof(_buffer)
    ccall((:xcb_get_modifier_mapping_sizeof, libxcb), Cint, (Ptr{Cvoid},), _buffer)
end

function xcb_get_modifier_mapping(c)
    ccall((:xcb_get_modifier_mapping, libxcb), xcb_get_modifier_mapping_cookie_t, (Ptr{xcb_connection_t},), c)
end

function xcb_get_modifier_mapping_unchecked(c)
    ccall((:xcb_get_modifier_mapping_unchecked, libxcb), xcb_get_modifier_mapping_cookie_t, (Ptr{xcb_connection_t},), c)
end

function xcb_get_modifier_mapping_keycodes(R)
    ccall((:xcb_get_modifier_mapping_keycodes, libxcb), Ptr{xcb_keycode_t}, (Ptr{xcb_get_modifier_mapping_reply_t},), R)
end

function xcb_get_modifier_mapping_keycodes_length(R)
    ccall((:xcb_get_modifier_mapping_keycodes_length, libxcb), Cint, (Ptr{xcb_get_modifier_mapping_reply_t},), R)
end

function xcb_get_modifier_mapping_keycodes_end(R)
    ccall((:xcb_get_modifier_mapping_keycodes_end, libxcb), xcb_generic_iterator_t, (Ptr{xcb_get_modifier_mapping_reply_t},), R)
end

function xcb_get_modifier_mapping_reply(c, cookie, e)
    ccall((:xcb_get_modifier_mapping_reply, libxcb), Ptr{xcb_get_modifier_mapping_reply_t}, (Ptr{xcb_connection_t}, xcb_get_modifier_mapping_cookie_t, Ptr{Ptr{xcb_generic_error_t}}), c, cookie, e)
end

function xcb_no_operation_checked(c)
    ccall((:xcb_no_operation_checked, libxcb), xcb_void_cookie_t, (Ptr{xcb_connection_t},), c)
end

function xcb_no_operation(c)
    ccall((:xcb_no_operation, libxcb), xcb_void_cookie_t, (Ptr{xcb_connection_t},), c)
end

function xcb_flush(c)
    ccall((:xcb_flush, libxcb), Cint, (Ptr{xcb_connection_t},), c)
end

function xcb_get_maximum_request_length(c)
    ccall((:xcb_get_maximum_request_length, libxcb), UInt32, (Ptr{xcb_connection_t},), c)
end

function xcb_prefetch_maximum_request_length(c)
    ccall((:xcb_prefetch_maximum_request_length, libxcb), Cvoid, (Ptr{xcb_connection_t},), c)
end

function xcb_wait_for_event(c)
    ccall((:xcb_wait_for_event, libxcb), Ptr{xcb_generic_event_t}, (Ptr{xcb_connection_t},), c)
end

function xcb_poll_for_event(c)
    ccall((:xcb_poll_for_event, libxcb), Ptr{xcb_generic_event_t}, (Ptr{xcb_connection_t},), c)
end

function xcb_poll_for_queued_event(c)
    ccall((:xcb_poll_for_queued_event, libxcb), Ptr{xcb_generic_event_t}, (Ptr{xcb_connection_t},), c)
end

function xcb_poll_for_special_event(c, se)
    ccall((:xcb_poll_for_special_event, libxcb), Ptr{xcb_generic_event_t}, (Ptr{xcb_connection_t}, Ptr{xcb_special_event_t}), c, se)
end

function xcb_wait_for_special_event(c, se)
    ccall((:xcb_wait_for_special_event, libxcb), Ptr{xcb_generic_event_t}, (Ptr{xcb_connection_t}, Ptr{xcb_special_event_t}), c, se)
end

function xcb_register_for_special_xge(c, ext, eid, stamp)
    ccall((:xcb_register_for_special_xge, libxcb), Ptr{xcb_special_event_t}, (Ptr{xcb_connection_t}, Ptr{xcb_extension_t}, UInt32, Ptr{UInt32}), c, ext, eid, stamp)
end

function xcb_unregister_for_special_event(c, se)
    ccall((:xcb_unregister_for_special_event, libxcb), Cvoid, (Ptr{xcb_connection_t}, Ptr{xcb_special_event_t}), c, se)
end

function xcb_request_check(c, cookie)
    ccall((:xcb_request_check, libxcb), Ptr{xcb_generic_error_t}, (Ptr{xcb_connection_t}, xcb_void_cookie_t), c, cookie)
end

function xcb_discard_reply(c, sequence)
    ccall((:xcb_discard_reply, libxcb), Cvoid, (Ptr{xcb_connection_t}, UInt32), c, sequence)
end

function xcb_discard_reply64(c, sequence)
    ccall((:xcb_discard_reply64, libxcb), Cvoid, (Ptr{xcb_connection_t}, UInt64), c, sequence)
end

function xcb_get_extension_data(c, ext)
    ccall((:xcb_get_extension_data, libxcb), Ptr{xcb_query_extension_reply_t}, (Ptr{xcb_connection_t}, Ptr{xcb_extension_t}), c, ext)
end

function xcb_prefetch_extension_data(c, ext)
    ccall((:xcb_prefetch_extension_data, libxcb), Cvoid, (Ptr{xcb_connection_t}, Ptr{xcb_extension_t}), c, ext)
end

function xcb_get_setup(c)
    ccall((:xcb_get_setup, libxcb), Ptr{xcb_setup_t}, (Ptr{xcb_connection_t},), c)
end

function xcb_get_file_descriptor(c)
    ccall((:xcb_get_file_descriptor, libxcb), Cint, (Ptr{xcb_connection_t},), c)
end

function xcb_connection_has_error(c)
    ccall((:xcb_connection_has_error, libxcb), Cint, (Ptr{xcb_connection_t},), c)
end

function xcb_connect_to_fd(fd, auth_info)
    ccall((:xcb_connect_to_fd, libxcb), Ptr{xcb_connection_t}, (Cint, Ptr{xcb_auth_info_t}), fd, auth_info)
end

function xcb_disconnect(c)
    ccall((:xcb_disconnect, libxcb), Cvoid, (Ptr{xcb_connection_t},), c)
end

function xcb_parse_display(name, host, display, screen)
    ccall((:xcb_parse_display, libxcb), Cint, (Cstring, Ptr{Cstring}, Ptr{Cint}, Ptr{Cint}), name, host, display, screen)
end

function xcb_connect(displayname, screenp)
    ccall((:xcb_connect, libxcb), Ptr{xcb_connection_t}, (Cstring, Ptr{Cint}), displayname, screenp)
end

function xcb_connect_to_display_with_auth_info(display, auth, screen)
    ccall((:xcb_connect_to_display_with_auth_info, libxcb), Ptr{xcb_connection_t}, (Cstring, Ptr{xcb_auth_info_t}, Ptr{Cint}), display, auth, screen)
end

function xcb_generate_id(c)
    ccall((:xcb_generate_id, libxcb), UInt32, (Ptr{xcb_connection_t},), c)
end
