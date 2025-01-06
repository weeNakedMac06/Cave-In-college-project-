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
coolDownTime = 60*2

//shooting state
shootTimer = irandom(coolDownTime)
fireTime = 0;
windUpTime =30
recoverTime = 45

//set up bullet instance variable
bulletInst = noone

//bullet offsests

bulletXoff = 4

//spawn in
fadeSpd = 1/75
spawnSpeed= 0.2

//timer
timer = 0
//stand still
spawnTimer = 60*2