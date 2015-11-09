module bool

import Serialize

data bool = true | false

id_bool: bool -> bool
id_bool true = true
id_bool false = false

constFalse: bool -> bool
constFalse _ = false

constTrue: bool -> bool
constTrue _ = true

not: bool -> bool
not true = false
not false = true


--There are 16 ways to fill in the results column for a truth table for
  --a binary Boolean function, and there are thus exactly 16 such
  --functions, and no more.--

and: bool -> bool -> bool
and true true = true
and _ _ = false

or: bool -> bool -> bool
or false false = false
or _ _ = true

nand: bool -> bool -> bool
nand (true) (true) = false
nand (true) (false) = true
nand (false) (true) = true
nand (false) (false) = true

xor: bool -> bool -> bool
xor (true) (true) = false
xor (false) (true) = true
xor (true) (false) = true
xor (false) (false) = false

pand: bool -> bool -> bool
pand (true) = id_bool
pand (false) = constFalse

por: bool -> bool -> bool
por (true) = constTrue
por (false) = id_bool

pxor: bool -> bool -> bool
pxor (true) = not
pxor (false) = id_bool

pnand: bool -> bool -> bool
pnand (true) = not
pnand (false) = constTrue

eql_bool: bool -> bool -> bool
eql_bool true true = true
eql_bool false false = true
eql_bool _ _ = false

instance Serialize bool where
  toString true = "True"
  toString false = "False"
