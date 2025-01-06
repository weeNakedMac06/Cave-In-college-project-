
event_inherited()


#region// variables for speed and direction
dir = 0 
spd = 5.5
xSpd = 0
ySpd = 0
direction = point_direction(x,y,mouse_x, mouse_y)
image_angle = direction
#endregion
#region// variables for clean up

maxDist = 750;
destroy= false;
enemyDestroy = true

#endregion

#region // damage
damage = 1

//elemental
type = 1

fireTic = 0.5
fireTime = 60*5
IceSpeed = .2
stunTimer = 60*3
timer= 0

#endregion
