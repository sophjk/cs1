module listOld

import bool
import nat

data list a = nil| cons a (list a)
--a takes any type--


length: list a -> nat
length nil = O
length (cons n l') = S (length l')

append: list a -> list a -> list a
append (nil) (nil) = nil
append (nil) (cons m n) = cons m n
append (cons m n) (nil) = cons m n
append (cons m n) (cons s k) = cons m (append (n) (cons s k))

a: nat
a = length (cons O nil)
