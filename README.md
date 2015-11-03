NutiKaitse
==========
[![Creative Commons Attribution-ShareAlike 3.0][ccimg]][cc]


Installimine
------------
Veendu, et arvutis on töötav Ruby installatsioon. Seejärel installeeri
genereerimiseks vajalikud teegid:
```sh
gem install bundler
bundle install
```


Käivitamine
-----------
Dokumendi genereerimiseks ja brauseris vaatamiseks käivita nii lokaalne server
kui ka kompileerimisprotsess:

```sh
make -j2 server autocompile
```

Dokumendi nägemiseks ava brauseris <http://localhost:4000>.


Litsents
--------
NutiKaitse suunised põhinevad [ENISA 2011. aasta nutitelefonide turvalise arendamise juhistel][enisadoc], mis pärinevad ENISA ja OWASPi-projekti koostööst. Juhised on sealt tulenevalt ka [Creative Commons Attribution-ShareAlike 3.0][cc] litsentsiga.


[cc]: https://creativecommons.org/licenses/by-sa/3.0/
[ccimg]: https://i.creativecommons.org/l/by-sa/3.0/80x15.png
[enisadoc]: https://www.enisa.europa.eu/activities/Resilience-and-CIIP/critical-applications/smartphone-security-1/smartphone-secure-development-guidelines