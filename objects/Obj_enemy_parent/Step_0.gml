//recieve damage


get_damaged(Obj_damage_enemy);

if hp <= 0
{
	
	global.killCount++
	instance_destroy()
	
}