module person

import bool

||| A record type that is equivalent to:
||| (data Person = mkPerson String nat)
||| but where we give names to fields.
||| A person has a name and an age in
||| years.
record Person where
    constructor mkPerson
    name : String
    age : Nat
    gender : bool
    height : Nat --in inches--
