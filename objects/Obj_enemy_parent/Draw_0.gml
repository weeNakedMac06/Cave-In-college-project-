//draw enemy

draw_self()

// draw hp
draw_text(x,y-32, string(hp))

// check for size of damage list 

draw_text(x,y-16, string(ds_list_size(damageList)))