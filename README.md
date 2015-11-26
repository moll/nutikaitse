<img src="content/assets/images/nutikaitse.png" width=96>

NutiKaitse
==========
[![Creative Commons Attribution-ShareAlike 3.0][ccimg]][cc]

[**Nutirakenduste turvalise arenduse suuniste**][suunised] eesmärgiks on sätestada põhinõuded ja suunised, mida tasub jälgida nutiseadmete jaoks rakenduste väljatöötamisel, sh nii riiklike tellimuste puhul kui ka eraettevõtluses, et lõpptulemusena valmiks turvaline ja mugavalt kasutatav mobiilirakendus. 

Suunised on mõeldud **töövahendina** kasutamiseks nii **arenduste tellijale kui arendajale** ja käsitleb teemasid neljas kategoorias:

- [Autentimine](http://nutikaitse.ee/suunised/#authentication)
- [Andmete kaitse seadmes](http://nutikaitse.ee/suunised/#data)
- [Andmete kaitse võrgus](http://nutikaitse.ee/suunised/#network)
- [Rakenduse kaitse](http://nutikaitse.ee/suunised/#app) 

Suunised on valminud [Majandus- ja kommunikatsiooniministeeriumi][mkm] tellimusel ja koordineeritud [Vaata Maailma SA][vaatamaailma] poolt.

[suunised]: http://nutikaitse.ee/suunised/ 
[mkm]: https://www.mkm.ee
[vaatamaailma]: http://vaatamaailma.ee


Tagasiside
----------
Kõik huvilised on oodatud andma suuniste kohta tagasisidet. Ettepanekuid, küsimusi, täiendusi või arutelu saab algatada kahte moodi:

1. Algatades uus [diskussiooniteema][issues] GitHubis.
2. Viies muudatused sisse suuniste lähtefailidesse ja tehes [GitHubis][repo] _pull request_.  
   Lokaalselt suunistega töötamiseks leiab [tehnilisi juhiseid](#tehnilised-juhised) altpoolt.

Dokumendi viimast versiooni saab näha aadressil <http://nutikaitse.ee/suunised/>.


Tehnilised juhised
------------------
Suunised genereeritakse [`content/guidelines`](./content/guidelines) kaustas olevatest lähtefailidest, kus igas failis on üks suunis. Need kombineeritakse ühtseks dokumendiks läbi [`content/guidelines.haml`](./content/guidelines.haml) faili.

### Installimine

Kopeeri koodihoidla oma arvutisse:

```sh
git clone https://github.com/moll/nutikaitse.git
```

Veendu, et arvutis on töötav [Ruby](https://www.ruby-lang.org) installatsioon. Seejärel installi genereerimiseks vajalikud teegid:

```sh
cd nutikaitse
gem install bundler
bundle install
```


### Käivitamine

Dokumendi genereerimiseks ja brauseris vaatamiseks käivita nii lokaalne server kui ka kompileerimisprotsess:

```sh
make -j2 server autocompile
```

Dokumendi nägemiseks ava brauseris <http://localhost:4000>.

Suuniste lähtefailidesse tehtud muudatusi peaksid nägema brauseris pärast lehe värskendamist.

### Pull request

GitHubis _pull request_-i tegemiseks leiad rohkem infot [GitHubi pull requesti artiklist](https://help.github.com/articles/fork-a-repo/).


Litsents
--------
NutiKaitse suunised põhinevad [ENISA 2011. aasta nutitelefonide turvalise arendamise juhistel][enisadoc], mis pärinevad ENISA ja OWASPi-projekti koostööst. Juhised on sealt tulenevalt [Creative Commons Attribution-ShareAlike 3.0][cc] litsentsiga.


[cc]: https://creativecommons.org/licenses/by-sa/3.0/
[ccimg]: https://i.creativecommons.org/l/by-sa/3.0/80x15.png
[enisadoc]: https://www.enisa.europa.eu/activities/Resilience-and-CIIP/critical-applications/smartphone-security-1/smartphone-secure-development-guidelines
[repo]: https://github.com/moll/nutikaitse
[issues]: https://github.com/moll/nutikaitse/issues
