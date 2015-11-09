module TrafficLight

data TrafficLight = red | green | amber

changeColor: TrafficLight -> TrafficLight
changeColor red = green
changeColor green = amber
changeColor amber = red
