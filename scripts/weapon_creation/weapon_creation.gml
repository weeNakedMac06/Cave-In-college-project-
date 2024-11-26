// constructor template for weapons

function create_weapon(_sprite = Spr_wand,_length = 0,_bulletObj = obj_player_bullet,_cooldown = 1, _numBullets = 1, _bulletSpread = 0) constructor
{	
	sprite = _sprite;
	legnth = _length;
	bulletObj = _bulletObj;
	cooldown = _cooldown;
	bulletNum = _numBullets;
	spread = _bulletSpread;	
}


// player weapon inv

global.PlayerWeapons = array_create(0);


// weapons 

global.WeaponList = {
	
	gunAr : new create_weapon
	(
	Spr_wand,//sprite
	sprite_get_bbox_right(Spr_wand),//hitbox
	obj_player_bullet,// bullet sprite
	10,//cooldown
	1,//number of bullets
	0//spread
	),
	
	gunPistol : new create_weapon
	(
	Spr_pistol,
	sprite_get_bbox_right(Spr_pistol),
	obj_player_bullet_pistol,
	25,
	1,
	0
	),
	
	gunShotgun : new create_weapon
	(
	Spr_shotgun,
	sprite_get_bbox_bottom(Spr_shotgun),
	obj_player_bullet_shotgun,
	45,
	5,
	45			
	),
	
	
}