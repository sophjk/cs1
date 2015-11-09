module ite

import bool

ite: bool -> a -> a -> a 
ite true tn fm = tn
ite false tn fm = fm
