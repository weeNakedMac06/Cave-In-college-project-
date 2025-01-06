#region // draw weapon behind 
if aimDir >= 0 and aimDir < 180
{
	draw_my_weapon()
}

#endregion

#region//draw player
draw_self()
#endregion

#region //draw wand above player
if aimDir >= 180 and aimDir < 360
{
	draw_my_weapon()
}
#endregion

//draw ammo

draw_text(x,y,string(weapon.ammoCount))



