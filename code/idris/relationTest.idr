module relationTest

import pair
import relation
import person
import people
import bool
import list
import nat

years': Nat
years' = query2 people gender age plus 0 

names'': String
names'' = query2 people gender name (++) ""

countOne: a -> Nat
countOne v = 1

number: Nat
number = query2 people gender countOne plus 0

count_rel: (list tuple) -> (tuple -> bool) -> Nat
count_rel rel sel = query2 rel sel countOne plus 0

sum_rel: (list tuple) -> (tuple -> bool) -> (tuple -> Nat) -> Nat
sum_rel rel sel proj = query2 rel sel proj plus 0

ave_rel:
    (list tuple) -> (tuple -> bool) -> (tuple -> Nat) -> pair Nat Nat
ave_rel rel sel proj =
   mkPair (sum_rel rel sel proj) (count_rel rel sel)

aveAge: pair Nat Nat
aveAge = mkPair 
           (query2 people gender age plus 0) 
           (query2 people gender countOne plus 0)
--gives you back a rational number (numerator, denominator)

AveAge: pair Nat Nat
AveAge = ave_rel people gender age

CountAge: Nat
CountAge = sum_rel people gender age
