import bool
import eq
import nat

b: bool
b = (eql true true)

b2: bool
b2 = (eql true false)

n1: bool
n1 = (eql (S O) (S (S O)))

n2: bool
n2 = (eql O O)

u1: boo
u1 = (eql mkUnit box
