# Automatically generated using Clang.jl


# Skipping MacroDefinition: XCB_PACKED __attribute__ ( ( __packed__ ) )

const X_PROTOCOL = 11
const X_PROTOCOL_REVISION = 0
const X_TCP_PORT = 6000
const XCB_CONN_ERROR = 1
const XCB_CONN_CLOSED_EXT_NOTSUPPORTED = 2
const XCB_CONN_CLOSED_MEM_INSUFFICIENT = 3
const XCB_CONN_CLOSED_REQ_LEN_EXCEED = 4
const XCB_CONN_CLOSED_PARSE_ERR = 5
const XCB_CONN_CLOSED_INVALID_SCREEN = 6
const XCB_CONN_CLOSED_FDPASSING_FAILED = 7

# Skipping MacroDefinition: XCB_TYPE_PAD ( T , I ) ( - ( I ) & ( sizeof ( T ) > 4 ? 3 : sizeof ( T ) - 1 ) )

const XCB_KEY_PRESS = 2
const XCB_KEY_RELEASE = 3
const XCB_BUTTON_PRESS = 4
const XCB_BUTTON_RELEASE = 5
const XCB_MOTION_NOTIFY = 6
const XCB_ENTER_NOTIFY = 7
const XCB_LEAVE_NOTIFY = 8
const XCB_FOCUS_IN = 9
const XCB_FOCUS_OUT = 10
const XCB_KEYMAP_NOTIFY = 11
const XCB_EXPOSE = 12
const XCB_GRAPHICS_EXPOSURE = 13
const XCB_NO_EXPOSURE = 14
const XCB_VISIBILITY_NOTIFY = 15
const XCB_CREATE_NOTIFY = 16
const XCB_DESTROY_NOTIFY = 17
const XCB_UNMAP_NOTIFY = 18
const XCB_MAP_NOTIFY = 19
const XCB_MAP_REQUEST = 20
const XCB_REPARENT_NOTIFY = 21
const XCB_CONFIGURE_NOTIFY = 22
const XCB_CONFIGURE_REQUEST = 23
const XCB_GRAVITY_NOTIFY = 24
const XCB_RESIZE_REQUEST = 25
const XCB_CIRCULATE_NOTIFY = 26
const XCB_CIRCULATE_REQUEST = 27
const XCB_PROPERTY_NOTIFY = 28
const XCB_SELECTION_CLEAR = 29
const XCB_SELECTION_REQUEST = 30
const XCB_SELECTION_NOTIFY = 31
const XCB_COLORMAP_NOTIFY = 32
const XCB_CLIENT_MESSAGE = 33
const XCB_MAPPING_NOTIFY = 34
const XCB_GE_GENERIC = 35
const XCB_REQUEST = 1
const XCB_VALUE = 2
const XCB_WINDOW = 3
const XCB_PIXMAP = 4
const XCB_ATOM = 5
const XCB_CURSOR = 6
const XCB_FONT = 7
const XCB_MATCH = 8
const XCB_DRAWABLE = 9
const XCB_ACCESS = 10
const XCB_ALLOC = 11
const XCB_COLORMAP = 12
const XCB_G_CONTEXT = 13
const XCB_ID_CHOICE = 14
const XCB_NAME = 15
const XCB_LENGTH = 16
const XCB_IMPLEMENTATION = 17
const XCB_CREATE_WINDOW = 1
const XCB_CHANGE_WINDOW_ATTRIBUTES = 2
const XCB_GET_WINDOW_ATTRIBUTES = 3
const XCB_DESTROY_WINDOW = 4
const XCB_DESTROY_SUBWINDOWS = 5
const XCB_CHANGE_SAVE_SET = 6
const XCB_REPARENT_WINDOW = 7
const XCB_MAP_WINDOW = 8
const XCB_MAP_SUBWINDOWS = 9
const XCB_UNMAP_WINDOW = 10
const XCB_UNMAP_SUBWINDOWS = 11
const XCB_CONFIGURE_WINDOW = 12
const XCB_CIRCULATE_WINDOW = 13
const XCB_GET_GEOMETRY = 14
const XCB_QUERY_TREE = 15
const XCB_INTERN_ATOM = 16
const XCB_GET_ATOM_NAME = 17
const XCB_CHANGE_PROPERTY = 18
const XCB_DELETE_PROPERTY = 19
const XCB_GET_PROPERTY = 20
const XCB_LIST_PROPERTIES = 21
const XCB_SET_SELECTION_OWNER = 22
const XCB_GET_SELECTION_OWNER = 23
const XCB_CONVERT_SELECTION = 24
const XCB_SEND_EVENT = 25
const XCB_GRAB_POINTER = 26
const XCB_UNGRAB_POINTER = 27
const XCB_GRAB_BUTTON = 28
const XCB_UNGRAB_BUTTON = 29
const XCB_CHANGE_ACTIVE_POINTER_GRAB = 30
const XCB_GRAB_KEYBOARD = 31
const XCB_UNGRAB_KEYBOARD = 32
const XCB_GRAB_KEY = 33
const XCB_UNGRAB_KEY = 34
const XCB_ALLOW_EVENTS = 35
const XCB_GRAB_SERVER = 36
const XCB_UNGRAB_SERVER = 37
const XCB_QUERY_POINTER = 38
const XCB_GET_MOTION_EVENTS = 39
const XCB_TRANSLATE_COORDINATES = 40
const XCB_WARP_POINTER = 41
const XCB_SET_INPUT_FOCUS = 42
const XCB_GET_INPUT_FOCUS = 43
const XCB_QUERY_KEYMAP = 44
const XCB_OPEN_FONT = 45
const XCB_CLOSE_FONT = 46
const XCB_QUERY_FONT = 47
const XCB_QUERY_TEXT_EXTENTS = 48
const XCB_LIST_FONTS = 49
const XCB_LIST_FONTS_WITH_INFO = 50
const XCB_SET_FONT_PATH = 51
const XCB_GET_FONT_PATH = 52
const XCB_CREATE_PIXMAP = 53
const XCB_FREE_PIXMAP = 54
const XCB_CREATE_GC = 55
const XCB_CHANGE_GC = 56
const XCB_COPY_GC = 57
const XCB_SET_DASHES = 58
const XCB_SET_CLIP_RECTANGLES = 59
const XCB_FREE_GC = 60
const XCB_CLEAR_AREA = 61
const XCB_COPY_AREA = 62
const XCB_COPY_PLANE = 63
const XCB_POLY_POINT = 64
const XCB_POLY_LINE = 65
const XCB_POLY_SEGMENT = 66
const XCB_POLY_RECTANGLE = 67
const XCB_POLY_ARC = 68
const XCB_FILL_POLY = 69
const XCB_POLY_FILL_RECTANGLE = 70
const XCB_POLY_FILL_ARC = 71
const XCB_PUT_IMAGE = 72
const XCB_GET_IMAGE = 73
const XCB_POLY_TEXT_8 = 74
const XCB_POLY_TEXT_16 = 75
const XCB_IMAGE_TEXT_8 = 76
const XCB_IMAGE_TEXT_16 = 77
const XCB_CREATE_COLORMAP = 78
const XCB_FREE_COLORMAP = 79
const XCB_COPY_COLORMAP_AND_FREE = 80
const XCB_INSTALL_COLORMAP = 81
const XCB_UNINSTALL_COLORMAP = 82
const XCB_LIST_INSTALLED_COLORMAPS = 83
const XCB_ALLOC_COLOR = 84
const XCB_ALLOC_NAMED_COLOR = 85
const XCB_ALLOC_COLOR_CELLS = 86
const XCB_ALLOC_COLOR_PLANES = 87
const XCB_FREE_COLORS = 88
const XCB_STORE_COLORS = 89
const XCB_STORE_NAMED_COLOR = 90
const XCB_QUERY_COLORS = 91
const XCB_LOOKUP_COLOR = 92
const XCB_CREATE_CURSOR = 93
const XCB_CREATE_GLYPH_CURSOR = 94
const XCB_FREE_CURSOR = 95
const XCB_RECOLOR_CURSOR = 96
const XCB_QUERY_BEST_SIZE = 97
const XCB_QUERY_EXTENSION = 98
const XCB_LIST_EXTENSIONS = 99
const XCB_CHANGE_KEYBOARD_MAPPING = 100
const XCB_GET_KEYBOARD_MAPPING = 101
const XCB_CHANGE_KEYBOARD_CONTROL = 102
const XCB_GET_KEYBOARD_CONTROL = 103
const XCB_BELL = 104
const XCB_CHANGE_POINTER_CONTROL = 105
const XCB_GET_POINTER_CONTROL = 106
const XCB_SET_SCREEN_SAVER = 107
const XCB_GET_SCREEN_SAVER = 108
const XCB_CHANGE_HOSTS = 109
const XCB_LIST_HOSTS = 110
const XCB_SET_ACCESS_CONTROL = 111
const XCB_SET_CLOSE_DOWN_MODE = 112
const XCB_KILL_CLIENT = 113
const XCB_ROTATE_PROPERTIES = 114
const XCB_FORCE_SCREEN_SAVER = 115
const XCB_SET_POINTER_MAPPING = 116
const XCB_GET_POINTER_MAPPING = 117
const XCB_SET_MODIFIER_MAPPING = 118
const XCB_GET_MODIFIER_MAPPING = 119
const XCB_NO_OPERATION = 127
const XCB_NONE = Int32(0)
const XCB_COPY_FROM_PARENT = Int32(0)
const XCB_CURRENT_TIME = Int32(0)
const XCB_NO_SYMBOL = Int32(0)
const xcb_connection_t = Cvoid

struct xcb_generic_iterator_t
    data::Ptr{Cvoid}
    rem::Cint
    index::Cint
end

struct xcb_generic_reply_t
    response_type::UInt8
    pad0::UInt8
    sequence::UInt16
    length::UInt32
end

struct xcb_generic_event_t
    response_type::UInt8
    pad0::UInt8
    sequence::UInt16
    pad::NTuple{7, UInt32}
    full_sequence::UInt32
end

struct xcb_raw_generic_event_t
    response_type::UInt8
    pad0::UInt8
    sequence::UInt16
    pad::NTuple{7, UInt32}
end

struct xcb_ge_event_t
    response_type::UInt8
    pad0::UInt8
    sequence::UInt16
    length::UInt32
    event_type::UInt16
    pad1::UInt16
    pad::NTuple{5, UInt32}
    full_sequence::UInt32
end

struct xcb_generic_error_t
    response_type::UInt8
    error_code::UInt8
    sequence::UInt16
    resource_id::UInt32
    minor_code::UInt16
    major_code::UInt8
    pad0::UInt8
    pad::NTuple{5, UInt32}
    full_sequence::UInt32
end

struct xcb_void_cookie_t
    sequence::UInt32
end

struct xcb_char2b_t
    byte1::UInt8
    byte2::UInt8
end

struct xcb_char2b_iterator_t
    data::Ptr{xcb_char2b_t}
    rem::Cint
    index::Cint
end

const xcb_window_t = UInt32

struct xcb_window_iterator_t
    data::Ptr{xcb_window_t}
    rem::Cint
    index::Cint
end

const xcb_pixmap_t = UInt32

struct xcb_pixmap_iterator_t
    data::Ptr{xcb_pixmap_t}
    rem::Cint
    index::Cint
end

const xcb_cursor_t = UInt32

struct xcb_cursor_iterator_t
    data::Ptr{xcb_cursor_t}
    rem::Cint
    index::Cint
end

const xcb_font_t = UInt32

struct xcb_font_iterator_t
    data::Ptr{xcb_font_t}
    rem::Cint
    index::Cint
end

const xcb_gcontext_t = UInt32

struct xcb_gcontext_iterator_t
    data::Ptr{xcb_gcontext_t}
    rem::Cint
    index::Cint
end

const xcb_colormap_t = UInt32

struct xcb_colormap_iterator_t
    data::Ptr{xcb_colormap_t}
    rem::Cint
    index::Cint
end

const xcb_atom_t = UInt32

struct xcb_atom_iterator_t
    data::Ptr{xcb_atom_t}
    rem::Cint
    index::Cint
end

const xcb_drawable_t = UInt32

