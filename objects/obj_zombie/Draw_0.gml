/// @description Insert description here
// You can write your code in this editor
event_inherited()

var _healthPercent = hp / maxHp
var _hpImage = _healthPercent* (sprite_get_number(spr_enemy_health_bar)-1)


// draw health bar
draw_sprite(spr_enemy_health_bar,_hpImage,x,y-16)