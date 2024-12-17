//inputs
rKey = global.rKey

//fade in 
alpha += alphaSpd
alpha = clamp(alpha,0,1)

if rKey and alpha >= 1
{
	
room_restart()	
	
}
