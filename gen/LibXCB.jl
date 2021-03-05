module LibXCB

import Xorg_libxcb_jll
import Xorg_libxcb_jll: libxcb, libxcb_xkb

using CEnum

# 'typedefs' for c types
#const Ctm = Base.Libc.TmStruct
#const Ctime_t = UInt
#const Cclock_t = UInt

include("xcb_common.jl")
include("xcb_api.jl")

# externed global variables (Clang.jl skips over them)
const xcb_xkb_id_ptr = cglobal((:xcb_xkb_id, libxcb_xkb), xcb_extension_t)

end # module
