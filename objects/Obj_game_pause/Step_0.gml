pauseKeyCheck = keyboard_check_pressed(ord("P"))
	
if pauseKeyCheck
{
paused = true ;
instance_deactivate_all(true)
	if paused == false
	{
			instance_activate_all();
			surface_free(paused_surf);
            paused_surf = -1;
	}
}


if paused == true and pauseKeyCheck
	{
		paused = false
		alarm[0]++;
		alarm[1]++;
	}

	