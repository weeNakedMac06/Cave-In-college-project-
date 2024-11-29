// drawing player weapom

function draw_my_weapon()
{
	
		// get weapom off player
	var _xOffset = lengthdir_x(weaponOffset,aimDir )
	var _yOffset = lengthdir_y(weaponOffset,aimDir )
	
	
	
	
	// flip weapon
	var _weaponYscale = 1 

	if aimDir > 90 and aimDir < 270{_weaponYscale = -1}


draw_sprite_ext(weapon.sprite,0,x + _xOffset,centerY + _yOffset+ 10,1,_weaponYscale,aimDir,c_white,1)
	
	
	
}

function get_damaged_create(_hp = 10)
{	
	hp = _hp;

	damageList = ds_list_create();	
}

function get_damaged(_damageObject)
{
	if place_meeting(x,y,_damageObject) 
	{				
		// getting multiple
		var _instList = ds_list_create();
	
		instance_place_list(x,y,_damageObject,_instList,false);
	
		var _listSize = ds_list_size(_instList)
	
		for(var i = 0; i< _listSize; i++  )
		{
			var _inst = ds_list_find_value(_instList,i)
		
			// check if instance already in dmg list
		
			if ds_list_find_index(damageList, _inst) == -1
				{
					// add the new damage insrance to dmg list
		 
					ds_list_add(damageList,_inst)		 				
		
					// take damage
					hp -= _inst.damage
		
					// tell damage to destroy itself
					_inst.hitConfirm = true		
				 }
	
			
		}
		ds_list_destroy(_instList)
	}

	// clear damgelist of obj if not exist or touching enemy obj
		var _dmgListSize = ds_list_size(damageList);
		for( var i = 0; i< _dmgListSize; i++)
		{
			// if were not touching damage instances remove and set loop to 1
			var _inst = ds_list_find_value(damageList,i);
			if !instance_exists(_inst) or !place_meeting(x,y,_inst)
				{				
					ds_list_delete(damageList,i);
					i--;
					_dmgListSize--;
				}	
		}

}

function damage_clean_up()
{
	ds_list_destroy(damageList);
}