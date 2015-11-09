module boolTest

import pair
import bool

data boolTest = bool


t:  bool
t = true

f: bool
f = false

tf: pair bool bool
tf = (mkPair true false)

tt: pair bool bool
tt = (mkPair true true)

ff: pair bool bool
ff = (mkPair false false)

ft: pair bool bool
ft = (mkPair false true)

a: bool
a = andp tt

a': bool
a' = andp ff

a'': bool
a'' = andp tf

a''': bool
a''' = andp ft

b: bool
b = orp tt

b': bool
b' = orp ff

b'': bool
b'' = orp ft

b''': bool
b''' = orp tf

c: bool
c = nandp tt

c': bool
c' = nandp ff

c'': bool
c'' = nandp tf

c''': bool
c''' = nandp ft

d: bool
d = xorp tt

d': bool
d' = xorp ff

d'': bool
d'' = xorp ft

d''': bool
d''' = xorp tf

pandp_t_t: bool
pandp_t_t = pandp true true

pandp_t_f: bool
pandp_t_f = pandp true false

pandp_f_f: bool
pandp_f_f = pandp false false

pandp_f_t: bool
pandp_f_t = pandp false true

porp_t_t: bool
porp_t_t = porp true true

porp_t_f: bool
porp_t_f = porp true false

porp_f_f: bool
porp_f_f =  porp false false

porp_f_t: bool
porp_f_t = porp false true

pxorp_t_t: bool
pxorp_t_t = pxorp true true

pxorp_t_f: bool
pxorp_t_f = pxorp true false

pxorp_f_f: bool
pxorp_f_f = pxorp false false

pxorp_f_t: bool
pxorp_f_t = pxorp false true

pnandp_t_t: bool
pnandp_t_t = pnandp true true

pnandp_t_f: bool
pnandp_t_f = pnandp true false

pnandp_f_f: bool
pnandp_f_f = pnandp false false

pnandp_f_t: bool
pnandp_f_t = pnandp false true

and_f_t: bool
and_f_t = and false true
--expect false--

and_f_f: bool
and_f_f = and false false
--expect false--

and_t_t: bool
and_t_t = and true true
--expect true--

and_t_f: bool
and_t_f = and true false
--expect false--

or_t_t: bool
or_t_t = or true true
--expect true--

or_t_f: bool
or_t_f = or true false
--expect true

or_f_f: bool
or_f_f = or false false
--expect false--

or_f_t: bool
or_f_t = or false true
--expect true--

nand_t_t: bool
nand_t_t = nand true true
--expect false--

nand_t_f: bool
nand_t_f = nand true false
--expect true--

nand_f_f: bool
nand_f_f = nand false false
--expect true--

nand_f_t: bool
nand_f_t = nand false true
--expect true--

xor_t_t: bool
xor_t_t = xor true true
--expect false--

xor_t_f: bool
xor_t_f = xor true false
--expect true--

xor_f_f: bool
xor_f_f = xor false false
--expect false--

xor_f_t: bool
xor_f_t = xor false true
--expect true--
