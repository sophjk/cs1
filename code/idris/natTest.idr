module natTest

import nat
import bool
import pair

a: nat
a = exp (mkPair (S (S O)) (S (S (S O))))

a': nat
a' = exp (mkPair (S (S O)) O)

a'': nat
a'' = exp (mkPair O O)

b: bool
b = lep (mkPair (S (S O)) (S (S (S O))))

b': bool
b' = lep (mkPair (S (S O)) (S (S O)))

b'': bool
b'' = lep (mkPair (S (S (S O))) (S O))

c: bool
c = eqp (mkPair (S (S O)) (S O))

c': bool
c' = eqp (mkPair (S (S (S O))) (S (S (S O))))

c'': bool
c'' = eqp (mkPair (S O) (S (S (S O))))

d: bool
d = gtp (mkPair (S (S O)) (S O))

d': bool
d' = gtp (mkPair (S (S O)) (S (S O)))

d'': bool
d'' = gtp (mkPair (S O) (S (S (S O))))

e: bool
e= gep (mkPair (S (S O)) (S (S O)))

e': bool
e' = gep (mkPair (S O) O)

e'': bool
e'' = gep (mkPair (S (S O)) (S (S (S O))))

f: bool
f = ltp (mkPair (S (S O)) (S O))

f': bool
f' = ltp (mkPair (S O) (S (S (S O))))

f'': bool
f'' = ltp (mkPair (S O) (S O))


-- zero
z: nat
z = O

-- one
o: nat
o = S O

-- two
t: nat
t = S (S O)

-- three
r: nat
r = S t

j: nat
j = S r

-- five
k: nat
k = S j

--six
l: nat
l = S k

--seven
i:  nat
i = S l

x: bool
x = isZero r

add03: nat
add03 = addp O (S (S (S O)))
--expect three--

add87: nat
add87 = addp (S (S (S (S (S (S (S (S O)))))))) (S (S (S (S (S (S (S O)))))))
--expect 15--

add30: nat
add30 = addp (S (S (S O))) O
--expect three--

mult03: nat
mult03 = multp O (S (S (S O)))
--expect zero--

mult30: nat
mult30 = multp (S (S (S O))) O
--expect zero--

mult23: nat
mult23 = multp (S (S O)) (S (S (S O)))
--expect six--

fact0: nat
fact0 = factp O 
--expect one--

fact3: nat
fact3 = factp (S (S (S O)))
--expect six--

sub03: nat
sub03 = subp O (S (S (S O)))
--expect O--

sub50: nat
sub50 = subp (S (S (S (S (S O))))) O
--expect five--

sub53: nat
sub53 = subp (S (S (S (S (S O))))) (S (S (S O)))
--expect two--

exp05: nat
exp05 = exp O (S (S (S (S (S O)))))
--expect zero--

exp50: nat
exp50 = exp (S (S (S (S (S O))))) O
--expect one--

exp23: nat
exp23 = exp (S (S O)) (S (S (S O)))
--expect 8--

lep00: bool
lep00 = lep O O 
--expect false-- 

lep01: bool
lep01 = lep O (S O)
--expect true

lep10: bool
lep10 = lep (S O) O
--expect false

lep11: bool
lep11 = lep (S O) (S O)
--expect false--

eqp00: bool
eqp00 = eqp O O 
--expect true--

eqp01: bool
eqp01 = eqp O (S O)
--expect false--

eqp10: bool
eqp10 = eqp (S O) O
--expect false--

eqp11: bool
eqp11 = eqp (S O) (S O)
--expect true--

eqp32: bool
eqp32 = eqp (S (S (S O))) (S (S O))
--expect false--

eqp23: bool
eqp23 = eqp (S (S O)) (S (S (S O)))
--expect false--

gtp00: bool
gtp00 = gtp O O 
--expect false--

gtp10: bool
gtp10 = gtp (S O) O
--expect true--

gtp01: bool
gtp01 = gtp O (S O)
--expect false--

gtp11: bool
gtp11 = gtp (S O) (S O)
--expect false--

gtp23: bool
gtp23 = gtp (S (S O)) (S (S (S O)))
--expect false--

gtp32: bool
gtp32 = gtp (S (S (S O))) (S (S O))
--expect true--

gep00: bool
gep00 = gep O O 
--expect true--

gep10: bool
gep10 = gep (S O) O
--expect true--

gep01: bool
gep01 = gep O (S O)
--expect false--

gep11: bool
gep11 = gep (S O) (S O)
--expect true--

gep23: bool
gep23 = gep (S (S O)) (S (S (S O)))
--expect false--

gep32: bool
gep32 = gep (S (S (S O))) (S (S O))
--expect true--

ltp00: bool
ltp00 = ltp O O 
--expect false--

ltp01: bool
ltp01 = ltp O (S O)
--expect true--

ltp10: bool
ltp10 = ltp (S O) O
--expect false--

ltp11: bool
ltp11 = ltp (S O) (S O)
--expect false--

ltp23: bool
ltp23 = ltp (S (S O)) (S (S (S O)))
--expect true--

ltp32: bool
ltp32 = ltp (S (S (S O))) (S (S O))
--expect false-- 

fib0: nat
fib0 = fib O 
--expect 0--

fib1: nat
fib1 = fib (S O)
--expect one--

fib2: nat
fib2 = fib (S (S O))
  --expect one--

fib3: nat
fib3 = fib (S (S (S O)))
--expect two--

fib4: nat
fib4 = fib (S (S (S (S O))))
--expect 3--
