module BallPlayer

import bool
import list

||| A record type that is equivalent to
||| data BallPlayer = mkBallPlayer String String String Nat Nat Nat, where we give names to fields.
||| A NBA player has a name, team, position, whether they are an NBA All-Star or not, as well as statistics on average points per game (pts), average assists per game (ast), and average rebounds per game(reb).
||| All statistics are rounded to the nearest natural number.

record BallPlayer where
       constructor mkBallPlayer
       name : String
       team : String
       position : String
       allstar : bool
       pts : Nat
       ast : Nat
       reb : Nat

