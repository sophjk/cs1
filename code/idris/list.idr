module list

import bool
import nat
import ite
import eq
import Serialize

data list a = nil| (::) a (list a)
--a takes any type--

infixr 7 ::
--r because it is right associative

length: list a -> nat
length nil = O
length (n::l') = S (length l')

append: list a -> list a -> list a
append (nil) l2 = l2 
append (h::s) t = h::(append s t)

(++): list a -> list a -> list a
(++) nil s = s
(++) (h::s) t = h::(s++(t))

map: (a -> b) -> list a -> list b
map f nil = nil
map f (h::t) = (f h)::(map f t)

filter: (a -> bool) -> list a -> list a
filter f nil = nil
filter f (h::t) = ite (f h) (h::(filter f t)) (filter f t)

foldr: (a -> a -> a) -> a -> list a -> a
foldr f id nil = id
foldr f id (h::t) = f h (list.foldr f id t)

member:(eq a) => a -> list a -> bool
member v nil = false
member v (h::t) = ite (eql v h) true (member v t)
 
instance (eq a) => eq (list a) where 
  eql nil nil = true
  eql (h::t) nil = false
  eql nil (h::t) = false
  eql (h1::t1) (h2::t2) = and (eql h1 h2) (eql t1
   t2)

subset_elements: (eq a) => list a -> list a -> bool
subset_elements nil nil = true
subset_elements (h1::t1) nil = false
subset_elements nil (h1::t1) = true
subset_elements (h1::t1) l2 = ite (member h1 l2) (subset_elements t1 l2) false


same_elements: (eq a) => list a -> list a -> bool
same_elements l1 l2 = and (subset_elements l1 l2) (subset_elements l2 l1)

toStringList : (Serialize a) => (list a) -> String
toStringList nil = ""
toStringList (h1::nil) = (toString h1)
toStringList (h::t) = (toString h) ++ "," ++ (toStringList t)

instance (Serialize a) => Serialize (list a) where
  toString l =  "[" ++ (toStringList l) ++ "]"
