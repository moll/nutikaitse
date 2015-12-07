---
title: Data Store
---
It should be assumed that any shared storage space on a device is unsafe and untrustworthy and any data stored there may be unexpectedly modified or leaked. In other words, the integrity, confidentiality and availability of that data is comproimsed.

- Device RAM and temporary storage areas are possible leak channels if they're shared with other apps. Ensure such temporary data isn't stored in publicly readable and writable directories.

- Data may leak also through non-temporary shared storage, such as the call log, address book or photo gallery. For example, a user may inadvertently share personal data through location data stored on images.

- An app's configuration file may be changed by other apps if stored on a publicly writable way. Even if the configuration lacks private information, it still often is important to withhold the integrity of it, lest it can become a attakc vector.