struct xcb_drawable_iterator_t
    data::Ptr{xcb_drawable_t}
    rem::Cint
    index::Cint
end

const xcb_fontable_t = UInt32

struct xcb_fontable_iterator_t
    data::Ptr{xcb_fontable_t}
    rem::Cint
    index::Cint
end

const xcb_bool32_t = UInt32

struct xcb_bool32_iterator_t
    data::Ptr{xcb_bool32_t}
    rem::Cint
    index::Cint
end

const xcb_visualid_t = UInt32

struct xcb_visualid_iterator_t
    data::Ptr{xcb_visualid_t}
    rem::Cint
    index::Cint
end

const xcb_timestamp_t = UInt32

struct xcb_timestamp_iterator_t
    data::Ptr{xcb_timestamp_t}
    rem::Cint
    index::Cint
end

const xcb_keysym_t = UInt32

struct xcb_keysym_iterator_t
    data::Ptr{xcb_keysym_t}
    rem::Cint
    index::Cint
end

const xcb_keycode_t = UInt8

struct xcb_keycode_iterator_t
    data::Ptr{xcb_keycode_t}
    rem::Cint
    index::Cint
end

const xcb_keycode32_t = UInt32

struct xcb_keycode32_iterator_t
    data::Ptr{xcb_keycode32_t}
    rem::Cint
    index::Cint
end

const xcb_button_t = UInt8

struct xcb_button_iterator_t
    data::Ptr{xcb_button_t}
    rem::Cint
    index::Cint
end

struct xcb_point_t
    x::Int16
    y::Int16
end

struct xcb_point_iterator_t
    data::Ptr{xcb_point_t}
    rem::Cint
    index::Cint
end

struct xcb_rectangle_t
    x::Int16
    y::Int16
    width::UInt16
    height::UInt16
end

struct xcb_rectangle_iterator_t
    data::Ptr{xcb_rectangle_t}
    rem::Cint
    index::Cint
end

struct xcb_arc_t
    x::Int16
    y::Int16
    width::UInt16
    height::UInt16
    angle1::Int16
    angle2::Int16
end

struct xcb_arc_iterator_t
    data::Ptr{xcb_arc_t}
    rem::Cint
    index::Cint
end

struct xcb_format_t
    depth::UInt8
    bits_per_pixel::UInt8
    scanline_pad::UInt8
    pad0::NTuple{5, UInt8}
end

struct xcb_format_iterator_t
    data::Ptr{xcb_format_t}
    rem::Cint
    index::Cint
end

@cenum xcb_visual_class_t::UInt32 begin
    XCB_VISUAL_CLASS_STATIC_GRAY = 0
    XCB_VISUAL_CLASS_GRAY_SCALE = 1
    XCB_VISUAL_CLASS_STATIC_COLOR = 2
    XCB_VISUAL_CLASS_PSEUDO_COLOR = 3
    XCB_VISUAL_CLASS_TRUE_COLOR = 4
    XCB_VISUAL_CLASS_DIRECT_COLOR = 5
end


struct xcb_visualtype_t
    visual_id::xcb_visualid_t
    _class::UInt8
    bits_per_rgb_value::UInt8
    colormap_entries::UInt16
    red_mask::UInt32
    green_mask::UInt32
    blue_mask::UInt32
    pad0::NTuple{4, UInt8}
end

struct xcb_visualtype_iterator_t
    data::Ptr{xcb_visualtype_t}
    rem::Cint
    index::Cint
end

struct xcb_depth_t
    depth::UInt8
    pad0::UInt8
    visuals_len::UInt16
    pad1::NTuple{4, UInt8}
end

struct xcb_depth_iterator_t
    data::Ptr{xcb_depth_t}
    rem::Cint
    index::Cint
end

@cenum xcb_event_mask_t::UInt32 begin
    XCB_EVENT_MASK_NO_EVENT = 0
    XCB_EVENT_MASK_KEY_PRESS = 1
    XCB_EVENT_MASK_KEY_RELEASE = 2
    XCB_EVENT_MASK_BUTTON_PRESS = 4
    XCB_EVENT_MASK_BUTTON_RELEASE = 8
    XCB_EVENT_MASK_ENTER_WINDOW = 16
    XCB_EVENT_MASK_LEAVE_WINDOW = 32
    XCB_EVENT_MASK_POINTER_MOTION = 64
    XCB_EVENT_MASK_POINTER_MOTION_HINT = 128
    XCB_EVENT_MASK_BUTTON_1_MOTION = 256
    XCB_EVENT_MASK_BUTTON_2_MOTION = 512
    XCB_EVENT_MASK_BUTTON_3_MOTION = 1024
    XCB_EVENT_MASK_BUTTON_4_MOTION = 2048
    XCB_EVENT_MASK_BUTTON_5_MOTION = 4096
    XCB_EVENT_MASK_BUTTON_MOTION = 8192
    XCB_EVENT_MASK_KEYMAP_STATE = 16384
    XCB_EVENT_MASK_EXPOSURE = 32768
    XCB_EVENT_MASK_VISIBILITY_CHANGE = 65536
    XCB_EVENT_MASK_STRUCTURE_NOTIFY = 131072
    XCB_EVENT_MASK_RESIZE_REDIRECT = 262144
    XCB_EVENT_MASK_SUBSTRUCTURE_NOTIFY = 524288
    XCB_EVENT_MASK_SUBSTRUCTURE_REDIRECT = 1048576
    XCB_EVENT_MASK_FOCUS_CHANGE = 2097152
    XCB_EVENT_MASK_PROPERTY_CHANGE = 4194304
    XCB_EVENT_MASK_COLOR_MAP_CHANGE = 8388608
    XCB_EVENT_MASK_OWNER_GRAB_BUTTON = 16777216
end

@cenum xcb_backing_store_t::UInt32 begin
    XCB_BACKING_STORE_NOT_USEFUL = 0
    XCB_BACKING_STORE_WHEN_MAPPED = 1
    XCB_BACKING_STORE_ALWAYS = 2
end


struct xcb_screen_t
    root::xcb_window_t
    default_colormap::xcb_colormap_t
    white_pixel::UInt32
    black_pixel::UInt32
    current_input_masks::UInt32
    width_in_pixels::UInt16
    height_in_pixels::UInt16
    width_in_millimeters::UInt16
    height_in_millimeters::UInt16
    min_installed_maps::UInt16
    max_installed_maps::UInt16
    root_visual::xcb_visualid_t
    backing_stores::UInt8
    save_unders::UInt8
    root_depth::UInt8
    allowed_depths_len::UInt8
end

struct xcb_screen_iterator_t
    data::Ptr{xcb_screen_t}
    rem::Cint
    index::Cint
end

struct xcb_setup_request_t
    byte_order::UInt8
    pad0::UInt8
    protocol_major_version::UInt16
    protocol_minor_version::UInt16
    authorization_protocol_name_len::UInt16
    authorization_protocol_data_len::UInt16
    pad1::NTuple{2, UInt8}
end

struct xcb_setup_request_iterator_t
    data::Ptr{xcb_setup_request_t}
    rem::Cint
    index::Cint
end

struct xcb_setup_failed_t
    status::UInt8
    reason_len::UInt8
    protocol_major_version::UInt16
    protocol_minor_version::UInt16
    length::UInt16
end

struct xcb_setup_failed_iterator_t
    data::Ptr{xcb_setup_failed_t}
    rem::Cint
    index::Cint
end

struct xcb_setup_authenticate_t
    status::UInt8
    pad0::NTuple{5, UInt8}
    length::UInt16
end

struct xcb_setup_authenticate_iterator_t
    data::Ptr{xcb_setup_authenticate_t}
    rem::Cint
    index::Cint
end

@cenum xcb_image_order_t::UInt32 begin
    XCB_IMAGE_ORDER_LSB_FIRST = 0
    XCB_IMAGE_ORDER_MSB_FIRST = 1
end


struct xcb_setup_t
    status::UInt8
    pad0::UInt8
    protocol_major_version::UInt16
    protocol_minor_version::UInt16
    length::UInt16
    release_number::UInt32
    resource_id_base::UInt32
    resource_id_mask::UInt32
    motion_buffer_size::UInt32
    vendor_len::UInt16
    maximum_request_length::UInt16
    roots_len::UInt8
    pixmap_formats_len::UInt8
    image_byte_order::UInt8
    bitmap_format_bit_order::UInt8
    bitmap_format_scanline_unit::UInt8
    bitmap_format_scanline_pad::UInt8
    min_keycode::xcb_keycode_t
    max_keycode::xcb_keycode_t
    pad1::NTuple{4, UInt8}
end

struct xcb_setup_iterator_t
    data::Ptr{xcb_setup_t}
    rem::Cint
    index::Cint
end

@cenum xcb_mod_mask_t::UInt32 begin
    XCB_MOD_MASK_SHIFT = 1
    XCB_MOD_MASK_LOCK = 2
    XCB_MOD_MASK_CONTROL = 4
    XCB_MOD_MASK_1 = 8
    XCB_MOD_MASK_2 = 16
    XCB_MOD_MASK_3 = 32
    XCB_MOD_MASK_4 = 64
    XCB_MOD_MASK_5 = 128
    XCB_MOD_MASK_ANY = 32768
end

@cenum xcb_key_but_mask_t::UInt32 begin
    XCB_KEY_BUT_MASK_SHIFT = 1
    XCB_KEY_BUT_MASK_LOCK = 2
    XCB_KEY_BUT_MASK_CONTROL = 4
    XCB_KEY_BUT_MASK_MOD_1 = 8
    XCB_KEY_BUT_MASK_MOD_2 = 16
    XCB_KEY_BUT_MASK_MOD_3 = 32
    XCB_KEY_BUT_MASK_MOD_4 = 64
    XCB_KEY_BUT_MASK_MOD_5 = 128
    XCB_KEY_BUT_MASK_BUTTON_1 = 256
    XCB_KEY_BUT_MASK_BUTTON_2 = 512
    XCB_KEY_BUT_MASK_BUTTON_3 = 1024
    XCB_KEY_BUT_MASK_BUTTON_4 = 2048
    XCB_KEY_BUT_MASK_BUTTON_5 = 4096
end

@cenum xcb_window_enum_t::UInt32 begin
    XCB_WINDOW_NONE = 0
end


struct xcb_key_press_event_t
    response_type::UInt8
    detail::xcb_keycode_t
    sequence::UInt16
    time::xcb_timestamp_t
    root::xcb_window_t
    event::xcb_window_t
    child::xcb_window_t
    root_x::Int16
    root_y::Int16
    event_x::Int16
    event_y::Int16
    state::UInt16
    same_screen::UInt8
    pad0::UInt8
end

const xcb_key_release_event_t = xcb_key_press_event_t

@cenum xcb_button_mask_t::UInt32 begin
    XCB_BUTTON_MASK_1 = 256
    XCB_BUTTON_MASK_2 = 512
    XCB_BUTTON_MASK_3 = 1024
    XCB_BUTTON_MASK_4 = 2048
    XCB_BUTTON_MASK_5 = 4096
    XCB_BUTTON_MASK_ANY = 32768
end


struct xcb_button_press_event_t
    response_type::UInt8
    detail::xcb_button_t
    sequence::UInt16
    time::xcb_timestamp_t
    root::xcb_window_t
    event::xcb_window_t
    child::xcb_window_t
    root_x::Int16
    root_y::Int16
    event_x::Int16
    event_y::Int16
    state::UInt16
    same_screen::UInt8
    pad0::UInt8
end

const xcb_button_release_event_t = xcb_button_press_event_t

@cenum xcb_motion_t::UInt32 begin
    XCB_MOTION_NORMAL = 0
    XCB_MOTION_HINT = 1
end


struct xcb_motion_notify_event_t
    response_type::UInt8
    detail::UInt8
    sequence::UInt16
    time::xcb_timestamp_t
    root::xcb_window_t
    event::xcb_window_t
    child::xcb_window_t
    root_x::Int16
    root_y::Int16
    event_x::Int16
    event_y::Int16
    state::UInt16
    same_screen::UInt8
    pad0::UInt8
end

