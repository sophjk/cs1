module unit

import bool
import eq
import Serialize 

data unit = mkUnit

unit_id: unit -> unit
unit_id mkUnit = mkUnit

eql_unit: unit -> unit -> bool
eql_unit a1 a2 = true

instance eq unit where
  eql b1 b2 = true

instance Serialize unit where 
  toString u = "()"
