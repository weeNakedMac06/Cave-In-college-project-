restartKey = global.rKey

//fade in
alpha += alphaSpd
alpha = clamp(alpha,0,1)


//restart
if restartKey and alpha >=1
{
	room_restart()
	
	
}
