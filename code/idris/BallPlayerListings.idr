module BallPlayerListings

import bool
import BallPlayer
import list
import relation
import pair
import relationTest

bb: BallPlayer
bb = mkBallPlayer "BradleyBeal" "WashingtonWizards" "Guard" false 15 3 4

jw: BallPlayer
jw = mkBallPlayer "JohnWall " "WashingtonWizards " "Guard " true 18 10 5 

op: BallPlayer
op = mkBallPlayer "OttoPorter " "WashingtonWizards " "Forward " false 6 1 3

sc: BallPlayer
sc = mkBallPlayer "StephCurry " "GoldenStateWarriors " "Guard " true 24 8 4

kt: BallPlayer
kt = mkBallPlayer "KlayThompson " "GoldenStateWarriors " "Guard " true 22 3 3 

ai: BallPlayer
ai = mkBallPlayer "AndreIguodala " "GoldenStateWarriors " "Forward" false 8 3 3 

|||List of Washington Wizards Players
WashingtonPlayers: list BallPlayer
WashingtonPlayers = bb::jw::op::nil

|||List of Golden State Warriros players
GSPlayers: list BallPlayer
GSPlayers = sc::kt::ai::nil

|||List of all NBA players in my system
Players: list BallPlayer
Players = bb::jw::op::sc::kt::ai::nil

|||List all Guards|||
Guards: list BallPlayer
Guards = bb::jw::op::sc::nil

|||List all Fowards
Forwards: list BallPlayer
Forwards = ai::kt::nil

|||List of names of all NBA players in system
nba: list String
nba = map name (jw::bb::op::sc::kt::ai::nil)
--expect "JohnWall" :: "BradleyBeal" :: "OttoPorter" :: "StephenCurry"
  --:: "KlayThompson" :: "AndreIguodala" :: nil-

|||List of positions of all NBA players in system
NbaPositions: list String
NbaPositions = map position (jw::bb::op::sc::kt::ai::nil)
--expect "Guard" :: "Guard" : "Forward" :: "Guard" :: "Forward" :: nil

|||List of average assists per game of all NBA players in the system
AvgAssists: list Nat
AvgAssists = map ast (jw::bb::op::sc::kt::ai::nil)
--expect  10 :: 3 :: 1 :: 8 :: 3 :: 3 :: nil

|||List of each NBA players' team in the system
Teams: list String
Teams = map team (jw::bb::op::sc::kt::ai::nil)
--expect "WashingtonWizards" :: "WashingtonWizards" ::
  --"WashingtonWizards" :: "GoldenStateWarriors" ::
    --"GoldenStateWarriors" ::"GoldenStateWarriors" :: nil

|||List of average points per game of each NBA player in the system
AvgPoints: list Nat
AvgPoints = map pts (jw::bb::op::sc::kt::ai::nil)
--expect 18::15::6::24::22::8::nil

|||List determining NBA players who is an All-Star within the system
Allstars: list bool
Allstars = map allstar (jw::bb::op::sc::kt::ai::nil)
--expect true::false::false::true::true::false::nil

|||List of average rebounds per game for each NBA player in the system
AvgReboundsPerPlayer: list Nat
AvgReboundsPerPlayer = map reb (jw::bb::op::sc::kt::ai::nil)
---expect 5::4::3::4::3::3::nil

listRebound0: list Nat
listRebound0 = map reb (nil)
--expect nil

listAllstar0: list bool
listAllstar0 = map allstar (nil)
--expect nil

listPoint0: list Nat
listPoint0 = map pts (nil)
--expect nil

listTeam0: list String
listTeam0 = map team (nil)
--expect nil

listName0: list String
listName0 = map name (nil)
--expect nil

listPosition0: list String
listPosition0 = map position (nil)
--expect nil

listAssist0: list Nat
listAssist0 = map ast (nil)
--expect nil


listofNames: list String
listofNames = map name (sc::jw::nil)

AllStarNames: String
AllStarNames = query2 Players allstar name (++) ""
--String of Players who are allstars

GSAllStars: String
GSAllStars = query2 GSPlayers allstar name (++) ""

WashingtonAllStars: String
WashingtonAllStars = query2 WashingtonPlayers allstar name (++) ""

TeamsofAllStars: String
TeamsofAllStars = query2 Players allstar team (++) ""

HowManyAllStars: Nat
HowManyAllStars = count_rel Players allstar
--How many players are allstars

SumAllstarPoints: Nat
SumAllstarPoints = sum_rel Players allstar pts
--sum of average points per game for all all star players

AvgAllStarPts: pair Nat Nat
AvgAllStarPts = ave_rel Players allstar pts

AvgWashAllStarPts: pair Nat Nat
AvgWashAllStarPts = ave_rel WashingtonPlayers allstar pts

AvgGSAllStarPts: pair Nat Nat
AvgGSAllStarPts = ave_rel GSPlayers allstar pts

AvgForwardPts: pair Nat Nat
AvgForwardPts = ave_rel Forwards allstar pts

AvgGuardPts: pair Nat Nat
AvgGuardPts = ave_rel Guards allstar pts
