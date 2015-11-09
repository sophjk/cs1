module fooTest

import foo
import nat
import bool
import list

foo1: String
foo1= fancy (++) "" ("Hello"::"World"::"!"::nil)
--expect "HelloWorld!"
--the id of String is ""

foo2: nat
foo2 = fancy mult (S O) ((S O)::(S (S O))::(S (S O))::nil)
--expect (S (S (S (S O)))) (4)
--id of mult is (S O)

foo3: nat
foo3 = fancy add O ((S (S O))::(S O)::O::nil)
--expect (S (S (S O))) (3)
--id of add is O
