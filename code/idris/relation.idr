module relation

import list
import bool
import pair

query2: (list tuple) -> (tuple -> bool) -> (tuple -> value) -> (value -> value -> value) -> value -> value
query2 relation select project reduce id = list.foldr reduce id (map project (filter select relation))

