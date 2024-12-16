/// @description Insert description here
// You can write your code in this editor
event_inherited()

var _healthPercent = hp/ maxHp
var _hpImage = _healthPercent * (sprite_get_number(Spr_enemy_health) -1 )
draw_sprite(Spr_enemy_health, _hpImage, x+1, y-17)




