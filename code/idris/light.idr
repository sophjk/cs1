module boombox

data mode = pause|play

press: mode -> mode
press play = play
press pause = pause
