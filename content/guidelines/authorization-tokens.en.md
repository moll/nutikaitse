---
title: "Authorization Tokens"
---
After the user has been initially identified in the application, authorization tokens should be used instead of the password. These must be securely saved on the device, they must have a predetermined expiration date, and they must also be possible to invalidate remotely by the backend server. It must be ensured that authorization tokens would expire as frequently as is practical (also dependant on the purpose of the application).
