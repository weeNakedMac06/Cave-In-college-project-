#region// variables for movement
	moveDir = 0;
	moveSpd = 3;
	xSpd= 0;
	ySpd = 0;
	
// variables 
	dashing = false
	dashSpd = 300

	dashTimer = 0 
	dashTime= 20
	
	dashCoolDown = 40
	dashTime2 = 0


	
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
	array_push(global.PlayerWeapons, global.WeaponList.gunAr)
	array_push(global.PlayerWeapons, global.WeaponList.gunPistol)
	array_push(global.PlayerWeapons, global.WeaponList.gunShotgun)

weapon = global.PlayerWeapons[0]

selectedWeapon = 0



#endregion
