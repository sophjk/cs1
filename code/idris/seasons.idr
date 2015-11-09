module seasons

data month = january|february|march|april|may|june|july|august|september|november|december
data seasons = winter|spring|summer|fall
data hemisphere = north|south

weather: month -> seasons
weather january = winter
weather february = winter
weather march = winter
weather april = spring
weather may = spring
weather june = spring
weather july = summer
weather august = summer
weather september = summer
weather _ = fall

flipSeason: seasons -> seasons
flipSeason winter = summer
flipSeason spring = fall
flipSeason summer = winter
flipSeason fall = spring

getSeason: hemisphere -> month -> seasons
getSeason north m = weather m
getSeason south m = flipSeason (weather m)
