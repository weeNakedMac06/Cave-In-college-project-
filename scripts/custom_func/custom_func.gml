// drawing player weapom

function draw_my_weapon( )
{
	
		// get weapom off player
	var _xOffset = lengthdir_x(weaponOffset,aimDir )
	var _yOffset = lengthdir_y(weaponOffset,aimDir )
	
	
	
	
	// flip weapon
	var _weaponYscale = 1 

	if aimDir > 90 and aimDir < 270{_weaponYscale = -1}


draw_sprite_ext(weapon.sprite,0,x + _xOffset,centerY + _yOffset,1,_weaponYscale,aimDir,c_white,1)
	
	
	
}

function get_damaged(_damageObj, _iframes = false)
{
	if _iframes = true and iframeTimer > 0
	{
		
		iframeTimer--
		
		if iframeTimer mod 5 == 0
		{
			if image_alpha == 1
			{
				image_alpha = 0
			} else {
			
				image_alpha = 1
			}
		}
		exit
		
	}
	
	if _iframes = true {image_alpha = 1}
	
	
	if place_meeting(x,y,_damageObj)
	{
		var _instList = ds_list_create();

		instance_place_list(x, y, _damageObj,_instList,false)

		var _listSize = ds_list_size(_instList)
	
		var _hitConfirmed = false
		for(var i = 0; i < _listSize; i++)
		{
		
			var _inst = ds_list_find_value(_instList, i)
		
		
			if _iframes == true or ds_list_find_index(damageList, _inst) == -1
			{
				if _iframes == false
				{
					ds_list_add(damageList, _inst)
				}
				hp -= _inst.damage
				_hitConfirmed = true
				_inst.hitConfirm = true
				
			}
	
		}
	if _iframes = true and _hitConfirmed = true
	{
		iframeTimer = iframeNumber
		
	}
	ds_list_destroy(_instList)

	}

	if _iframes == false
	{
		var _damageListSize = ds_list_size(damageList)

		for( var i = 0; i< _damageListSize; i++)
		{
	
			var _inst = ds_list_find_value(damageList, i)
			if !instance_exists(_inst) or !place_meeting(x,y,_inst)
			{
				ds_list_delete(damageList, i)
				i --;
				_damageListSize --;
		
			}
	
		}
	}
	
	
	
	
	
	
	
	
	
}

function get_damaged_create(_hp, _iframes = false)
{
	
	maxHp = _hp
	hp = _hp

	if _iframes == true
	{
		iframeTimer = 0
		iframeNumber = 90
	
	}
	if _iframes == false
	{
		damageList = ds_list_create();	
	}
}

function get_damaged_clean()
{
	
	ds_list_destroy(damageList)
	
}