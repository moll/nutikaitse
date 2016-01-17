---
title: "Nutirakenduste platvorminõuded"
subtitle: Vaata Maailma SA, Majandus- ja kommunikatsiooniministeerium, <time>3. dets 2014</time>
layout: ["platform", "default"]
---
<div class="left">
![](<%= image_path("network.png") %>){: .icon height="72px"}

## Veebirakendused

Mobiilsete veebirakenduste arendamisel tuleks nõudmiste ja soovitustega piirduda W3C poolt heaks kiidetud dokumentidega:

- [Mobile Web Application Best Practices](https://www.w3.org/TR/mwabp/)
- [Mobile Web Best Practices 1.0](https://www.w3.org/TR/mobile-bp/)
- [Web Content Accessibility Guidelines](https://www.w3.org/TR/WCAG20/)

Ei ole otstarbekas nõuded siduda konkreetsete HTMLi versioonidega (DOM, CSS jne), sest tegu on on pidevalt muutuvate tehnoloogiatega. Parem on lähtuda ülal mainitud heade praktikate dokumentidest.

WAP 2.0 seadmed peaksid toetama hästi XHTML Basic 1.1 standardit (WAP 1.0 oli WML põhine) ja CSS Mobile Profile 2.0.
</div>

<div class="right">
![](<%= image_path("app.png") %>){: .icon height="72px"}

## _Native_ rakendused

Native rakenduste juures soovitused ja nõuded peaksid lähtuma kasutajate arvudest Eestis, mujal maailmas ja teatud määral ka
prognoosidest tulevikus.

Turvalisuse aspektist lähtudes peaks OS nõuded alati lähtuma viimasest (aktiivse toega) põhiversioonist (näiteks Android 5.x, iOS 8.x, Ubuntu Touch OS 14.x jne...).

- Operatsioonisüsteemide kui brauserite puhul võiks nõuda täielikku tuge neile, mida kasutab vähemalt **5%** külastajatest.
- Operatsioonisüsteemidele ja brauseritele, mida kasutavad **1-5%** külastajatest, võiks pakkuda piiratud tuge.
- Alla **1%** kasutajaskonnaga operatsioonisüsteeme ning brausereid toetada võib, aga ei pea.

### Kasutajate osakaalu hetkeseisuga:

- [Mobile Devices Statistics](http://www.w3schools.com/browsers/browsers_mobile.asp)
- [Market Share Statistics for Internet Technologies](http://www.netmarketshare.com/)
- [StatCounter Global Stats OS](http://gs.statcounter.com/#mobile+tablet-os-EE-monthly-201302-201402)
- [StatCounter Global Stats Browser](http://gs.statcounter.com/#mobile+tablet-browser-EE-monthly-201302-201402)
- [Clicky, Mobile operating systems (EE marketshare)](http://clicky.com/marketshare/ee/operating-systems/mobile/)
</div>
