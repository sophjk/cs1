module listTestOld

import listOld
import nat
import bool

a: nat
a = length nil {a = bool}
--expect O--

a': nat
a'  = length nil {a = nat}
--expect O

b: nat
b = length (cons (S (S O)) nil)
--expect 1--

c: nat
c = length (cons true (cons false (cons true (cons false nil))))
--expect 4

d: list bool
d = append (cons false (cons false nil)) (cons true (cons true (cons true nil)))
--expect cons false (cons false (cons true (cons true (cons true nil))))

e: list nat
e = append (cons O (cons (S O) (cons (S (S O)) nil))) (cons (S (S (S O))) (cons (S (S (S (S O)))) nil))
--expect cons O (cons (S O) (cons (S (S O)) (cons (S (S (S O))) (cons
  --(S (S (S (S O))))) nil))))