@cenum xcb_notify_detail_t::UInt32 begin
    XCB_NOTIFY_DETAIL_ANCESTOR = 0
    XCB_NOTIFY_DETAIL_VIRTUAL = 1
    XCB_NOTIFY_DETAIL_INFERIOR = 2
    XCB_NOTIFY_DETAIL_NONLINEAR = 3
    XCB_NOTIFY_DETAIL_NONLINEAR_VIRTUAL = 4
    XCB_NOTIFY_DETAIL_POINTER = 5
    XCB_NOTIFY_DETAIL_POINTER_ROOT = 6
    XCB_NOTIFY_DETAIL_NONE = 7
end

@cenum xcb_notify_mode_t::UInt32 begin
    XCB_NOTIFY_MODE_NORMAL = 0
    XCB_NOTIFY_MODE_GRAB = 1
    XCB_NOTIFY_MODE_UNGRAB = 2
    XCB_NOTIFY_MODE_WHILE_GRABBED = 3
end


struct xcb_enter_notify_event_t
    response_type::UInt8
    detail::UInt8
    sequence::UInt16
    time::xcb_timestamp_t
    root::xcb_window_t
    event::xcb_window_t
    child::xcb_window_t
    root_x::Int16
    root_y::Int16
    event_x::Int16
    event_y::Int16
    state::UInt16
    mode::UInt8
    same_screen_focus::UInt8
end

const xcb_leave_notify_event_t = xcb_enter_notify_event_t

struct xcb_focus_in_event_t
    response_type::UInt8
    detail::UInt8
    sequence::UInt16
    event::xcb_window_t
    mode::UInt8
    pad0::NTuple{3, UInt8}
end

const xcb_focus_out_event_t = xcb_focus_in_event_t

struct xcb_keymap_notify_event_t
    response_type::UInt8
    keys::NTuple{31, UInt8}
end

struct xcb_expose_event_t
    response_type::UInt8
    pad0::UInt8
    sequence::UInt16
    window::xcb_window_t
    x::UInt16
    y::UInt16
    width::UInt16
    height::UInt16
    count::UInt16
    pad1::NTuple{2, UInt8}
end

struct xcb_graphics_exposure_event_t
    response_type::UInt8
    pad0::UInt8
    sequence::UInt16
    drawable::xcb_drawable_t
    x::UInt16
    y::UInt16
    width::UInt16
    height::UInt16
    minor_opcode::UInt16
    count::UInt16
    major_opcode::UInt8
    pad1::NTuple{3, UInt8}
end

struct xcb_no_exposure_event_t
    response_type::UInt8
    pad0::UInt8
    sequence::UInt16
    drawable::xcb_drawable_t
    minor_opcode::UInt16
    major_opcode::UInt8
    pad1::UInt8
end

@cenum xcb_visibility_t::UInt32 begin
    XCB_VISIBILITY_UNOBSCURED = 0
    XCB_VISIBILITY_PARTIALLY_OBSCURED = 1
    XCB_VISIBILITY_FULLY_OBSCURED = 2
end


struct xcb_visibility_notify_event_t
    response_type::UInt8
    pad0::UInt8
    sequence::UInt16
    window::xcb_window_t
    state::UInt8
    pad1::NTuple{3, UInt8}
end

struct xcb_create_notify_event_t
    response_type::UInt8
    pad0::UInt8
    sequence::UInt16
    parent::xcb_window_t
    window::xcb_window_t
    x::Int16
    y::Int16
    width::UInt16
    height::UInt16
    border_width::UInt16
    override_redirect::UInt8
    pad1::UInt8
end

struct xcb_destroy_notify_event_t
    response_type::UInt8
    pad0::UInt8
    sequence::UInt16
    event::xcb_window_t
    window::xcb_window_t
end

struct xcb_unmap_notify_event_t
    response_type::UInt8
    pad0::UInt8
    sequence::UInt16
    event::xcb_window_t
    window::xcb_window_t
    from_configure::UInt8
    pad1::NTuple{3, UInt8}
end

struct xcb_map_notify_event_t
    response_type::UInt8
    pad0::UInt8
    sequence::UInt16
    event::xcb_window_t
    window::xcb_window_t
    override_redirect::UInt8
    pad1::NTuple{3, UInt8}
end

struct xcb_map_request_event_t
    response_type::UInt8
    pad0::UInt8
    sequence::UInt16
    parent::xcb_window_t
    window::xcb_window_t
end

struct xcb_reparent_notify_event_t
    response_type::UInt8
    pad0::UInt8
    sequence::UInt16
    event::xcb_window_t
    window::xcb_window_t
    parent::xcb_window_t
    x::Int16
    y::Int16
    override_redirect::UInt8
    pad1::NTuple{3, UInt8}
end

struct xcb_configure_notify_event_t
    response_type::UInt8
    pad0::UInt8
    sequence::UInt16
    event::xcb_window_t
    window::xcb_window_t
    above_sibling::xcb_window_t
    x::Int16
    y::Int16
    width::UInt16
    height::UInt16
    border_width::UInt16
    override_redirect::UInt8
    pad1::UInt8
end

struct xcb_configure_request_event_t
    response_type::UInt8
    stack_mode::UInt8
    sequence::UInt16
    parent::xcb_window_t
    window::xcb_window_t
    sibling::xcb_window_t
    x::Int16
    y::Int16
    width::UInt16
    height::UInt16
    border_width::UInt16
    value_mask::UInt16
end

struct xcb_gravity_notify_event_t
    response_type::UInt8
    pad0::UInt8
    sequence::UInt16
    event::xcb_window_t
    window::xcb_window_t
    x::Int16
    y::Int16
end

struct xcb_resize_request_event_t
    response_type::UInt8
    pad0::UInt8
    sequence::UInt16
    window::xcb_window_t
    width::UInt16
    height::UInt16
end

@cenum xcb_place_t::UInt32 begin
    XCB_PLACE_ON_TOP = 0
    XCB_PLACE_ON_BOTTOM = 1
end


struct xcb_circulate_notify_event_t
    response_type::UInt8
    pad0::UInt8
    sequence::UInt16
    event::xcb_window_t
    window::xcb_window_t
    pad1::NTuple{4, UInt8}
    place::UInt8
    pad2::NTuple{3, UInt8}
end

const xcb_circulate_request_event_t = xcb_circulate_notify_event_t

@cenum xcb_property_t::UInt32 begin
    XCB_PROPERTY_NEW_VALUE = 0
    XCB_PROPERTY_DELETE = 1
end


struct xcb_property_notify_event_t
    response_type::UInt8
    pad0::UInt8
    sequence::UInt16
    window::xcb_window_t
    atom::xcb_atom_t
    time::xcb_timestamp_t
    state::UInt8
    pad1::NTuple{3, UInt8}
end

struct xcb_selection_clear_event_t
    response_type::UInt8
    pad0::UInt8
    sequence::UInt16
    time::xcb_timestamp_t
    owner::xcb_window_t
    selection::xcb_atom_t
end

@cenum xcb_time_t::UInt32 begin
    XCB_TIME_CURRENT_TIME = 0
end

@cenum xcb_atom_enum_t::UInt32 begin
    XCB_ATOM_NONE = 0
    XCB_ATOM_ANY = 0
    XCB_ATOM_PRIMARY = 1
    XCB_ATOM_SECONDARY = 2
    XCB_ATOM_ARC = 3
    XCB_ATOM_ATOM = 4
    XCB_ATOM_BITMAP = 5
    XCB_ATOM_CARDINAL = 6
    XCB_ATOM_COLORMAP = 7
    XCB_ATOM_CURSOR = 8
    XCB_ATOM_CUT_BUFFER0 = 9
    XCB_ATOM_CUT_BUFFER1 = 10
    XCB_ATOM_CUT_BUFFER2 = 11
    XCB_ATOM_CUT_BUFFER3 = 12
    XCB_ATOM_CUT_BUFFER4 = 13
    XCB_ATOM_CUT_BUFFER5 = 14
    XCB_ATOM_CUT_BUFFER6 = 15
    XCB_ATOM_CUT_BUFFER7 = 16
    XCB_ATOM_DRAWABLE = 17
    XCB_ATOM_FONT = 18
    XCB_ATOM_INTEGER = 19
    XCB_ATOM_PIXMAP = 20
    XCB_ATOM_POINT = 21
    XCB_ATOM_RECTANGLE = 22
    XCB_ATOM_RESOURCE_MANAGER = 23
    XCB_ATOM_RGB_COLOR_MAP = 24
    XCB_ATOM_RGB_BEST_MAP = 25
    XCB_ATOM_RGB_BLUE_MAP = 26
    XCB_ATOM_RGB_DEFAULT_MAP = 27
    XCB_ATOM_RGB_GRAY_MAP = 28
    XCB_ATOM_RGB_GREEN_MAP = 29
    XCB_ATOM_RGB_RED_MAP = 30
    XCB_ATOM_STRING = 31
    XCB_ATOM_VISUALID = 32
    XCB_ATOM_WINDOW = 33
    XCB_ATOM_WM_COMMAND = 34
    XCB_ATOM_WM_HINTS = 35
    XCB_ATOM_WM_CLIENT_MACHINE = 36
    XCB_ATOM_WM_ICON_NAME = 37
    XCB_ATOM_WM_ICON_SIZE = 38
    XCB_ATOM_WM_NAME = 39
    XCB_ATOM_WM_NORMAL_HINTS = 40
    XCB_ATOM_WM_SIZE_HINTS = 41
    XCB_ATOM_WM_ZOOM_HINTS = 42
    XCB_ATOM_MIN_SPACE = 43
    XCB_ATOM_NORM_SPACE = 44
    XCB_ATOM_MAX_SPACE = 45
    XCB_ATOM_END_SPACE = 46
    XCB_ATOM_SUPERSCRIPT_X = 47
    XCB_ATOM_SUPERSCRIPT_Y = 48
    XCB_ATOM_SUBSCRIPT_X = 49
    XCB_ATOM_SUBSCRIPT_Y = 50
    XCB_ATOM_UNDERLINE_POSITION = 51
    XCB_ATOM_UNDERLINE_THICKNESS = 52
    XCB_ATOM_STRIKEOUT_ASCENT = 53
    XCB_ATOM_STRIKEOUT_DESCENT = 54
    XCB_ATOM_ITALIC_ANGLE = 55
    XCB_ATOM_X_HEIGHT = 56
    XCB_ATOM_QUAD_WIDTH = 57
    XCB_ATOM_WEIGHT = 58
    XCB_ATOM_POINT_SIZE = 59
    XCB_ATOM_RESOLUTION = 60
    XCB_ATOM_COPYRIGHT = 61
    XCB_ATOM_NOTICE = 62
    XCB_ATOM_FONT_NAME = 63
    XCB_ATOM_FAMILY_NAME = 64
    XCB_ATOM_FULL_NAME = 65
    XCB_ATOM_CAP_HEIGHT = 66
    XCB_ATOM_WM_CLASS = 67
    XCB_ATOM_WM_TRANSIENT_FOR = 68
end


struct xcb_selection_request_event_t
    response_type::UInt8
    pad0::UInt8
    sequence::UInt16
    time::xcb_timestamp_t
    owner::xcb_window_t
    requestor::xcb_window_t
    selection::xcb_atom_t
    target::xcb_atom_t
    property::xcb_atom_t
end

struct xcb_selection_notify_event_t
    response_type::UInt8
    pad0::UInt8
    sequence::UInt16
    time::xcb_timestamp_t
    requestor::xcb_window_t
    selection::xcb_atom_t
    target::xcb_atom_t
    property::xcb_atom_t
end

@cenum xcb_colormap_state_t::UInt32 begin
    XCB_COLORMAP_STATE_UNINSTALLED = 0
    XCB_COLORMAP_STATE_INSTALLED = 1
end

@cenum xcb_colormap_enum_t::UInt32 begin
    XCB_COLORMAP_NONE = 0
end


struct xcb_colormap_notify_event_t
    response_type::UInt8
    pad0::UInt8
    sequence::UInt16
    window::xcb_window_t
    colormap::xcb_colormap_t
    _new::UInt8
    state::UInt8
    pad1::NTuple{2, UInt8}
end

