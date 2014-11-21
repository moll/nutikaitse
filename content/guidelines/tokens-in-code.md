---
title: "Paroolid mobiilirakenduse koodis"
---
Paroole ja muud mitteavalikku infot ei tohi sisse kirjutada mobiilrakenduse
koodi, sest mobiilirakenduste kompileeritud binaarfailidest on võimalik lihtsalt
taastada rakenduse algne lähtekood. Ka rakenduse liidestamisel teenusserveritega
ei tohiks autentimiseks kasutada rakenduse koodi sissekirjutatud
ligipääsuvõtmeid.
