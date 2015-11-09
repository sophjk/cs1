module listTest

import nat
import list
import bool
import eq

lengthO: nat
lengthO = length (O::nil)
--expect one--

length1: nat
length1 = length (true::nil)
--expect one--

length2: nat
length2 = length nil {a = nat}

length4: list bool
length4 = append (false::false::nil) (true::true::true::nil)

length5: list nat
length5 = append (O::(S O)::nil) ((S (S O))::(S (S (S O)))::nil)

map2: list bool
map2 = map evenb (O::(S O)::(S (S O))::(S (S (S (S O))))::nil)

filter1: list nat
filter1 = filter evenb (O::(S O)::(S (S O))::(S (S (S (S O))))::nil)

list1: list nat
list1 = (O::(S O)::nil)

list2: list nat
list2 = (O::(S O)::(S (S O))::nil)

list3: list nat
list3 = (O::(S O)::(S O)::nil)

list4: list nat
list4 = (O::O::O::(S (S (S O)))::(S (S O))::nil)

list5: list bool
list5 = (true::false::true::true::nil)

list6: list bool
list6 = (false::false::false::nil)

list7: list bool
list7 = (true::true::true::nil)

list8: list bool
list8 = (false::true::false::false::nil)

list9: list bool
list9= (true::false::nil)

list10: list bool
list10 = (true::true::false::nil)
