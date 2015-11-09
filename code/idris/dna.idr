module dna

import list
import pair
import bool
import nat

data base = A|T|C|G

complement_base: base -> base
complement_base A = T
complement_base T = A
complement_base C = G
complement_base G = C

complement_strand: list base -> list base
complement_strand (h::t) = map complement_base (h::t)

strand1: list (pair base base) -> list base
strand1 (nil) = nil
strand1 ((mkPair a b)::t) = a::(strand1 t)

strand2: list (pair base base) -> list base
strand2 (nil) = nil
strand2 ((mkPair a b)::t) = b::(strand2 t)

complementPair: base -> pair base base
complementPair a = (mkPair (a) (complement_base a))

complete: list base -> list (pair base base)
complete nil = nil
complete (h::t) = (map complementPair (h::t))

match: base -> base -> nat
match A A  = (S O)
match T T = (S O)
match C C = (S O)
match G G = (S O)
match a b = O

value: base -> list base -> list nat
value a (nil) = nil
value a (h::t) = map (match a) (h::t) 

countBase: base -> list base -> nat
countBase a (nil) = O
countBase a (h::t) = list.foldr add O (value a (h::t))
