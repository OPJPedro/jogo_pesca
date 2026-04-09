nuvem1 = layer_get_id("Nuvem1")
nuvem2 = layer_get_id("Nuvem2")
agua = layer_get_id("Lago")
layer_hspeed(nuvem1, .2)
layer_hspeed(nuvem2, .1)


if global.pause
{
	layer_hspeed(nuvem1, 0)
	layer_hspeed(nuvem2, 0)
	layer_enable_fx(agua, false)
	image_speed = 0
	exit
}else
{
	image_speed = 1
}




var _cam_x = camera_get_view_x(view_camera[0]) * .1
var paral_m = layer_get_id("Montanhas")
layer_x(paral_m, _cam_x)

