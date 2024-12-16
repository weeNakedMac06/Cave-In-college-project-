/// @description Insert description here
// You can write your code in this editor
event_inherited()
if instance_exists(obj_player){dir = point_direction(x,y,obj_player.x,obj_player.y)}
spd = 2
xspd = 0
yspd = 0

//state controll
state = 0

// 0 = not moving, 1= shooting

// clean up
destroy = false
playerDestroy = true


