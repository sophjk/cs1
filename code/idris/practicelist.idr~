module list_natPractice

import nat
import pair

data list_nat = nil| cons nat list_nat

append: pair list_nat list_nat -> list_nat
append (mkPair nil n) = n
append (mkPair n nil) = n
append (mkPair (cons n m) (cons s k)) = cons n (append (mkPair cons m (cons s k)))
