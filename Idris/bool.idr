module bool

data bool = true|false

not: bool -> bool
not false = true
not true = false

constTrue: bool -> bool
constTrue true = true
constTrue false = true

constFalse: bool -> bool
constFalse true = false
constFalse false = false

id: bool -> bool
id false = false
id true = true
