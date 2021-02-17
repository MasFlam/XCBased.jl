#!/usr/bin/env julia

using Clang
import Xorg_libxcb_jll

libxcb_include_dir = joinpath(Xorg_libxcb_jll.artifact_dir, "include", "xcb")
libxcb_headers = [joinpath(libxcb_include_dir, "xcb.h")]

libxcb = init(
	headers = libxcb_headers,
	output_file = joinpath(@__DIR__, "xcb_api.jl"),
	common_file = joinpath(@__DIR__, "xcb_common.jl"),
	header_wrapped = (_, cursor_header) -> startswith(dirname(cursor_header), libxcb_include_dir),
	clang_includes = [libxcb_include_dir],
	header_library = _ -> "libxcb",
	clang_args = ["-v"],
	clang_diagnostics = false
)
run(libxcb)
