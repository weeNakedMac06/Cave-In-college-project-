//get cam inputs
var _camX  = camera_get_view_x(view_camera[0])
var _camY  = camera_get_view_y(view_camera[0])

//draw player hp
draw_sprite(Spr_player_health,0,_camX+8,_camY+8)

for (var i  =0 ; i< playerHpMax; i++ ;)
{
	var _img = 1
	if i+1 <=playerHp{_img = 2}
	
	
	
	var _sep = 12
	
	draw_sprite(Spr_player_health,_img,_camX+8 +_sep*i,_camY+8)
	
	
}