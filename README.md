Nutikaitse
==========

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
