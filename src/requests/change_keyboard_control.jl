function xcb_change_keyboard_control(
	conn:: XCBConnection;
	checked:: Bool,
	key_click_percent:: Union{Integer, Nothing} = nothing,
	bell_percent:: Union{Integer, Nothing} = nothing,
	bell_pitch:: Union{Integer, Nothing} = nothing,
	bell_duration:: Union{Integer, Nothing} = nothing,
	led:: Union{Integer, Nothing} = nothing,
	led_mode:: Union{Integer, Nothing} = nothing,
	key:: Union{Integer, Nothing} = nothing,
	auto_repeat_mode:: Union{Integer, Nothing} = nothing
):: XCBVoidFuture
	value_mask = UInt32(0)
	value_list = Ref{LibXCB.xcb_change_keyboard_control_value_list_t}()
	
	key_click_percent === nothing || (value_mask |= LibXCB.XCB_KB_KEY_CLICK_PERCENT; value_list[].key_click_percent = key_click_percent)
	bell_percent === nothing      || (value_mask |= LibXCB.XCB_KB_BELL_PERCENT;      value_list[].bell_percent = bell_percent)
	bell_pitch === nothing        || (value_mask |= LibXCB.XCB_KB_BELL_PITCH;        value_list[].bell_pitch = bell_pitch)
	bell_duration === nothing     || (value_mask |= LibXCB.XCB_KB_BELL_DURATION;     value_list[].bell_duration = bell_duration)
	led === nothing               || (value_mask |= LibXCB.XCB_KB_LED;               value_list[].led = led)
	led_mode === nothing          || (value_mask |= LibXCB.XCB_KB_LED_MODE;          value_list[].led_mode = led_mode)
	key === nothing               || (value_mask |= LibXCB.XCB_KB_KEY;               value_list[].key = key)
	auto_repeat_mode === nothing  || (value_mask |= LibXCB.XCB_KB_AUTO_REPEAT_MODE;  value_list[].auto_repeat_mode = auto_repeat_mode)
	
	fn = checked ? LibXCB.xcb_change_keyboard_control_aux_checked : LibXCB.xcb_change_keyboard_control_aux
	cookie = fn(
		conn.handle,
		value_mask,
		value_list
	)
	
	XCBVoidFuture(conn, cookie, checked)
end
