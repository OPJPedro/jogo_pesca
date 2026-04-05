if place_meeting(x, y, obj_player)
{
	if keyboard_check(ord("E"))
	{
		obj_player.estado = "conversando"
	}
}

if obj_player.x < x {image_xscale = -3}
else if obj_player.x > x {image_xscale = 3}
