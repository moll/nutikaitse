---
title: "Andmete kustutamine kaugjuhtimise teel"
---
Lisaturvalisuse saavutamiseks võib arendaja rakendusse lisada võimaluse
andmete kustutamiseks kaugjuhtimise teel, et vajadusel oleks võimalik andmete
kustutamine eraldi igas seadmes kuhu rakendus paigaldatud on (sellise võimaluse
lisamine tekitab kindlasti lisariske ja selle funktsiooni kuritarvitamise
ärahoidmiseks on vajalik tugev autentimine).

Kasutajatele tuleks soovitada nutiseadmes olevate kõikide andmete krüpteerimist
(kui seade seda toetab) ja seadistada turvaseaded nii, et lubatud oleks seadme
tehaseseadete taastamine ja andmete kustutamine kaugjuhtimise teel (nt Android
seadmetel läbi Android Device Manager keskkonna, Apple seadmetel läbi iCloud
keskkonna).
Autoriseerimisvõtmete võrgu kaudu edastamisel tuleb kasutada krüpteeritud
andmevahetuskanalit (SSL/TLS abil, soovitavalt vähemalt TLS 1.0). 
