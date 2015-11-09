module people

import person
import bool
import nat
import list

-- An example value of type Person
tom: Person
tom = mkPerson "Tommy" 23 true 72

mary: Person
mary = mkPerson "Mary" 25 false 60

ge: Person
ge = mkPerson "Ge" 21 true 64

daryl: Person
daryl = mkPerson "Daryl" 19 true 71

people: list Person
people= (tom::daryl::ge::mary::nil)

women: list Person
women = filter gender people

