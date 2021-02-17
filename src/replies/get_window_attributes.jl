struct XCBGetWindowAttributesReply <: XCBReply
	sequence:: UInt16
	backing_store:: UInt8
	visual:: LibXCB.xcb_visualid_t
	class:: UInt16
	bit_gravity:: UInt8
	win_gravity:: UInt8
	backing_planes:: UInt32
	backing_pixel:: UInt32
	save_under:: Bool
	map_is_installed:: Bool
	map_states:: UInt8
	override_redirect:: Bool
	colormap:: LibXCB.xcb_colormap_t
	all_event_masks:: UInt32
	your_event_mask:: UInt32
	do_not_propagate_mask:: UInt16
end

function XCBGetWindowAttributesReply(replyptr:: Ptr{LibXCB.xcb_get_window_attributes_reply_t})
	reply = unsafe_load(replyptr)
	XCBGetWindowAttributesReply(
		reply.sequence,
		reply.backing_store,
		reply.visual,
		reply.class,
		reply.bit_gravity,
		reply.win_gravity,
		reply.backing_planes,
		reply.backing_pixel,
		reply.save_under != 0,
		reply.map_is_installed != 0,
		reply.map_states,
		reply.override_redirect != 0,
		reply.colormap,
		reply.all_event_masks,
		reply.your_event_mask,
		reply.do_not_propagate_mask
	)
end