struct xcb_client_message_data_t
    data8::NTuple{20, UInt8}
end

struct xcb_client_message_data_iterator_t
    data::Ptr{xcb_client_message_data_t}
    rem::Cint
    index::Cint
end

struct xcb_client_message_event_t
    response_type::UInt8
    format::UInt8
    sequence::UInt16
    window::xcb_window_t
    type::xcb_atom_t
    data::xcb_client_message_data_t
end

@cenum xcb_mapping_t::UInt32 begin
    XCB_MAPPING_MODIFIER = 0
    XCB_MAPPING_KEYBOARD = 1
    XCB_MAPPING_POINTER = 2
end


struct xcb_mapping_notify_event_t
    response_type::UInt8
    pad0::UInt8
    sequence::UInt16
    request::UInt8
    first_keycode::xcb_keycode_t
    count::UInt8
    pad1::UInt8
end

struct xcb_ge_generic_event_t
    response_type::UInt8
    extension::UInt8
    sequence::UInt16
    length::UInt32
    event_type::UInt16
    pad0::NTuple{22, UInt8}
    full_sequence::UInt32
end

struct xcb_request_error_t
    response_type::UInt8
    error_code::UInt8
    sequence::UInt16
    bad_value::UInt32
    minor_opcode::UInt16
    major_opcode::UInt8
    pad0::UInt8
end

struct xcb_value_error_t
    response_type::UInt8
    error_code::UInt8
    sequence::UInt16
    bad_value::UInt32
    minor_opcode::UInt16
    major_opcode::UInt8
    pad0::UInt8
end

const xcb_window_error_t = xcb_value_error_t
const xcb_pixmap_error_t = xcb_value_error_t
const xcb_atom_error_t = xcb_value_error_t
const xcb_cursor_error_t = xcb_value_error_t
const xcb_font_error_t = xcb_value_error_t
const xcb_match_error_t = xcb_request_error_t
const xcb_drawable_error_t = xcb_value_error_t
const xcb_access_error_t = xcb_request_error_t
const xcb_alloc_error_t = xcb_request_error_t
const xcb_colormap_error_t = xcb_value_error_t
const xcb_g_context_error_t = xcb_value_error_t
const xcb_id_choice_error_t = xcb_value_error_t
const xcb_name_error_t = xcb_request_error_t
const xcb_length_error_t = xcb_request_error_t
const xcb_implementation_error_t = xcb_request_error_t

@cenum xcb_window_class_t::UInt32 begin
    XCB_WINDOW_CLASS_COPY_FROM_PARENT = 0
    XCB_WINDOW_CLASS_INPUT_OUTPUT = 1
    XCB_WINDOW_CLASS_INPUT_ONLY = 2
end

@cenum xcb_cw_t::UInt32 begin
    XCB_CW_BACK_PIXMAP = 1
    XCB_CW_BACK_PIXEL = 2
    XCB_CW_BORDER_PIXMAP = 4
    XCB_CW_BORDER_PIXEL = 8
    XCB_CW_BIT_GRAVITY = 16
    XCB_CW_WIN_GRAVITY = 32
    XCB_CW_BACKING_STORE = 64
    XCB_CW_BACKING_PLANES = 128
    XCB_CW_BACKING_PIXEL = 256
    XCB_CW_OVERRIDE_REDIRECT = 512
    XCB_CW_SAVE_UNDER = 1024
    XCB_CW_EVENT_MASK = 2048
    XCB_CW_DONT_PROPAGATE = 4096
    XCB_CW_COLORMAP = 8192
    XCB_CW_CURSOR = 16384
end

@cenum xcb_back_pixmap_t::UInt32 begin
    XCB_BACK_PIXMAP_NONE = 0
    XCB_BACK_PIXMAP_PARENT_RELATIVE = 1
end

@cenum xcb_gravity_t::UInt32 begin
    XCB_GRAVITY_BIT_FORGET = 0
    XCB_GRAVITY_WIN_UNMAP = 0
    XCB_GRAVITY_NORTH_WEST = 1
    XCB_GRAVITY_NORTH = 2
    XCB_GRAVITY_NORTH_EAST = 3
    XCB_GRAVITY_WEST = 4
    XCB_GRAVITY_CENTER = 5
    XCB_GRAVITY_EAST = 6
    XCB_GRAVITY_SOUTH_WEST = 7
    XCB_GRAVITY_SOUTH = 8
    XCB_GRAVITY_SOUTH_EAST = 9
    XCB_GRAVITY_STATIC = 10
end


struct xcb_create_window_value_list_t
    background_pixmap::xcb_pixmap_t
    background_pixel::UInt32
    border_pixmap::xcb_pixmap_t
    border_pixel::UInt32
    bit_gravity::UInt32
    win_gravity::UInt32
    backing_store::UInt32
    backing_planes::UInt32
    backing_pixel::UInt32
    override_redirect::xcb_bool32_t
    save_under::xcb_bool32_t
    event_mask::UInt32
    do_not_propogate_mask::UInt32
    colormap::xcb_colormap_t
    cursor::xcb_cursor_t
end

struct xcb_create_window_request_t
    major_opcode::UInt8
    depth::UInt8
    length::UInt16
    wid::xcb_window_t
    parent::xcb_window_t
    x::Int16
    y::Int16
    width::UInt16
    height::UInt16
    border_width::UInt16
    _class::UInt16
    visual::xcb_visualid_t
    value_mask::UInt32
end

struct xcb_change_window_attributes_value_list_t
    background_pixmap::xcb_pixmap_t
    background_pixel::UInt32
    border_pixmap::xcb_pixmap_t
    border_pixel::UInt32
    bit_gravity::UInt32
    win_gravity::UInt32
    backing_store::UInt32
    backing_planes::UInt32
    backing_pixel::UInt32
    override_redirect::xcb_bool32_t
    save_under::xcb_bool32_t
    event_mask::UInt32
    do_not_propogate_mask::UInt32
    colormap::xcb_colormap_t
    cursor::xcb_cursor_t
end

struct xcb_change_window_attributes_request_t
    major_opcode::UInt8
    pad0::UInt8
    length::UInt16
    window::xcb_window_t
    value_mask::UInt32
end

@cenum xcb_map_state_t::UInt32 begin
    XCB_MAP_STATE_UNMAPPED = 0
    XCB_MAP_STATE_UNVIEWABLE = 1
    XCB_MAP_STATE_VIEWABLE = 2
end


struct xcb_get_window_attributes_cookie_t
    sequence::UInt32
end

struct xcb_get_window_attributes_request_t
    major_opcode::UInt8
    pad0::UInt8
    length::UInt16
    window::xcb_window_t
end

struct xcb_get_window_attributes_reply_t
    response_type::UInt8
    backing_store::UInt8
    sequence::UInt16
    length::UInt32
    visual::xcb_visualid_t
    _class::UInt16
    bit_gravity::UInt8
    win_gravity::UInt8
    backing_planes::UInt32
    backing_pixel::UInt32
    save_under::UInt8
    map_is_installed::UInt8
    map_state::UInt8
    override_redirect::UInt8
    colormap::xcb_colormap_t
    all_event_masks::UInt32
    your_event_mask::UInt32
    do_not_propagate_mask::UInt16
    pad0::NTuple{2, UInt8}
end

struct xcb_destroy_window_request_t
    major_opcode::UInt8
    pad0::UInt8
    length::UInt16
    window::xcb_window_t
end

struct xcb_destroy_subwindows_request_t
    major_opcode::UInt8
    pad0::UInt8
    length::UInt16
    window::xcb_window_t
end

@cenum xcb_set_mode_t::UInt32 begin
    XCB_SET_MODE_INSERT = 0
    XCB_SET_MODE_DELETE = 1
end


struct xcb_change_save_set_request_t
    major_opcode::UInt8
    mode::UInt8
    length::UInt16
    window::xcb_window_t
end

struct xcb_reparent_window_request_t
    major_opcode::UInt8
    pad0::UInt8
    length::UInt16
    window::xcb_window_t
    parent::xcb_window_t
    x::Int16
    y::Int16
end

struct xcb_map_window_request_t
    major_opcode::UInt8
    pad0::UInt8
    length::UInt16
    window::xcb_window_t
end

struct xcb_map_subwindows_request_t
    major_opcode::UInt8
    pad0::UInt8
    length::UInt16
    window::xcb_window_t
end

struct xcb_unmap_window_request_t
    major_opcode::UInt8
    pad0::UInt8
    length::UInt16
    window::xcb_window_t
end

struct xcb_unmap_subwindows_request_t
    major_opcode::UInt8
    pad0::UInt8
    length::UInt16
    window::xcb_window_t
end

@cenum xcb_config_window_t::UInt32 begin
    XCB_CONFIG_WINDOW_X = 1
    XCB_CONFIG_WINDOW_Y = 2
    XCB_CONFIG_WINDOW_WIDTH = 4
    XCB_CONFIG_WINDOW_HEIGHT = 8
    XCB_CONFIG_WINDOW_BORDER_WIDTH = 16
    XCB_CONFIG_WINDOW_SIBLING = 32
    XCB_CONFIG_WINDOW_STACK_MODE = 64
end

@cenum xcb_stack_mode_t::UInt32 begin
    XCB_STACK_MODE_ABOVE = 0
    XCB_STACK_MODE_BELOW = 1
    XCB_STACK_MODE_TOP_IF = 2
    XCB_STACK_MODE_BOTTOM_IF = 3
    XCB_STACK_MODE_OPPOSITE = 4
end


struct xcb_configure_window_value_list_t
    x::Int32
    y::Int32
    width::UInt32
    height::UInt32
    border_width::UInt32
    sibling::xcb_window_t
    stack_mode::UInt32
end

struct xcb_configure_window_request_t
    major_opcode::UInt8
    pad0::UInt8
    length::UInt16
    window::xcb_window_t
    value_mask::UInt16
    pad1::NTuple{2, UInt8}
end

@cenum xcb_circulate_t::UInt32 begin
    XCB_CIRCULATE_RAISE_LOWEST = 0
    XCB_CIRCULATE_LOWER_HIGHEST = 1
end


struct xcb_circulate_window_request_t
    major_opcode::UInt8
    direction::UInt8
    length::UInt16
    window::xcb_window_t
end

struct xcb_get_geometry_cookie_t
    sequence::UInt32
end

struct xcb_get_geometry_request_t
    major_opcode::UInt8
    pad0::UInt8
    length::UInt16
    drawable::xcb_drawable_t
end

struct xcb_get_geometry_reply_t
    response_type::UInt8
    depth::UInt8
    sequence::UInt16
    length::UInt32
    root::xcb_window_t
    x::Int16
    y::Int16
    width::UInt16
    height::UInt16
    border_width::UInt16
    pad0::NTuple{2, UInt8}
end

struct xcb_query_tree_cookie_t
    sequence::UInt32
end

struct xcb_query_tree_request_t
    major_opcode::UInt8
    pad0::UInt8
    length::UInt16
    window::xcb_window_t
end

struct xcb_query_tree_reply_t
    response_type::UInt8
    pad0::UInt8
    sequence::UInt16
    length::UInt32
    root::xcb_window_t
    parent::xcb_window_t
    children_len::UInt16
    pad1::NTuple{14, UInt8}
end

struct xcb_intern_atom_cookie_t
    sequence::UInt32
end

struct xcb_intern_atom_request_t
    major_opcode::UInt8
    only_if_exists::UInt8
    length::UInt16
    name_len::UInt16
    pad0::NTuple{2, UInt8}
end

struct xcb_intern_atom_reply_t
    response_type::UInt8
    pad0::UInt8
    sequence::UInt16
    length::UInt32
    atom::xcb_atom_t
end

struct xcb_get_atom_name_cookie_t
    sequence::UInt32
end

struct xcb_get_atom_name_request_t
    major_opcode::UInt8
    pad0::UInt8
    length::UInt16
    atom::xcb_atom_t
end

struct xcb_get_atom_name_reply_t
    response_type::UInt8
    pad0::UInt8
    sequence::UInt16
    length::UInt32
    name_len::UInt16
    pad1::NTuple{22, UInt8}
end

