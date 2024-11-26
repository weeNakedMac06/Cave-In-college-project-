//recieve damage
if place_meeting(x,y,Obj_damage_enemy) 
{
	
	
	var _inst = instance_place(x,y,Obj_damage_enemy)
	
	// take damage from specific instances
	
	hp -= _inst.damage
	
	// tell instance to destroy
	
	_inst.destroy = true
	
}

//enemy death

if hp <= 0
{
	
	instance_destroy()
	
}