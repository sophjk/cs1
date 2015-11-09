module friend

import bool

||| A friend is something who is or isn't trustworthy,
||| a name, and who has an age in years

data friend = mkFriend bool String Nat

f1: friend
f1 = mkFriend true "Christie" 20

f2: friend
f2 = mkFriend true "Grace" 19

getAge: friend -> Nat
getAge (mkFriend b s n) = n

getName: friend -> String
getName (mkFriend b s n) = s

getTrust: friend -> bool
getTrust (mkFriend b s n) = b
