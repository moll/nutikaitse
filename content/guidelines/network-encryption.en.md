---
title: Transmitting Data
---
Data must be transmitted only over secure channels (such as SSL/TLS).

If possible, only well-known protocols and their implementations should be used. The fewer protocols are in use at once, the easier it is to ensure their robustness and security on both the receiver and sender side.

Most of the client-server use-cases today can be solved by using HTTP over SSL (HTTPS) with libraries and implementations available on all platforms.
