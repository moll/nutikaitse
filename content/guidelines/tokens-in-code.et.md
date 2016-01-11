---
title: "Ligipääsuvõtmed rakenduse koodis"
---
Paroole ja muud mitteavalikku infot ei tohi sisse kirjutada mobiilrakenduse
koodi, sest mobiilirakenduste kompileeritud binaarfailidest on võimalik 
taastada rakenduse algne lähtekood või lugeda sealt välja teenusserveritega
liidestamiseks sissekirjutatud ligipääsuvõtmeid. Binaarfaili tasub käsitleda
nagu avalikku ruumi.
