module list_nat

import nat 
import pair

data list_nat = nil|cons nat list_nat
--turn into data list a = nil | cons a (list a)--

lO: list_nat
lO = nil

l1: list_nat
l1 = cons O nil

l2: list_nat
l2 = (cons (S O) (cons (S (S O)) (nil)))

l3: list_nat
l3 = (cons (S O) (cons (S (S O)) (cons (S (S (S O))) (nil))))

l4: list_nat
l4 = (cons (S (S (S (S O)))) (cons (S (S (S (S (S O))))) (cons (S (S (S (S (S (S O)))))) nil)))

length: list_nat -> nat
length nil = O
length (cons n l') = S (length l')
--length: list a -> nat
--length nil = O
--length (cons n l') = S (length l')


{-
length 13
length (cons (S O) (cons (S (S O)) (cons (S (S (S O))) nil)))

-}

append: list_nat -> list_nat -> list_nat
append (nil) (nil) = nil
append (nil) (cons (m) (n)) = cons m n
append (cons (m) (n)) (nil) = cons m n
append (cons (m) (n)) (cons (s) (k)) = cons (m) (append (n) (cons (s) (k)))
--binary operation on lists
--append: list a -> list a -> list a
-- append nil l2 = l2
--append (cons h l1') l2 = cons h (append l1' l2)