@cenum xcb_prop_mode_t::UInt32 begin
    XCB_PROP_MODE_REPLACE = 0
    XCB_PROP_MODE_PREPEND = 1
    XCB_PROP_MODE_APPEND = 2
end


struct xcb_change_property_request_t
    major_opcode::UInt8
    mode::UInt8
    length::UInt16
    window::xcb_window_t
    property::xcb_atom_t
    type::xcb_atom_t
    format::UInt8
    pad0::NTuple{3, UInt8}
    data_len::UInt32
end

struct xcb_delete_property_request_t
    major_opcode::UInt8
    pad0::UInt8
    length::UInt16
    window::xcb_window_t
    property::xcb_atom_t
end

@cenum xcb_get_property_type_t::UInt32 begin
    XCB_GET_PROPERTY_TYPE_ANY = 0
end


struct xcb_get_property_cookie_t
    sequence::UInt32
end

struct xcb_get_property_request_t
    major_opcode::UInt8
    _delete::UInt8
    length::UInt16
    window::xcb_window_t
    property::xcb_atom_t
    type::xcb_atom_t
    long_offset::UInt32
    long_length::UInt32
end

struct xcb_get_property_reply_t
    response_type::UInt8
    format::UInt8
    sequence::UInt16
    length::UInt32
    type::xcb_atom_t
    bytes_after::UInt32
    value_len::UInt32
    pad0::NTuple{12, UInt8}
end

struct xcb_list_properties_cookie_t
    sequence::UInt32
end

struct xcb_list_properties_request_t
    major_opcode::UInt8
    pad0::UInt8
    length::UInt16
    window::xcb_window_t
end

struct xcb_list_properties_reply_t
    response_type::UInt8
    pad0::UInt8
    sequence::UInt16
    length::UInt32
    atoms_len::UInt16
    pad1::NTuple{22, UInt8}
end

struct xcb_set_selection_owner_request_t
    major_opcode::UInt8
    pad0::UInt8
    length::UInt16
    owner::xcb_window_t
    selection::xcb_atom_t
    time::xcb_timestamp_t
end

struct xcb_get_selection_owner_cookie_t
    sequence::UInt32
end

struct xcb_get_selection_owner_request_t
    major_opcode::UInt8
    pad0::UInt8
    length::UInt16
    selection::xcb_atom_t
end

struct xcb_get_selection_owner_reply_t
    response_type::UInt8
    pad0::UInt8
    sequence::UInt16
    length::UInt32
    owner::xcb_window_t
end

struct xcb_convert_selection_request_t
    major_opcode::UInt8
    pad0::UInt8
    length::UInt16
    requestor::xcb_window_t
    selection::xcb_atom_t
    target::xcb_atom_t
    property::xcb_atom_t
    time::xcb_timestamp_t
end

@cenum xcb_send_event_dest_t::UInt32 begin
    XCB_SEND_EVENT_DEST_POINTER_WINDOW = 0
    XCB_SEND_EVENT_DEST_ITEM_FOCUS = 1
end


struct xcb_send_event_request_t
    major_opcode::UInt8
    propagate::UInt8
    length::UInt16
    destination::xcb_window_t
    event_mask::UInt32
    event::NTuple{32, UInt8}
end

@cenum xcb_grab_mode_t::UInt32 begin
    XCB_GRAB_MODE_SYNC = 0
    XCB_GRAB_MODE_ASYNC = 1
end

@cenum xcb_grab_status_t::UInt32 begin
    XCB_GRAB_STATUS_SUCCESS = 0
    XCB_GRAB_STATUS_ALREADY_GRABBED = 1
    XCB_GRAB_STATUS_INVALID_TIME = 2
    XCB_GRAB_STATUS_NOT_VIEWABLE = 3
    XCB_GRAB_STATUS_FROZEN = 4
end

@cenum xcb_cursor_enum_t::UInt32 begin
    XCB_CURSOR_NONE = 0
end


struct xcb_grab_pointer_cookie_t
    sequence::UInt32
end

struct xcb_grab_pointer_request_t
    major_opcode::UInt8
    owner_events::UInt8
    length::UInt16
    grab_window::xcb_window_t
    event_mask::UInt16
    pointer_mode::UInt8
    keyboard_mode::UInt8
    confine_to::xcb_window_t
    cursor::xcb_cursor_t
    time::xcb_timestamp_t
end

struct xcb_grab_pointer_reply_t
    response_type::UInt8
    status::UInt8
    sequence::UInt16
    length::UInt32
end

struct xcb_ungrab_pointer_request_t
    major_opcode::UInt8
    pad0::UInt8
    length::UInt16
    time::xcb_timestamp_t
end

@cenum xcb_button_index_t::UInt32 begin
    XCB_BUTTON_INDEX_ANY = 0
    XCB_BUTTON_INDEX_1 = 1
    XCB_BUTTON_INDEX_2 = 2
    XCB_BUTTON_INDEX_3 = 3
    XCB_BUTTON_INDEX_4 = 4
    XCB_BUTTON_INDEX_5 = 5
end


struct xcb_grab_button_request_t
    major_opcode::UInt8
    owner_events::UInt8
    length::UInt16
    grab_window::xcb_window_t
    event_mask::UInt16
    pointer_mode::UInt8
    keyboard_mode::UInt8
    confine_to::xcb_window_t
    cursor::xcb_cursor_t
    button::UInt8
    pad0::UInt8
    modifiers::UInt16
end

struct xcb_ungrab_button_request_t
    major_opcode::UInt8
    button::UInt8
    length::UInt16
    grab_window::xcb_window_t
    modifiers::UInt16
    pad0::NTuple{2, UInt8}
end

struct xcb_change_active_pointer_grab_request_t
    major_opcode::UInt8
    pad0::UInt8
    length::UInt16
    cursor::xcb_cursor_t
    time::xcb_timestamp_t
    event_mask::UInt16
    pad1::NTuple{2, UInt8}
end

struct xcb_grab_keyboard_cookie_t
    sequence::UInt32
end

struct xcb_grab_keyboard_request_t
    major_opcode::UInt8
    owner_events::UInt8
    length::UInt16
    grab_window::xcb_window_t
    time::xcb_timestamp_t
    pointer_mode::UInt8
    keyboard_mode::UInt8
    pad0::NTuple{2, UInt8}
end

struct xcb_grab_keyboard_reply_t
    response_type::UInt8
    status::UInt8
    sequence::UInt16
    length::UInt32
end

struct xcb_ungrab_keyboard_request_t
    major_opcode::UInt8
    pad0::UInt8
    length::UInt16
    time::xcb_timestamp_t
end

@cenum xcb_grab_t::UInt32 begin
    XCB_GRAB_ANY = 0
end


struct xcb_grab_key_request_t
    major_opcode::UInt8
    owner_events::UInt8
    length::UInt16
    grab_window::xcb_window_t
    modifiers::UInt16
    key::xcb_keycode_t
    pointer_mode::UInt8
    keyboard_mode::UInt8
    pad0::NTuple{3, UInt8}
end

struct xcb_ungrab_key_request_t
    major_opcode::UInt8
    key::xcb_keycode_t
    length::UInt16
    grab_window::xcb_window_t
    modifiers::UInt16
    pad0::NTuple{2, UInt8}
end

@cenum xcb_allow_t::UInt32 begin
    XCB_ALLOW_ASYNC_POINTER = 0
    XCB_ALLOW_SYNC_POINTER = 1
    XCB_ALLOW_REPLAY_POINTER = 2
    XCB_ALLOW_ASYNC_KEYBOARD = 3
    XCB_ALLOW_SYNC_KEYBOARD = 4
    XCB_ALLOW_REPLAY_KEYBOARD = 5
    XCB_ALLOW_ASYNC_BOTH = 6
    XCB_ALLOW_SYNC_BOTH = 7
end


struct xcb_allow_events_request_t
    major_opcode::UInt8
    mode::UInt8
    length::UInt16
    time::xcb_timestamp_t
end

struct xcb_grab_server_request_t
    major_opcode::UInt8
    pad0::UInt8
    length::UInt16
end

struct xcb_ungrab_server_request_t
    major_opcode::UInt8
    pad0::UInt8
    length::UInt16
end

struct xcb_query_pointer_cookie_t
    sequence::UInt32
end

struct xcb_query_pointer_request_t
    major_opcode::UInt8
    pad0::UInt8
    length::UInt16
    window::xcb_window_t
end

struct xcb_query_pointer_reply_t
    response_type::UInt8
    same_screen::UInt8
    sequence::UInt16
    length::UInt32
    root::xcb_window_t
    child::xcb_window_t
    root_x::Int16
    root_y::Int16
    win_x::Int16
    win_y::Int16
    mask::UInt16
    pad0::NTuple{2, UInt8}
end

struct xcb_timecoord_t
    time::xcb_timestamp_t
    x::Int16
    y::Int16
end

struct xcb_timecoord_iterator_t
    data::Ptr{xcb_timecoord_t}
    rem::Cint
    index::Cint
end

struct xcb_get_motion_events_cookie_t
    sequence::UInt32
end

struct xcb_get_motion_events_request_t
    major_opcode::UInt8
    pad0::UInt8
    length::UInt16
    window::xcb_window_t
    start::xcb_timestamp_t
    stop::xcb_timestamp_t
end

struct xcb_get_motion_events_reply_t
    response_type::UInt8
    pad0::UInt8
    sequence::UInt16
    length::UInt32
    events_len::UInt32
    pad1::NTuple{20, UInt8}
end

struct xcb_translate_coordinates_cookie_t
    sequence::UInt32
end

struct xcb_translate_coordinates_request_t
    major_opcode::UInt8
    pad0::UInt8
    length::UInt16
    src_window::xcb_window_t
    dst_window::xcb_window_t
    src_x::Int16
    src_y::Int16
end

struct xcb_translate_coordinates_reply_t
    response_type::UInt8
    same_screen::UInt8
    sequence::UInt16
    length::UInt32
    child::xcb_window_t
    dst_x::Int16
    dst_y::Int16
end

struct xcb_warp_pointer_request_t
    major_opcode::UInt8
    pad0::UInt8
    length::UInt16
    src_window::xcb_window_t
    dst_window::xcb_window_t
    src_x::Int16
    src_y::Int16
    src_width::UInt16
    src_height::UInt16
    dst_x::Int16
    dst_y::Int16
end

@cenum xcb_input_focus_t::UInt32 begin
    XCB_INPUT_FOCUS_NONE = 0
    XCB_INPUT_FOCUS_POINTER_ROOT = 1
    XCB_INPUT_FOCUS_PARENT = 2
    XCB_INPUT_FOCUS_FOLLOW_KEYBOARD = 3
end


struct xcb_set_input_focus_request_t
    major_opcode::UInt8
    revert_to::UInt8
    length::UInt16
    focus::xcb_window_t
    time::xcb_timestamp_t
end

struct xcb_get_input_focus_cookie_t
    sequence::UInt32
end

struct xcb_get_input_focus_request_t
    major_opcode::UInt8
    pad0::UInt8
    length::UInt16
end

struct xcb_get_input_focus_reply_t
    response_type::UInt8
    revert_to::UInt8
    sequence::UInt16
    length::UInt32
    focus::xcb_window_t
end

struct xcb_query_keymap_cookie_t
    sequence::UInt32
end

struct xcb_query_keymap_request_t
    major_opcode::UInt8
    pad0::UInt8
    length::UInt16
end

struct xcb_query_keymap_reply_t
    response_type::UInt8
    pad0::UInt8
    sequence::UInt16
    length::UInt32
    keys::NTuple{32, UInt8}
end

struct xcb_open_font_request_t
    major_opcode::UInt8
    pad0::UInt8
    length::UInt16
    fid::xcb_font_t
    name_len::UInt16
    pad1::NTuple{2, UInt8}
end

struct xcb_close_font_request_t
    major_opcode::UInt8
    pad0::UInt8
    length::UInt16
    font::xcb_font_t
end

@cenum xcb_font_draw_t::UInt32 begin
    XCB_FONT_DRAW_LEFT_TO_RIGHT = 0
    XCB_FONT_DRAW_RIGHT_TO_LEFT = 1
end


struct xcb_fontprop_t
    name::xcb_atom_t
    value::UInt32
