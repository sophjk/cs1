module dnaTest

import dna
import list
import pair

dna1: base
dna1 = complement_base A
--expect T

dna2: base
dna2 = complement_base T
--expect A

dna3: base 
dna3 = complement_base C
--expect G

dna4: base
dna4 = complement_base G
--expect C

dna5: list base
dna5 = complement_strand (A::T::C::G::nil) 
--expect (T::A::G::C::nil)

dna6: list base
dna6 = complement_strand (G::T::A::C::nil)
--expect (C::A::T::G::nil)

dna7: list base
dna7 = complement_strand (T::C::G::A::nil)
--expect (A::G::C::T::nil)

dna8: list base
dna8 = strand1 ((mkPair A T)::(mkPair T A)::(mkPair C G)::(mkPair A T)::nil)
--expect (A::T::C::A)

dna9: list base
dna9 = strand1 ((mkPair T A)::(mkPair G C)::(mkPair C G)::(mkPair A T)::nil)
--expect (T::G::C::A::nil)

dna10: list base
dna10 = strand2 ((mkPair T A)::(mkPair A T)::(mkPair C G)::(mkPair G C)::nil)
--expect (A::T::G::C::nil)

dna11: list (pair base base)
dna11 = complete (A::T::C::G::C::nil)
--expect ((mkPair A T)::(mkPair T A)::(mkPair C G)::(mkPair g
  --C)::(mkPair C G)::nil)
