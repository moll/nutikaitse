---
title: "Sessiooniidenfikaatorid"
---
Kasutatavad rakenduse sessiooniidentifikaatorid peaks olema sellised, mida on
keeruline ära arvata ja mida ei saa ise konstrueerida või tuletada teiste
kasutussessioonide identifikaatoritest. Tuleb arvestada, et juhuarvude
generaatorid väljastavad samasuguse sisendmuutuja (seed) puhul küll juhuslikke
arve, aga arvrea puhul on need etteprognoositavad. Seetõttu on oluline kasutada
sellist sisendmuutujat mis ei ole etteennustatav. Tavaliselt kasutatakse selleks
kuupäeva ja kellaaega, aga kuna ka nende muutmisega on võimalik arvestada, siis
parem on näiteks kasutada kuupäeva ja kellaaega kombinatsioonis telefoni
sisemistelt anduritelt saabuva infoga (nt asukoha, güroskoobi või
kompassiandmed).