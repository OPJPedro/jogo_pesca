if place_meeting(x, y, obj_player)
{
	if keyboard_check(ord("E"))
	{
		obj_player.estado = "conversando"
	}
}

if obj_player.x < x {image_xscale = -3}
else if obj_player.x > x {image_xscale = 3}

zoom_largura = lerp(camera_get_view_width(cam), 640, .05)
zoom_altura = lerp(camera_get_view_height(cam), 400, .05)

zoom_out_largura = lerp(camera_get_view_width(cam), 1280, .05)
zoom_out_altura = lerp(camera_get_view_height(cam), 720, .05)

if obj_player.estado == "conversando"
{
	camera_set_view_size(cam, zoom_largura, zoom_altura)
} else
{
	camera_set_view_size(cam, zoom_out_largura, zoom_out_altura)
}