module nat

import bool
import pair

data nat = O|S O

isZero: nat -> bool
isZero O = true
isZero n = false

succ: nat -> nat
succ n = S n

pred: nat ->
pred O = O
pred (S n) = n

evenb: nat -> bool
evenb O = true
evenb (S O) = false
evenb (S (S n)) = evenb n

oddb: nat -> bool
oddb n = not (evenb n)

addp: pair nat nat -> nat
addp (mkPair O a) = a
addp (mkPair (S a) b) = S (addp (mkPair a b)

multp: pair nat nat -> nat
multp (mkPair O a) = O
multp (mkPair (S n) m) = addp (mkPair n (multp (mkPair n m)))

fact: nat -> nat
fact O = (S O)
fact (S O) = (S O)
fact (S n) = multp (mkPair (S n) (fact n))
