module boolDays

import days
import bool
import pair

data pair = mkPair bool days

p1: pair days bool
p1 = mkPair Monday true
