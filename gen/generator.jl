#!/usr/bin/env julia

using Clang
import Xorg_libxcb_jll

libxcb_include_dir = joinpath(Xorg_libxcb_jll.artifact_dir, "include", "xcb")
libxcb_headers = joinpath.(Ref(libxcb_include_dir), ["xcb.h", "xproto.h", "xkb.h"])

function header_library(header)
	header = basename(header)
	if header in ("xcb.h", "xproto.h")
		return Xorg_libxcb_jll.libxcb
	elseif header == "xkb.h"
		return Xorg_libxcb_jll.libxcb_xkb
	end
	error("unknown header: $header")
end

libxcb = init(
	headers = libxcb_headers,
	output_file = joinpath(@__DIR__, "xcb_api.jl"),
	common_file = joinpath(@__DIR__, "xcb_common.jl"),
	header_wrapped = (root, cursor_header) -> root == cursor_header, # && startswith(dirname(cursor_header), libxcb_include_dir),
	clang_includes = [libxcb_include_dir],
	header_library = header_library,
	clang_args = ["-v"],
	clang_diagnostics = false
)
run(libxcb)
