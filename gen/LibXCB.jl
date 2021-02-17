module LibXCB

using Xorg_libxcb_jll: libxcb

using CEnum

# 'typedefs' for c types
#const Ctm = Base.Libc.TmStruct
#const Ctime_t = UInt
#const Cclock_t = UInt

include("xcb_common.jl")
include("xcb_api.jl")

end # module
