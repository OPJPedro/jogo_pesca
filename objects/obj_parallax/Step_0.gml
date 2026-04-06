if global.pause
{
	image_speed = 0
	exit
}else
{
	image_speed = 1
}

var _cam_x = camera_get_view_x(view_camera[0]) * .2
var paral_m = layer_get_id("Montanhas")
layer_x(paral_m, _cam_x)

