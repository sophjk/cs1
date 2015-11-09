module nat

import bool
import eq
import Serialize

data nat = O | S nat

isZero: nat -> bool
isZero O = true
isZero _ = false

succ: nat -> nat
succ n = S n

pred: nat -> nat
pred O = O
pred (S n) = n

evenb: nat -> bool
evenb O = true
evenb (S O) = false
evenb (S (S n)) = evenb n

oddb: nat -> bool
oddb n = not (evenb n)

add: nat -> nat -> nat
add (O) (m) = m
add (S n) (m) = S (add n m)

mult: nat -> nat -> nat
mult (O) (m) = O
mult (S n) (m) = add (m) (mult (n) (m))

fact: nat -> nat
fact O = S O
fact (S n) = mult (S n) (fact n)

subp: nat -> nat -> nat
subp (O) (m) = O
subp (n) (O) = n
subp (S n) (S m) = subp (n) (m)

exp: nat -> nat -> nat
exp (O) (n) = O
exp (x) (O) = S O
exp (x) (S n) = mult (x) (exp (x) (n))

--Given a pair of natural numbers, (a, b), return true if a is less than or equal to b, otherwise return false
lep: nat -> nat -> bool
lep (O) (b) = true
lep (a) (O) = false
lep (S a) (S b) = lep (a) (b)

 -- given a pair of natural numbers, (a, b), return true if a is equal to b, otherwise return false
eql_nat: nat -> nat -> bool
eql_nat (O) (O) = true
eql_nat (a) (O) = false
eql_nat (O) (b) = false
eql_nat (S a) (S b) = eql_nat (a) (b)

-- given a pair of natural numbers, (a, b), return true if a is greater than b, otherwise return false
gtp: nat -> nat -> bool
gtp (a) (b) = not (lep (a) (b))

-- given a pair of natural numbers, (a, b), return true if a is greater than or equal to b
gep: nat -> nat -> bool
gep (a) (b) = xor (gtp (a) (b)) (eql_nat (a) (b))

 -- given a pair of natural numbers, (a, b), return true if a is less than b
ltp: nat -> nat -> bool
ltp (a) (b) = xor (lep (a) (b)) (eql_nat (a) (b))

fib: nat -> nat
fib (O) = O
fib (S O) = (S O)
fib (S (S O)) = (S O)
fib (S (S n)) = add (fib (S n)) (fib n)

instance eq nat where
  eql b1 b2 = eql_nat b1 b2

instance Serialize nat where
  toString O = "Z"
  toString (S n) = "s" ++ (toString n)
