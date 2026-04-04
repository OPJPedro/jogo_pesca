//comandos
espaco = keyboard_check(vk_space)

if espaco 
{
	y -= vel;
}else {
	y += 2
}



if place_meeting(x, y, obj_pescador_summer)
{
	global.pontos++
}else {global.pontos--}
if global.pontos < 0 {global.pontos = 0}

if y > ystart	{y = ystart}
if y < ystart - 197		{y = ystart - 197}

show_debug_message(global.pontos)