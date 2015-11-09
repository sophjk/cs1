module colleges

import nat
import list

data colleges = CAS | Comm | E | A | Batten

--school, # of males in percentage, # of females in percentage--

data gender = mkGender colleges Nat Nat

cas: gender
cas = mkGender CAS 46 54

comm: gender
comm = mkGender Comm 55 45

eng: gender
eng = mkGender E 60 40

aschool: gender
aschool = mkGender A 40 60

batten: gender
batten = mkGender Batten 47 53

percentMale: gender -> Nat
percentMale (mkGender c m f) = m

percentFemale: gender -> Nat
percentFemale (mkGender c m f) = f

whatschool: gender -> colleges
whatschool (mkGender c m f) = c

listgender: list gender
listgender = cons cas (cons comm (cons eng (cons aschool (cons batten nil))))
