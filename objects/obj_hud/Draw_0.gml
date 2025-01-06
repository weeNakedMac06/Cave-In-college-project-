//get cam inputs
var _camX  = camera_get_view_x(view_camera[0])
var _camY  = camera_get_view_y(view_camera[0])


//draw player hp
draw_sprite(Spr_player_health,0,_camX+8,_camY+8)

if instance_exists(obj_player)	

{	
	for (var i  =0 ; i< playerHpMax; i++ ;)
	{
		var _img = 1
		if i+1 <=playerHp{_img = 2}
	
	
	
		var _sep = 12
	
		draw_sprite(Spr_player_health,_img,_camX+8 +_sep*i,_camY+8)
	
	
	}


}

var _killCount = "KILL COUNT:" + string(global.killCount)
draw_set_alpha(1)
draw_set_font(Font1)

//draw_text_transformed(_camX+64,_camY+8,_killCount,.5,.5,0)

//draw_sprite(Spr_kill_counter,0,_camX+48,_camY+68)


var _PlayerWeapons = global.PlayerWeapons

weapon = _PlayerWeapons


draw_sprite(spr_ammo,0,_camX+16,_camY+70)



