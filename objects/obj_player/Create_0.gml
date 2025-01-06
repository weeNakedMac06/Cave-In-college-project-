//damage
get_damaged_create(1, true)



#region// variables for movement
	moveDir = 0;
	moveSpd = 3;
	xSpd= 0;
	ySpd = 0;
	
// variables  for dash
	dash_speed = 12
	dash_duration = 0.3
	is_dashing = false
	dash_timer = 0


	
#endregion
#region// variables guns
	bullet_cooldown = 20
#endregion
#region//health variables
	
#endregion
#region// sprite controll
	aimDir = 0
	centerY = y // set in step event

	weaponOffset = 4



	sprite[0] = Spr_player_right
	sprite[1]= Spr_player_up
	sprite[2]=Spr_player_left
	sprite[3] = Spr_player_down

	face = 3
#endregion
#region // weapon info


// shoot timer
shootTimer = 0



// weapon inv
	//add weapons
	array_push(global.PlayerWeapons, global.WeaponList.gunAr,global.WeaponList.gunShotgun)
	
	

weapon = global.PlayerWeapons[0]

selectedWeapon = 0



#endregion
face2 = 0

//score

//upgrades
upgNo = 0

// reload
reloadTimer = 0
TimerToReload =0 // controlls the time it takes to reload once button is pressed
