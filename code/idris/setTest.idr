module setTest

import set
import nat
import eq
import list
import bool
import listTest

s0: set nat
s0 = new_set

s1: set nat
s1 = set_insert (S O) s0

s2: set nat
s2 = set_insert (S O) s1
--this is not ok, because it gives you back (1::1::nil) even though it
  --should be (1::ni)

set1: set nat
set1 = mkSet list1

set2: set nat
set2 = mkSet list2

set3: set nat
set3 = mkSet list3

set4: set nat
set4 = mkSet list4

set5: set bool
set5 = mkSet list5

set6: set bool
set6 = mkSet list6

set7: set bool
set7 = mkSet list7

set8: set bool
set8 = mkSet list8

set9: set bool
set9 = mkSet list9

set10: set bool
set10= mkSet list10

eql1: bool
eql1 = eql set9 set10
--expect true

eql2: bool
eql2 = eql (mkSet (O::O::(S O)::nil)) (mkSet ((S O)::O::nil))
--expect true

eql3: bool
eql3 = eql (mkSet (true::false::false::nil)) (mkSet (false::true::true::nil))
--expect true

eql4: bool
eql4 = eql (mkSet (true::true::nil)) (mkSet (false::false::nil))
--expect false

eql5: bool
eql5 = eql (mkSet (true::nil)) (mkSet nil)
--expect false

eql6: bool
eql6 = eql (mkSet (true::true::nil)) (mkSet (true::nil))
--expect true


eql7: bool
eql7 = eql (mkSet list2) (mkSet list3)
--expect false