end

struct xcb_fontprop_iterator_t
    data::Ptr{xcb_fontprop_t}
    rem::Cint
    index::Cint
end

struct xcb_charinfo_t
    left_side_bearing::Int16
    right_side_bearing::Int16
    character_width::Int16
    ascent::Int16
    descent::Int16
    attributes::UInt16
end

struct xcb_charinfo_iterator_t
    data::Ptr{xcb_charinfo_t}
    rem::Cint
    index::Cint
end

struct xcb_query_font_cookie_t
    sequence::UInt32
end

struct xcb_query_font_request_t
    major_opcode::UInt8
    pad0::UInt8
    length::UInt16
    font::xcb_fontable_t
end

struct xcb_query_font_reply_t
    response_type::UInt8
    pad0::UInt8
    sequence::UInt16
    length::UInt32
    min_bounds::xcb_charinfo_t
    pad1::NTuple{4, UInt8}
    max_bounds::xcb_charinfo_t
    pad2::NTuple{4, UInt8}
    min_char_or_byte2::UInt16
    max_char_or_byte2::UInt16
    default_char::UInt16
    properties_len::UInt16
    draw_direction::UInt8
    min_byte1::UInt8
    max_byte1::UInt8
    all_chars_exist::UInt8
    font_ascent::Int16
    font_descent::Int16
    char_infos_len::UInt32
end

struct xcb_query_text_extents_cookie_t
    sequence::UInt32
end

struct xcb_query_text_extents_request_t
    major_opcode::UInt8
    odd_length::UInt8
    length::UInt16
    font::xcb_fontable_t
end

struct xcb_query_text_extents_reply_t
    response_type::UInt8
    draw_direction::UInt8
    sequence::UInt16
    length::UInt32
    font_ascent::Int16
    font_descent::Int16
    overall_ascent::Int16
    overall_descent::Int16
    overall_width::Int32
    overall_left::Int32
    overall_right::Int32
end

struct xcb_str_t
    name_len::UInt8
end

struct xcb_str_iterator_t
    data::Ptr{xcb_str_t}
    rem::Cint
    index::Cint
end

struct xcb_list_fonts_cookie_t
    sequence::UInt32
end

struct xcb_list_fonts_request_t
    major_opcode::UInt8
    pad0::UInt8
    length::UInt16
    max_names::UInt16
    pattern_len::UInt16
end

struct xcb_list_fonts_reply_t
    response_type::UInt8
    pad0::UInt8
    sequence::UInt16
    length::UInt32
    names_len::UInt16
    pad1::NTuple{22, UInt8}
end

struct xcb_list_fonts_with_info_cookie_t
    sequence::UInt32
end

struct xcb_list_fonts_with_info_request_t
    major_opcode::UInt8
    pad0::UInt8
    length::UInt16
    max_names::UInt16
    pattern_len::UInt16
end

struct xcb_list_fonts_with_info_reply_t
    response_type::UInt8
    name_len::UInt8
    sequence::UInt16
    length::UInt32
    min_bounds::xcb_charinfo_t
    pad0::NTuple{4, UInt8}
    max_bounds::xcb_charinfo_t
    pad1::NTuple{4, UInt8}
    min_char_or_byte2::UInt16
    max_char_or_byte2::UInt16
    default_char::UInt16
    properties_len::UInt16
    draw_direction::UInt8
    min_byte1::UInt8
    max_byte1::UInt8
    all_chars_exist::UInt8
    font_ascent::Int16
    font_descent::Int16
    replies_hint::UInt32
end

struct xcb_set_font_path_request_t
    major_opcode::UInt8
    pad0::UInt8
    length::UInt16
    font_qty::UInt16
    pad1::NTuple{2, UInt8}
end

struct xcb_get_font_path_cookie_t
    sequence::UInt32
end

struct xcb_get_font_path_request_t
    major_opcode::UInt8
    pad0::UInt8
    length::UInt16
end

struct xcb_get_font_path_reply_t
    response_type::UInt8
    pad0::UInt8
    sequence::UInt16
    length::UInt32
    path_len::UInt16
    pad1::NTuple{22, UInt8}
end

struct xcb_create_pixmap_request_t
    major_opcode::UInt8
    depth::UInt8
    length::UInt16
    pid::xcb_pixmap_t
    drawable::xcb_drawable_t
    width::UInt16
    height::UInt16
end

struct xcb_free_pixmap_request_t
    major_opcode::UInt8
    pad0::UInt8
    length::UInt16
    pixmap::xcb_pixmap_t
end

@cenum xcb_gc_t::UInt32 begin
    XCB_GC_FUNCTION = 1
    XCB_GC_PLANE_MASK = 2
    XCB_GC_FOREGROUND = 4
    XCB_GC_BACKGROUND = 8
    XCB_GC_LINE_WIDTH = 16
    XCB_GC_LINE_STYLE = 32
    XCB_GC_CAP_STYLE = 64
    XCB_GC_JOIN_STYLE = 128
    XCB_GC_FILL_STYLE = 256
    XCB_GC_FILL_RULE = 512
    XCB_GC_TILE = 1024
    XCB_GC_STIPPLE = 2048
    XCB_GC_TILE_STIPPLE_ORIGIN_X = 4096
    XCB_GC_TILE_STIPPLE_ORIGIN_Y = 8192
    XCB_GC_FONT = 16384
    XCB_GC_SUBWINDOW_MODE = 32768
    XCB_GC_GRAPHICS_EXPOSURES = 65536
    XCB_GC_CLIP_ORIGIN_X = 131072
    XCB_GC_CLIP_ORIGIN_Y = 262144
    XCB_GC_CLIP_MASK = 524288
    XCB_GC_DASH_OFFSET = 1048576
    XCB_GC_DASH_LIST = 2097152
    XCB_GC_ARC_MODE = 4194304
end

@cenum xcb_gx_t::UInt32 begin
    XCB_GX_CLEAR = 0
    XCB_GX_AND = 1
    XCB_GX_AND_REVERSE = 2
    XCB_GX_COPY = 3
    XCB_GX_AND_INVERTED = 4
    XCB_GX_NOOP = 5
    XCB_GX_XOR = 6
    XCB_GX_OR = 7
    XCB_GX_NOR = 8
    XCB_GX_EQUIV = 9
    XCB_GX_INVERT = 10
    XCB_GX_OR_REVERSE = 11
    XCB_GX_COPY_INVERTED = 12
    XCB_GX_OR_INVERTED = 13
    XCB_GX_NAND = 14
    XCB_GX_SET = 15
end

@cenum xcb_line_style_t::UInt32 begin
    XCB_LINE_STYLE_SOLID = 0
    XCB_LINE_STYLE_ON_OFF_DASH = 1
    XCB_LINE_STYLE_DOUBLE_DASH = 2
end

@cenum xcb_cap_style_t::UInt32 begin
    XCB_CAP_STYLE_NOT_LAST = 0
    XCB_CAP_STYLE_BUTT = 1
    XCB_CAP_STYLE_ROUND = 2
    XCB_CAP_STYLE_PROJECTING = 3
end

@cenum xcb_join_style_t::UInt32 begin
    XCB_JOIN_STYLE_MITER = 0
    XCB_JOIN_STYLE_ROUND = 1
    XCB_JOIN_STYLE_BEVEL = 2
end

@cenum xcb_fill_style_t::UInt32 begin
    XCB_FILL_STYLE_SOLID = 0
    XCB_FILL_STYLE_TILED = 1
    XCB_FILL_STYLE_STIPPLED = 2
    XCB_FILL_STYLE_OPAQUE_STIPPLED = 3
end

@cenum xcb_fill_rule_t::UInt32 begin
    XCB_FILL_RULE_EVEN_ODD = 0
    XCB_FILL_RULE_WINDING = 1
end

@cenum xcb_subwindow_mode_t::UInt32 begin
    XCB_SUBWINDOW_MODE_CLIP_BY_CHILDREN = 0
    XCB_SUBWINDOW_MODE_INCLUDE_INFERIORS = 1
end

@cenum xcb_arc_mode_t::UInt32 begin
    XCB_ARC_MODE_CHORD = 0
    XCB_ARC_MODE_PIE_SLICE = 1
end


struct xcb_create_gc_value_list_t
    _function::UInt32
    plane_mask::UInt32
    foreground::UInt32
    background::UInt32
    line_width::UInt32
    line_style::UInt32
    cap_style::UInt32
    join_style::UInt32
    fill_style::UInt32
    fill_rule::UInt32
    tile::xcb_pixmap_t
    stipple::xcb_pixmap_t
    tile_stipple_x_origin::Int32
    tile_stipple_y_origin::Int32
    font::xcb_font_t
    subwindow_mode::UInt32
    graphics_exposures::xcb_bool32_t
    clip_x_origin::Int32
    clip_y_origin::Int32
    clip_mask::xcb_pixmap_t
    dash_offset::UInt32
    dashes::UInt32
    arc_mode::UInt32
end

struct xcb_create_gc_request_t
    major_opcode::UInt8
    pad0::UInt8
    length::UInt16
    cid::xcb_gcontext_t
    drawable::xcb_drawable_t
    value_mask::UInt32
end

struct xcb_change_gc_value_list_t
    _function::UInt32
    plane_mask::UInt32
    foreground::UInt32
    background::UInt32
    line_width::UInt32
    line_style::UInt32
    cap_style::UInt32
    join_style::UInt32
    fill_style::UInt32
    fill_rule::UInt32
    tile::xcb_pixmap_t
    stipple::xcb_pixmap_t
    tile_stipple_x_origin::Int32
    tile_stipple_y_origin::Int32
    font::xcb_font_t
    subwindow_mode::UInt32
    graphics_exposures::xcb_bool32_t
    clip_x_origin::Int32
    clip_y_origin::Int32
    clip_mask::xcb_pixmap_t
    dash_offset::UInt32
    dashes::UInt32
    arc_mode::UInt32
end

struct xcb_change_gc_request_t
    major_opcode::UInt8
    pad0::UInt8
    length::UInt16
    gc::xcb_gcontext_t
    value_mask::UInt32
end

struct xcb_copy_gc_request_t
    major_opcode::UInt8
    pad0::UInt8
    length::UInt16
    src_gc::xcb_gcontext_t
    dst_gc::xcb_gcontext_t
    value_mask::UInt32
end

struct xcb_set_dashes_request_t
    major_opcode::UInt8
    pad0::UInt8
    length::UInt16
    gc::xcb_gcontext_t
    dash_offset::UInt16
    dashes_len::UInt16
end

@cenum xcb_clip_ordering_t::UInt32 begin
    XCB_CLIP_ORDERING_UNSORTED = 0
    XCB_CLIP_ORDERING_Y_SORTED = 1
    XCB_CLIP_ORDERING_YX_SORTED = 2
    XCB_CLIP_ORDERING_YX_BANDED = 3
end


struct xcb_set_clip_rectangles_request_t
    major_opcode::UInt8
    ordering::UInt8
    length::UInt16
    gc::xcb_gcontext_t
    clip_x_origin::Int16
    clip_y_origin::Int16
end

struct xcb_free_gc_request_t
    major_opcode::UInt8
    pad0::UInt8
    length::UInt16
    gc::xcb_gcontext_t
end

struct xcb_clear_area_request_t
    major_opcode::UInt8
    exposures::UInt8
    length::UInt16
    window::xcb_window_t
    x::Int16
    y::Int16
    width::UInt16
    height::UInt16
end

struct xcb_copy_area_request_t
    major_opcode::UInt8
    pad0::UInt8
    length::UInt16
    src_drawable::xcb_drawable_t
    dst_drawable::xcb_drawable_t
    gc::xcb_gcontext_t
    src_x::Int16
    src_y::Int16
    dst_x::Int16
    dst_y::Int16
    width::UInt16
    height::UInt16
end

struct xcb_copy_plane_request_t
    major_opcode::UInt8
    pad0::UInt8
    length::UInt16
    src_drawable::xcb_drawable_t
    dst_drawable::xcb_drawable_t
    gc::xcb_gcontext_t
    src_x::Int16
    src_y::Int16
    dst_x::Int16
    dst_y::Int16
    width::UInt16
    height::UInt16
    bit_plane::UInt32
