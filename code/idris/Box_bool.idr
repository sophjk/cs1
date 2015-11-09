module Box

import bool

data Box = mkBox unit

b1: Box
b1 = mkBox mkUnit

b2: Box
b2 = (mkBox false)

unbox: Box -> unit
unbox _ = mkUnit

