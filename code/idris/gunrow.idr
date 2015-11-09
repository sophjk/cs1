module gunrow 
--from gun death rates from Wikipedia--

import listOld

data country = Argentina | Australia | Austria | Honduras | USA 

|||A record of this type represents a country and the death rate per 10
|||million by gun for homicides, suicides, and unintentional, other

data gunrow = mkGunrow country Nat Nat Nat Nat

argen: gunrow
argen = mkGunrow Argentina 190 279 64 362

australia: gunrow
australia = mkGunrow Australia 11 62 5 8

austria: gunrow
austria = mkGunrow Austria 18 268 1 8

honduras: gunrow
honduras = mkGunrow Honduras 6480 0 0 0

usa: gunrow
usa = mkGunrow USA 355 670 16 9

countryName: gunrow -> country
countryName (mkGunrow c h s u o) = c

|||homicide per 10 million
homicidePer10M : gunrow -> Nat
homicidePer10M (mkGunrow c h s u o) = h

|||suicide per 10 million
suicidePer10M: gunrow -> Nat
suicidePer10M (mkGunrow c h s u o) = s

|||unintentional per 10 million
unintentionalPer10M: gunrow -> Nat
unintentionalPer10M (mkGunrow c h s u o) = u

|||other per 10 million
otherPer10M: gunrow -> Nat
otherPer10M (mkGunrow c h s u o) = o

lgr: list gunrow
lgr = (cons argen (cons austria (cons australia (cons honduras (cons usa nil)))))