end

@cenum xcb_coord_mode_t::UInt32 begin
    XCB_COORD_MODE_ORIGIN = 0
    XCB_COORD_MODE_PREVIOUS = 1
end


struct xcb_poly_point_request_t
    major_opcode::UInt8
    coordinate_mode::UInt8
    length::UInt16
    drawable::xcb_drawable_t
    gc::xcb_gcontext_t
end

struct xcb_poly_line_request_t
    major_opcode::UInt8
    coordinate_mode::UInt8
    length::UInt16
    drawable::xcb_drawable_t
    gc::xcb_gcontext_t
end

struct xcb_segment_t
    x1::Int16
    y1::Int16
    x2::Int16
    y2::Int16
end

struct xcb_segment_iterator_t
    data::Ptr{xcb_segment_t}
    rem::Cint
    index::Cint
end

struct xcb_poly_segment_request_t
    major_opcode::UInt8
    pad0::UInt8
    length::UInt16
    drawable::xcb_drawable_t
    gc::xcb_gcontext_t
end

struct xcb_poly_rectangle_request_t
    major_opcode::UInt8
    pad0::UInt8
    length::UInt16
    drawable::xcb_drawable_t
    gc::xcb_gcontext_t
end

struct xcb_poly_arc_request_t
    major_opcode::UInt8
    pad0::UInt8
    length::UInt16
    drawable::xcb_drawable_t
    gc::xcb_gcontext_t
end

@cenum xcb_poly_shape_t::UInt32 begin
    XCB_POLY_SHAPE_COMPLEX = 0
    XCB_POLY_SHAPE_NONCONVEX = 1
    XCB_POLY_SHAPE_CONVEX = 2
end


struct xcb_fill_poly_request_t
    major_opcode::UInt8
    pad0::UInt8
    length::UInt16
    drawable::xcb_drawable_t
    gc::xcb_gcontext_t
    shape::UInt8
    coordinate_mode::UInt8
    pad1::NTuple{2, UInt8}
end

struct xcb_poly_fill_rectangle_request_t
    major_opcode::UInt8
    pad0::UInt8
    length::UInt16
    drawable::xcb_drawable_t
    gc::xcb_gcontext_t
end

struct xcb_poly_fill_arc_request_t
    major_opcode::UInt8
    pad0::UInt8
    length::UInt16
    drawable::xcb_drawable_t
    gc::xcb_gcontext_t
end

@cenum xcb_image_format_t::UInt32 begin
    XCB_IMAGE_FORMAT_XY_BITMAP = 0
    XCB_IMAGE_FORMAT_XY_PIXMAP = 1
    XCB_IMAGE_FORMAT_Z_PIXMAP = 2
end


struct xcb_put_image_request_t
    major_opcode::UInt8
    format::UInt8
    length::UInt16
    drawable::xcb_drawable_t
    gc::xcb_gcontext_t
    width::UInt16
    height::UInt16
    dst_x::Int16
    dst_y::Int16
    left_pad::UInt8
    depth::UInt8
    pad0::NTuple{2, UInt8}
end

struct xcb_get_image_cookie_t
    sequence::UInt32
end

struct xcb_get_image_request_t
    major_opcode::UInt8
    format::UInt8
    length::UInt16
    drawable::xcb_drawable_t
    x::Int16
    y::Int16
    width::UInt16
    height::UInt16
    plane_mask::UInt32
end

struct xcb_get_image_reply_t
    response_type::UInt8
    depth::UInt8
    sequence::UInt16
    length::UInt32
    visual::xcb_visualid_t
    pad0::NTuple{20, UInt8}
end

struct xcb_poly_text_8_request_t
    major_opcode::UInt8
    pad0::UInt8
    length::UInt16
    drawable::xcb_drawable_t
    gc::xcb_gcontext_t
    x::Int16
    y::Int16
end

struct xcb_poly_text_16_request_t
    major_opcode::UInt8
    pad0::UInt8
    length::UInt16
    drawable::xcb_drawable_t
    gc::xcb_gcontext_t
    x::Int16
    y::Int16
end

struct xcb_image_text_8_request_t
    major_opcode::UInt8
    string_len::UInt8
    length::UInt16
    drawable::xcb_drawable_t
    gc::xcb_gcontext_t
    x::Int16
    y::Int16
end

struct xcb_image_text_16_request_t
    major_opcode::UInt8
    string_len::UInt8
    length::UInt16
    drawable::xcb_drawable_t
    gc::xcb_gcontext_t
    x::Int16
    y::Int16
end

@cenum xcb_colormap_alloc_t::UInt32 begin
    XCB_COLORMAP_ALLOC_NONE = 0
    XCB_COLORMAP_ALLOC_ALL = 1
end


struct xcb_create_colormap_request_t
    major_opcode::UInt8
    alloc::UInt8
    length::UInt16
    mid::xcb_colormap_t
    window::xcb_window_t
    visual::xcb_visualid_t
end

struct xcb_free_colormap_request_t
    major_opcode::UInt8
    pad0::UInt8
    length::UInt16
    cmap::xcb_colormap_t
end

struct xcb_copy_colormap_and_free_request_t
    major_opcode::UInt8
    pad0::UInt8
    length::UInt16
    mid::xcb_colormap_t
    src_cmap::xcb_colormap_t
end

struct xcb_install_colormap_request_t
    major_opcode::UInt8
    pad0::UInt8
    length::UInt16
    cmap::xcb_colormap_t
end

struct xcb_uninstall_colormap_request_t
    major_opcode::UInt8
    pad0::UInt8
    length::UInt16
    cmap::xcb_colormap_t
end

struct xcb_list_installed_colormaps_cookie_t
    sequence::UInt32
end

struct xcb_list_installed_colormaps_request_t
    major_opcode::UInt8
    pad0::UInt8
    length::UInt16
    window::xcb_window_t
end

struct xcb_list_installed_colormaps_reply_t
    response_type::UInt8
    pad0::UInt8
    sequence::UInt16
    length::UInt32
    cmaps_len::UInt16
    pad1::NTuple{22, UInt8}
end

struct xcb_alloc_color_cookie_t
    sequence::UInt32
end

struct xcb_alloc_color_request_t
    major_opcode::UInt8
    pad0::UInt8
    length::UInt16
    cmap::xcb_colormap_t
    red::UInt16
    green::UInt16
    blue::UInt16
    pad1::NTuple{2, UInt8}
end

struct xcb_alloc_color_reply_t
    response_type::UInt8
    pad0::UInt8
    sequence::UInt16
    length::UInt32
    red::UInt16
    green::UInt16
    blue::UInt16
    pad1::NTuple{2, UInt8}
    pixel::UInt32
end

struct xcb_alloc_named_color_cookie_t
    sequence::UInt32
end

struct xcb_alloc_named_color_request_t
    major_opcode::UInt8
    pad0::UInt8
    length::UInt16
    cmap::xcb_colormap_t
    name_len::UInt16
    pad1::NTuple{2, UInt8}
end

struct xcb_alloc_named_color_reply_t
    response_type::UInt8
    pad0::UInt8
    sequence::UInt16
    length::UInt32
    pixel::UInt32
    exact_red::UInt16
    exact_green::UInt16
    exact_blue::UInt16
    visual_red::UInt16
    visual_green::UInt16
    visual_blue::UInt16
end

struct xcb_alloc_color_cells_cookie_t
    sequence::UInt32
end

struct xcb_alloc_color_cells_request_t
    major_opcode::UInt8
    contiguous::UInt8
    length::UInt16
    cmap::xcb_colormap_t
    colors::UInt16
    planes::UInt16
end

struct xcb_alloc_color_cells_reply_t
    response_type::UInt8
    pad0::UInt8
    sequence::UInt16
    length::UInt32
    pixels_len::UInt16
    masks_len::UInt16
    pad1::NTuple{20, UInt8}
end

struct xcb_alloc_color_planes_cookie_t
    sequence::UInt32
end

struct xcb_alloc_color_planes_request_t
    major_opcode::UInt8
    contiguous::UInt8
    length::UInt16
    cmap::xcb_colormap_t
    colors::UInt16
    reds::UInt16
    greens::UInt16
    blues::UInt16
end

struct xcb_alloc_color_planes_reply_t
    response_type::UInt8
    pad0::UInt8
    sequence::UInt16
    length::UInt32
    pixels_len::UInt16
    pad1::NTuple{2, UInt8}
    red_mask::UInt32
    green_mask::UInt32
    blue_mask::UInt32
    pad2::NTuple{8, UInt8}
end

struct xcb_free_colors_request_t
    major_opcode::UInt8
    pad0::UInt8
    length::UInt16
    cmap::xcb_colormap_t
    plane_mask::UInt32
end

@cenum xcb_color_flag_t::UInt32 begin
    XCB_COLOR_FLAG_RED = 1
    XCB_COLOR_FLAG_GREEN = 2
    XCB_COLOR_FLAG_BLUE = 4
end


struct xcb_coloritem_t
    pixel::UInt32
    red::UInt16
    green::UInt16
    blue::UInt16
    flags::UInt8
    pad0::UInt8
end

struct xcb_coloritem_iterator_t
    data::Ptr{xcb_coloritem_t}
    rem::Cint
    index::Cint
end

struct xcb_store_colors_request_t
    major_opcode::UInt8
    pad0::UInt8
    length::UInt16
    cmap::xcb_colormap_t
end

struct xcb_store_named_color_request_t
    major_opcode::UInt8
    flags::UInt8
    length::UInt16
    cmap::xcb_colormap_t
    pixel::UInt32
    name_len::UInt16
    pad0::NTuple{2, UInt8}
end

struct xcb_rgb_t
    red::UInt16
    green::UInt16
    blue::UInt16
    pad0::NTuple{2, UInt8}
end

struct xcb_rgb_iterator_t
    data::Ptr{xcb_rgb_t}
    rem::Cint
    index::Cint
end

struct xcb_query_colors_cookie_t
    sequence::UInt32
end

struct xcb_query_colors_request_t
    major_opcode::UInt8
    pad0::UInt8
    length::UInt16
    cmap::xcb_colormap_t
end

struct xcb_query_colors_reply_t
    response_type::UInt8
    pad0::UInt8
    sequence::UInt16
    length::UInt32
    colors_len::UInt16
    pad1::NTuple{22, UInt8}
end

struct xcb_lookup_color_cookie_t
    sequence::UInt32
end

struct xcb_lookup_color_request_t
    major_opcode::UInt8
    pad0::UInt8
    length::UInt16
    cmap::xcb_colormap_t
    name_len::UInt16
    pad1::NTuple{2, UInt8}
end

struct xcb_lookup_color_reply_t
    response_type::UInt8
    pad0::UInt8
    sequence::UInt16
    length::UInt32
    exact_red::UInt16
    exact_green::UInt16
    exact_blue::UInt16
    visual_red::UInt16
    visual_green::UInt16
    visual_blue::UInt16
end

@cenum xcb_pixmap_enum_t::UInt32 begin
    XCB_PIXMAP_NONE = 0
end


struct xcb_create_cursor_request_t
    major_opcode::UInt8
    pad0::UInt8
    length::UInt16
    cid::xcb_cursor_t
    source::xcb_pixmap_t
    mask::xcb_pixmap_t
    fore_red::UInt16
    fore_green::UInt16
    fore_blue::UInt16
    back_red::UInt16
    back_green::UInt16
    back_blue::UInt16
    x::UInt16
    y::UInt16
end

@cenum xcb_font_enum_t::UInt32 begin
    XCB_FONT_NONE = 0
end


struct xcb_create_glyph_cursor_request_t
    major_opcode::UInt8
    pad0::UInt8
    length::UInt16
    cid::xcb_cursor_t
    source_font::xcb_font_t
    mask_font::xcb_font_t
    source_char::UInt16
    mask_char::UInt16
    fore_red::UInt16
    fore_green::UInt16
    fore_blue::UInt16
    back_red::UInt16
    back_green::UInt16
    back_blue::UInt16
end

struct xcb_free_cursor_request_t
    major_opcode::UInt8
    pad0::UInt8
    length::UInt16
    cursor::xcb_cursor_t
