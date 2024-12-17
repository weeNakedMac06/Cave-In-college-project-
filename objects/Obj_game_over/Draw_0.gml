
//get coord to draw black screen
var _camX  = camera_get_view_x(view_camera[0])
var _camW  = camera_get_view_width(view_camera[0])
var _camY  = camera_get_view_y(view_camera[0])
var _camH  = camera_get_view_height(view_camera[0])

//draw black screen
draw_set_alpha(alpha*alphaMax)
draw_rectangle_color(_camX, _camY, _camX + _camW, _camY +_camH,c_black,c_black,c_black,c_black,false)


//draw "GAME OVER"
draw_set_halign(fa_center)
draw_set_valign(fa_middle)

draw_set_font(Font1)

draw_set_color(colDarkRed)

draw_text_transformed(_camX+ _camW/2, _camY+ _camH/2-130,"GAME OVER", 3,3,0)

draw_set_color(c_white)

//draw "r to restart"

draw_text_transformed(_camX+ _camW/2, _camY+ _camH/2-75,"- PRESS R TO RESTART -", 1,1,0)

//draw "score"

//draw_set_color(colGold)


//draw_text_transformed(_camX+ _camW/2, _camY+ _camH/2-0,"SCORE:"+string(global.score) , 1,1,0)

draw_set_color(c_white)
draw_set_alpha(1)