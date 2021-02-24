#!/usr/bin/env julia

pascal_names = [
	"AllocColor",
	"AllocNamedColor",
	"GetAtomName",
	"GetFontPath",
	"GetGeometry",
	"GetImage",
	"GetInputFocus",
	"GetKeyboardControl",
	"GetKeyboardMapping",
	"GetModifierMapping",
	"GetMotionEvents",
	"GetPointerControl",
	"GetPointerMapping",
	"GetProperty",
	"GetScreenSaver",
	"GetSelectionOwner",
	"GetWindowAttributes",
	"GrabKeyboard",
	"GrabPointer",
	"ListExtensions",
	"ListFonts",
	"ListFontsWithInfo",
	"ListHosts",
	"ListInstalledColormaps",
	"ListProperties",
	"LookupColor",
	"QueryBestSize",
	"QueryColors",
	"QueryExtension",
	"QueryFont",
	"QueryKeymap",
	"QueryPointer",
	"QueryTextExtents",
	"QueryTree",
	"SetModifierMapping",
	"SetPointerMapping",
	"TranslateCoordinates"
]

snake_names = [
	"alloc_color",
	"alloc_named_color",
	"get_atom_name",
	"get_font_path",
	"get_geometry",
	"get_image",
	"get_input_focus",
	"get_keyboard_control",
	"get_keyboard_mapping",
	"get_modifier_mapping",
	"get_motion_events",
	"get_pointer_control",
	"get_pointer_mapping",
	"get_property",
	"get_screen_saver",
	"get_selection_owner",
	"get_window_attributes",
	"grab_keyboard",
	"grab_pointer",
	"list_extensions",
	"list_fonts",
	"list_fonts_with_info",
	"list_hosts",
	"list_installed_colormaps",
	"list_properties",
	"lookup_color",
	"query_best_size",
	"query_colors",
	"query_extension",
	"query_font",
	"query_keymap",
	"query_pointer",
	"query_text_extents",
	"query_tree",
	"set_modifier_mapping",
	"set_pointer_mapping",
	"translate_coordinates"
]

fpath(s) = joinpath(@__DIR__, "$s.jl")

for (pascal, snake) in zip(pascal_names, snake_names)
	if isfile(fpath(snake))
		printstyled("$snake.jl exists - skipping.\n", color = :yellow)
		continue
	end
	open(fpath(snake), "w") do io
		s = """
		mutable struct XCB$(pascal)Future <: XCBFuture
			conn:: XCBConnection
			cookie:: LibXCB.xcb_$(snake)_cookie_t
			checked:: Bool
			reply:: Union{XCB$(pascal)Reply, Nothing, Missing}
			had_error:: Bool
			
			function XCB$(pascal)Future(conn, cookie, checked, reply = missing, had_error = false)
				future = new(conn, cookie, checked, reply, had_error)
				finalizer(future) do f
					checked && f.reply === missing && LibXCB.xcb_discard_reply(f.conn.handle, f.cookie.sequence)
				end
				future
			end
		end
		
		function fetch(f:: XCB$(pascal)Future):: Union{XCB$(pascal)Reply, Nothing}
			f.reply === missing || return f.reply
			errptrref = Ref(Ptr{LibXCB.xcb_generic_error_t}())
			replyptr = LibXCB.xcb_$(snake)_reply(f.conn.handle, f.cookie, errptrref)
			if replyptr == C_NULL
				f.reply = nothing
				f.had_error = true
				throw_xcb_error(errptrref[])
			end
			f.reply = XCB$(pascal)Reply(replyptr)
			Libc.free(replyptr)
			f.reply
		end
		"""
		write(io, s)
	end
	printstyled("Written to $snake.jl.\n", color = :green)
end
