---
title: Password Storage
---
Passwords should never be stored in plain text. If it becomes necessary to store
passwords on the device itself, they must be stored using secure storage mechanisms provided by the host platform.

However, [authorization tokens](#authorization-tokens) should be preferred to storing passwords, as those won't leak the original password in case of a security breach and can be revoked independently.
