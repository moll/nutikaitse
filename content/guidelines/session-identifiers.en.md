---
title: Session Identifiers
---
Any used session identifier should be such that it can't be guessed,
constructed nor derived from other known identifiers.

It has to be taken into account that the output of pseudorandom number generators (PRNG) depends highly on the entropy of the initial seed value and the quality of the PRNG itself. Make sure to use a cryptographically secure random number generator provided by the platform for session identifiers.

Further reading:  
<https://en.wikipedia.org/wiki/Cryptographically_secure_pseudorandom_number_generator>
