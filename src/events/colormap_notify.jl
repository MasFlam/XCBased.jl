struct XCBColormapNotifyEvent <: XCBEvent
	sequence:: UInt16
	window:: LibXCB.xcb_window_t
	colormap:: LibXCB.xcb_colormap_t
	new:: Bool
	state:: UInt8
end

function XCBColormapNotifyEvent(evptr:: Ptr{LibXCB.xcb_generic_event_t})
	ev = unsafe_load(Ptr{LibXCB.xcb_colormap_notify_event_t}(evptr))
	XCBColormapNotifyEvent(
		ev.sequence,
		ev.window,
		ev.colormap,
		ev.new != 0,
		ev.state
	)
end
