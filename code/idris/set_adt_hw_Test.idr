import set_adt_hw
import bool
import list
import set
import option
import nat
import Serialize
import eq
import pair

emptyNil: bool
emptyNil = isEmpty (mkSet nil) {a = nat}
--expect true

emptyList: bool
emptyList = isEmpty (mkSet (O::(S O)::nil))
--expect false

insert0: set_spec.set nat
insert0 = set_insert O (mkSet ((S O)::nil))
--expect (mkSet (O::(S O)::nil))

insert1: set_spec.set bool
insert1 = set_insert false (mkSet (false::true::nil))
--expect (mkSet (false::true::nil))

remove0 : set_spec.set nat
remove0 = set_remove (O) (mkSet ((S (S O))::(S O)::nil))
--expect (mkSet ((S (S O))::(S O)::nil))

remove1 : set_spec.set nat
remove1 = set_remove (O) (mkSet (O::(S O)::nil))
--expect (mkSet ((S O)::nil))

remove2: set_spec.set bool
remove2 = set_remove (false) (mkSet (false::true::nil))
--expect (mkSet (true::nil))

countset: nat
countset = set_cardinality (mkSet (O::(S (S O))::(S O)::nil))
--expect 3

countset2: nat
countset2 = set_cardinality (mkSet (nil)) {a = nat}
--expect 0

countset3: nat
countset3 = set_cardinality (mkSet (true::false::nil))
--expect (S (S O))

member1: bool
member1 = set_member true (mkSet (true::false::nil))
--expect true

member2: bool
member2 = set_member true (mkSet (false::nil))
--expect false

member3: bool
member3 = set_member true (mkSet nil) {a = bool}
--expect false

member4: bool
member4 = set_member O (mkSet ((S (S O))::(S O)::nil))
--expect false

union1: set_spec.set nat
union1 = set_union (mkSet (O::(S (S O))::(S O)::nil)) (mkSet (O::(S O)::nil))
--expect (mkSet ((S (S O))::O::(S O)::nil))

union2: set_spec.set bool
union2 = set_union (mkSet (false::true::false::nil)) (mkSet (false::true::nil))
--expect (mkSet (false::true::nil))

union4: set_spec.set nat
union4 = set_union (mkSet nil) (mkSet (O::(S (S O))::nil))
--expect (mkSet (O::(S (S O))::nil))

union3: set_spec.set bool
union3 = set_union (mkSet (false::false::false::nil)) (mkSet (false::false::nil))
--expect (mkSet (false::nil))

intersect1: set_spec.set nat
intersect1 = set_intersection (mkSet ((S O)::O::(S (S O))::nil)) (mkSet (O::(S O)::nil))
--expect (mkSet (S O)::O::nil))
 
intersect2: set_spec.set bool
intersect2 = set_intersection (mkSet (false::false::nil)) (mkSet (true::nil))
--expect (mkSet nil)

intersect3: set_spec.set bool
intersect3 = set_intersection (mkSet (false::true::nil)) (mkSet (true::nil))
--expect (mkSet (true::nil))

intersect4: set_spec.set bool
intersect4 = set_intersection (mkSet (false::true::nil)) (mkSet (false::true::nil))
--expcet (mkSet (false::true::nil))

difference1: set_spec.set nat
difference1 = set_difference (mkSet ((S O)::O::nil)) (mkSet (O::nil))
--expect (mkSet ((S O)::nil))

difference2: set_spec.set bool
difference2 = set_difference (mkSet (true::true::nil)) (mkSet (false::true::nil))
--expect (mkSet (true:::nil))

difference3: set_spec.set nat
difference3 = set_difference (mkSet (O::(S (S O))::(S O)::nil)) (mkSet ((S O)::(S (S O))::O::nil))
--expect (mkSet nil)

forall1: bool
forall1 = set_forall evenb (mkSet (O::(S (S O))::nil))
--exoect true

forall2: bool
forall2 = set_forall evenb (mkSet ((S O)::O::(S (S O))::nil))
--expect false

forall3: bool
forall3 = set_forall isZero (mkSet (O::(S (S O))::nil))
--expect false

forall4: bool
forall4 = set_forall oddb (mkSet ((S O)::(S (S (S O)))::(S (S (S (S (S O)))))::nil))
--expect true

exists1: bool
exists1 = set_exists evenb (mkSet (O::(S O)::nil))
--expect true

exists2: bool
exists2 = set_exists evenb (mkSet ((S O)::(S (S (S O)))::nil))
--expect false

exists3: bool
exists3 = set_exists isZero (mkSet ((S O)::O::(S (S O))::nil))
--expect true

exists4: bool
exists4 = set_exists isZero (mkSet ((S O)::(S (S O))::nil))
--expect false

witness1: option nat
witness1= set_witness evenb (mkSet (O::(S (S O))::nil))
--expect some O

witness2: option nat
witness2 = set_witness evenb (mkSet ((S O)::(S (S (S O)))::nil))
--expect none

witness3: option nat
witness3 = set_witness isZero (mkSet (O::(S (S O))::nil))
---expect some O

witness4: option nat
witness4 = set_witness oddb (mkSet (O::(S O)::(S (S O))::nil))
--expect some (S O)

product1: set_spec.set (pair nat bool)
product1 = set_product (mkSet (O::(S O)::nil)) (mkSet (false::true::nil))
--expect mkSet (mkPair O false::mkPair O true:: mkPair (S O) false::
  --mkPair (S O) true:: nil)
  
  
product2: set_spec.set (pair bool bool)
product2 = set_product (mkSet (true::false::nil)) (mkSet (false::true::nil))
--expect mkSet (mkPair true false::mkPair true true::mkPair false
  --false:: mkPair false true::nil)

seteql1: bool
seteql1 = set_eql (mkSet (O::(S O)::nil)) (mkSet ((S O)::(S (S O))::nil))
--expect false

seteql2: bool
seteql2 = set_eql (mkSet (O::(S (S O))::(S (S (S O)))::nil)) (mkSet ((S (S O))::O::(S (S (S O)))::nil))
--expect true

seteql3: bool
seteql3 = set_eql (mkSet (false::true::nil)) (mkSet (true::false::nil))
--expect true

seteql4: bool
seteql4 = set_eql (mkSet nil) (mkSet nil) {a=nat}
--expect true

seteql5: bool
seteql5 = set_eql (mkSet nil) (mkSet (O::nil))
--expect false


setString1: String
setString1 = set_toString (mkSet (false::true::nil))
--expect {False, True}

setString2: String
setString2 = set_toString (mkSet (O::(S O)::(S (S (S O)))::(S (S O))::nil))
--expect {Z,sZ, sssZ,ssZ}

setString3: String
setString3 = set_toString (mkSet nil) {a = bool}
