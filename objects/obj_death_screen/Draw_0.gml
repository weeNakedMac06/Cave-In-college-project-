var _camX = camera_get_view_x(view_camera[0])
var _camY = camera_get_view_y(view_camera[0])
var _camW = camera_get_view_width(view_camera[0])
var _camH = camera_get_view_height(view_camera[0])

draw_set_alpha(alpha*alphaMax)
draw_rectangle_color(_camX, _camY,_camX+_camW,_camY + _camH,c_black,c_black,c_black,c_black, false)
draw_set_alpha(1)

draw_set_valign(fa_center)
draw_set_halign(fa_middle)
draw_set_alpha(alpha)
draw_set_font(Font_game_over)
draw_set_color(c_red)

//offset
var _offset = 64

//gameover
draw_text_transformed(_camX + _camW/2, _camY + _camH/2,"GAME OVER",5,5,0 )

//r to restart
draw_set_color(c_white)
draw_text_transformed(_camX + _camW/2, _camY + _camH/2 +_offset,"- PRESS R TO RESTART -",2,2,0 )

//reset values
draw_set_alpha(1)
draw_set_valign(fa_left)
draw_set_halign(fa_middle)