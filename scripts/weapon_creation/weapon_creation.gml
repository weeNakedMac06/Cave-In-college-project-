// constructor template for weapons

function create_weapon(_sprite = Spr_wand,_length = 0,_bulletObj = obj_player_bullet,_cooldown = 1, _numBullets = 1, _bulletSpread = 0,_ammoCount= 0, _maxAmmo = 0, _reloadCoolDown = 0, _timeToReload = 0) constructor
{	
	sprite = _sprite;
	legnth = _length;
	bulletObj = _bulletObj;
	cooldown = _cooldown;
	bulletNum = _numBullets;
	spread = _bulletSpread;
	ammoCount = _ammoCount
	maxAmmo = _maxAmmo
	reloadCoolDown = _reloadCoolDown
	timeToReload = _timeToReload
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
	5.5,//cooldown
	1,//number of bullets
	0,//spread
	45,//ammo
	45,//max ammo
	60*5.7,//reload countdown
	60*3// time to reload
	),
	
	
	
	gunShotgun : new create_weapon
	(
	Spr_shotgun,
	sprite_get_bbox_bottom(Spr_shotgun),
	obj_player_bullet_shotgun,
	70,
	3,
	45,
	4,
	4,
	5*60,
	4*60
	),
	
	
	
	
	
}