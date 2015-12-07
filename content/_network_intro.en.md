---
title: Data Protection on Network
---
![](<%= image_path("network.png") %>){: .icon height="72px"}

## <%= @item[:title] %>

When using network connections, one should remember that data transfers over the network must be through encrypted channels because not all parts of network are guaranteed to be under the control of the user or the developer of the application.

These days, a large umber of mobile apps require access to the network and backend servers to function properly. If those servers or network channels are not sufficiently secure, they can be used as attack vectors.
