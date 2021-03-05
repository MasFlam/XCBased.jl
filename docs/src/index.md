# XCBased.jl
Julia bindings for the XCB library. This package abstracts away XCB cookies, errors, events and
replies. It does not and will not add abstractions around X resources, only XCB intrinsics.

# Connection and Setup

```@docs
XCBConnection
XCBConnectionError
xcb_connect
xcb_disconnect
connection_has_error
XCBSetup
XCBScreen
XCBVisualType
XCBFormat
get_setup
```

# Other XCB Functions

```@docs
generate_id
xcb_flush
get_maximum_request_length
```

# Requests
Requests are made using functions with names being the request names from the X standard, converted
from PascalCase to snake\_case, prefixed with `xcb_`. For example, the `CreateWindow` request is
sent using the `xcb_create_window` function. The request functions return futures.

# Futures
Futures are named `XCBXXXFuture`, where `XXX` is a PascalCase name of the corresponding request.
One special future is the `XCBVoidFuture`, which is returned by many requests, when the request
generates no reply.

```@docs
XCBFuture
XCBVoidFuture
sequence(::XCBFuture)
fetch(::XCBFuture)
wait(::XCBFuture)
discard
```

# Errors and Replies
When a future is [`wait`](@ref)ed or [`fetch`](@ref)ed, a reply is returned (only from the second
function) or an error is thrown. If the type of the future awaited is `XCBXXXFuture`, then the
reply type is `XCBXXXReply`.

```@docs
XCBError
sequence(::XCBError)
minor_opcode
major_opcode
```

```@docs
XCBReply
sequence(::XCBReply)
```

# Events

```@docs
XCBEvent
sequence(::XCBEvent)
wait_for_event
poll_for_event
```