end

struct xcb_recolor_cursor_request_t
    major_opcode::UInt8
    pad0::UInt8
    length::UInt16
    cursor::xcb_cursor_t
    fore_red::UInt16
    fore_green::UInt16
    fore_blue::UInt16
    back_red::UInt16
    back_green::UInt16
    back_blue::UInt16
end

@cenum xcb_query_shape_of_t::UInt32 begin
    XCB_QUERY_SHAPE_OF_LARGEST_CURSOR = 0
    XCB_QUERY_SHAPE_OF_FASTEST_TILE = 1
    XCB_QUERY_SHAPE_OF_FASTEST_STIPPLE = 2
end


struct xcb_query_best_size_cookie_t
    sequence::UInt32
end

struct xcb_query_best_size_request_t
    major_opcode::UInt8
    _class::UInt8
    length::UInt16
    drawable::xcb_drawable_t
    width::UInt16
    height::UInt16
end

struct xcb_query_best_size_reply_t
    response_type::UInt8
    pad0::UInt8
    sequence::UInt16
    length::UInt32
    width::UInt16
    height::UInt16
end

struct xcb_query_extension_cookie_t
    sequence::UInt32
end

struct xcb_query_extension_request_t
    major_opcode::UInt8
    pad0::UInt8
    length::UInt16
    name_len::UInt16
    pad1::NTuple{2, UInt8}
end

struct xcb_query_extension_reply_t
    response_type::UInt8
    pad0::UInt8
    sequence::UInt16
    length::UInt32
    present::UInt8
    major_opcode::UInt8
    first_event::UInt8
    first_error::UInt8
end

struct xcb_list_extensions_cookie_t
    sequence::UInt32
end

struct xcb_list_extensions_request_t
    major_opcode::UInt8
    pad0::UInt8
    length::UInt16
end

struct xcb_list_extensions_reply_t
    response_type::UInt8
    names_len::UInt8
    sequence::UInt16
    length::UInt32
    pad0::NTuple{24, UInt8}
end

struct xcb_change_keyboard_mapping_request_t
    major_opcode::UInt8
    keycode_count::UInt8
    length::UInt16
    first_keycode::xcb_keycode_t
    keysyms_per_keycode::UInt8
    pad0::NTuple{2, UInt8}
end

struct xcb_get_keyboard_mapping_cookie_t
    sequence::UInt32
end

struct xcb_get_keyboard_mapping_request_t
    major_opcode::UInt8
    pad0::UInt8
    length::UInt16
    first_keycode::xcb_keycode_t
    count::UInt8
end

struct xcb_get_keyboard_mapping_reply_t
    response_type::UInt8
    keysyms_per_keycode::UInt8
    sequence::UInt16
    length::UInt32
    pad0::NTuple{24, UInt8}
end

@cenum xcb_kb_t::UInt32 begin
    XCB_KB_KEY_CLICK_PERCENT = 1
    XCB_KB_BELL_PERCENT = 2
    XCB_KB_BELL_PITCH = 4
    XCB_KB_BELL_DURATION = 8
    XCB_KB_LED = 16
    XCB_KB_LED_MODE = 32
    XCB_KB_KEY = 64
    XCB_KB_AUTO_REPEAT_MODE = 128
end

@cenum xcb_led_mode_t::UInt32 begin
    XCB_LED_MODE_OFF = 0
    XCB_LED_MODE_ON = 1
end

@cenum xcb_auto_repeat_mode_t::UInt32 begin
    XCB_AUTO_REPEAT_MODE_OFF = 0
    XCB_AUTO_REPEAT_MODE_ON = 1
    XCB_AUTO_REPEAT_MODE_DEFAULT = 2
end


struct xcb_change_keyboard_control_value_list_t
    key_click_percent::Int32
    bell_percent::Int32
    bell_pitch::Int32
    bell_duration::Int32
    led::UInt32
    led_mode::UInt32
    key::xcb_keycode32_t
    auto_repeat_mode::UInt32
end

struct xcb_change_keyboard_control_request_t
    major_opcode::UInt8
    pad0::UInt8
    length::UInt16
    value_mask::UInt32
end

struct xcb_get_keyboard_control_cookie_t
    sequence::UInt32
end

struct xcb_get_keyboard_control_request_t
    major_opcode::UInt8
    pad0::UInt8
    length::UInt16
end

struct xcb_get_keyboard_control_reply_t
    response_type::UInt8
    global_auto_repeat::UInt8
    sequence::UInt16
    length::UInt32
    led_mask::UInt32
    key_click_percent::UInt8
    bell_percent::UInt8
    bell_pitch::UInt16
    bell_duration::UInt16
    pad0::NTuple{2, UInt8}
    auto_repeats::NTuple{32, UInt8}
end

struct xcb_bell_request_t
    major_opcode::UInt8
    percent::Int8
    length::UInt16
end

struct xcb_change_pointer_control_request_t
    major_opcode::UInt8
    pad0::UInt8
    length::UInt16
    acceleration_numerator::Int16
    acceleration_denominator::Int16
    threshold::Int16
    do_acceleration::UInt8
    do_threshold::UInt8
end

struct xcb_get_pointer_control_cookie_t
    sequence::UInt32
end

struct xcb_get_pointer_control_request_t
    major_opcode::UInt8
    pad0::UInt8
    length::UInt16
end

struct xcb_get_pointer_control_reply_t
    response_type::UInt8
    pad0::UInt8
    sequence::UInt16
    length::UInt32
    acceleration_numerator::UInt16
    acceleration_denominator::UInt16
    threshold::UInt16
    pad1::NTuple{18, UInt8}
end

@cenum xcb_blanking_t::UInt32 begin
    XCB_BLANKING_NOT_PREFERRED = 0
    XCB_BLANKING_PREFERRED = 1
    XCB_BLANKING_DEFAULT = 2
end

@cenum xcb_exposures_t::UInt32 begin
    XCB_EXPOSURES_NOT_ALLOWED = 0
    XCB_EXPOSURES_ALLOWED = 1
    XCB_EXPOSURES_DEFAULT = 2
end


struct xcb_set_screen_saver_request_t
    major_opcode::UInt8
    pad0::UInt8
    length::UInt16
    timeout::Int16
    interval::Int16
    prefer_blanking::UInt8
    allow_exposures::UInt8
end

struct xcb_get_screen_saver_cookie_t
    sequence::UInt32
end

struct xcb_get_screen_saver_request_t
    major_opcode::UInt8
    pad0::UInt8
    length::UInt16
end

struct xcb_get_screen_saver_reply_t
    response_type::UInt8
    pad0::UInt8
    sequence::UInt16
    length::UInt32
    timeout::UInt16
    interval::UInt16
    prefer_blanking::UInt8
    allow_exposures::UInt8
    pad1::NTuple{18, UInt8}
end

@cenum xcb_host_mode_t::UInt32 begin
    XCB_HOST_MODE_INSERT = 0
    XCB_HOST_MODE_DELETE = 1
end

@cenum xcb_family_t::UInt32 begin
    XCB_FAMILY_INTERNET = 0
    XCB_FAMILY_DECNET = 1
    XCB_FAMILY_CHAOS = 2
    XCB_FAMILY_SERVER_INTERPRETED = 5
    XCB_FAMILY_INTERNET_6 = 6
end


struct xcb_change_hosts_request_t
    major_opcode::UInt8
    mode::UInt8
    length::UInt16
    family::UInt8
    pad0::UInt8
    address_len::UInt16
end

struct xcb_host_t
    family::UInt8
    pad0::UInt8
    address_len::UInt16
end

struct xcb_host_iterator_t
    data::Ptr{xcb_host_t}
    rem::Cint
    index::Cint
end

struct xcb_list_hosts_cookie_t
    sequence::UInt32
end

struct xcb_list_hosts_request_t
    major_opcode::UInt8
    pad0::UInt8
    length::UInt16
end

struct xcb_list_hosts_reply_t
    response_type::UInt8
    mode::UInt8
    sequence::UInt16
    length::UInt32
    hosts_len::UInt16
    pad0::NTuple{22, UInt8}
end

@cenum xcb_access_control_t::UInt32 begin
    XCB_ACCESS_CONTROL_DISABLE = 0
    XCB_ACCESS_CONTROL_ENABLE = 1
end


struct xcb_set_access_control_request_t
    major_opcode::UInt8
    mode::UInt8
    length::UInt16
end

@cenum xcb_close_down_t::UInt32 begin
    XCB_CLOSE_DOWN_DESTROY_ALL = 0
    XCB_CLOSE_DOWN_RETAIN_PERMANENT = 1
    XCB_CLOSE_DOWN_RETAIN_TEMPORARY = 2
end


struct xcb_set_close_down_mode_request_t
    major_opcode::UInt8
    mode::UInt8
    length::UInt16
end

@cenum xcb_kill_t::UInt32 begin
    XCB_KILL_ALL_TEMPORARY = 0
end


struct xcb_kill_client_request_t
    major_opcode::UInt8
    pad0::UInt8
    length::UInt16
    resource::UInt32
end

struct xcb_rotate_properties_request_t
    major_opcode::UInt8
    pad0::UInt8
    length::UInt16
    window::xcb_window_t
    atoms_len::UInt16
    delta::Int16
end

@cenum xcb_screen_saver_t::UInt32 begin
    XCB_SCREEN_SAVER_RESET = 0
    XCB_SCREEN_SAVER_ACTIVE = 1
end


struct xcb_force_screen_saver_request_t
    major_opcode::UInt8
    mode::UInt8
    length::UInt16
end

@cenum xcb_mapping_status_t::UInt32 begin
    XCB_MAPPING_STATUS_SUCCESS = 0
    XCB_MAPPING_STATUS_BUSY = 1
    XCB_MAPPING_STATUS_FAILURE = 2
end


struct xcb_set_pointer_mapping_cookie_t
    sequence::UInt32
end

struct xcb_set_pointer_mapping_request_t
    major_opcode::UInt8
    map_len::UInt8
    length::UInt16
end

struct xcb_set_pointer_mapping_reply_t
    response_type::UInt8
    status::UInt8
    sequence::UInt16
    length::UInt32
end

struct xcb_get_pointer_mapping_cookie_t
    sequence::UInt32
end

struct xcb_get_pointer_mapping_request_t
    major_opcode::UInt8
    pad0::UInt8
    length::UInt16
end

struct xcb_get_pointer_mapping_reply_t
    response_type::UInt8
    map_len::UInt8
    sequence::UInt16
    length::UInt32
    pad0::NTuple{24, UInt8}
end

@cenum xcb_map_index_t::UInt32 begin
    XCB_MAP_INDEX_SHIFT = 0
    XCB_MAP_INDEX_LOCK = 1
    XCB_MAP_INDEX_CONTROL = 2
    XCB_MAP_INDEX_1 = 3
    XCB_MAP_INDEX_2 = 4
    XCB_MAP_INDEX_3 = 5
    XCB_MAP_INDEX_4 = 6
    XCB_MAP_INDEX_5 = 7
end


struct xcb_set_modifier_mapping_cookie_t
    sequence::UInt32
end

struct xcb_set_modifier_mapping_request_t
    major_opcode::UInt8
    keycodes_per_modifier::UInt8
    length::UInt16
end

struct xcb_set_modifier_mapping_reply_t
    response_type::UInt8
    status::UInt8
    sequence::UInt16
    length::UInt32
end

struct xcb_get_modifier_mapping_cookie_t
    sequence::UInt32
end

struct xcb_get_modifier_mapping_request_t
    major_opcode::UInt8
    pad0::UInt8
    length::UInt16
end

struct xcb_get_modifier_mapping_reply_t
    response_type::UInt8
    keycodes_per_modifier::UInt8
    sequence::UInt16
    length::UInt32
    pad0::NTuple{24, UInt8}
end

struct xcb_no_operation_request_t
    major_opcode::UInt8
    pad0::UInt8
    length::UInt16
end

struct xcb_auth_info_t
    namelen::Cint
    name::Cstring
    datalen::Cint
    data::Cstring
end

const xcb_special_event = Cvoid
const xcb_special_event_t = xcb_special_event
const xcb_extension_t = Cvoid
