event_inherited()

spd = 0
chaseSpd =0.5
dir = 0
xspd =0
yspd=0

// sprite controll
face = 1

hp = 15
maxHp = 15
//state
state = 0

//chase state
coolDownTime = 60*4

//shooting state
shootTimer = irandom(coolDownTime)
windUpTime =60
recoverTime = 45

//set up bullet instance variable
bulletInst = noone

//bullet offsests

bulletXoff = 4
