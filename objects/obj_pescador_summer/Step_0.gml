if global.minigame_on
{

//comandos
espaco = keyboard_check(vk_space)

if espaco 
{
	y -= vel;
}else {
	y += 2
}



if place_meeting(x, y, obj_pesca_summer)
{
	global.pontos++
} else {
    global.pontos -= .5
}
if global.pontos < 0 {global.pontos = 0}

if y > ystart	{y = ystart}
if y < ystart - 167		{y = ystart - 167}

show_debug_message(global.pontos)

if global.pontos >= global.max_pontos && !ativa_alarme
{
	instance_destroy()
	instance_destroy(obj_pesca_summer)
	instance_destroy(obj_barra_progresso)
	global.minigame_on = false;
	global.pontos = 0
	
	instance_create_layer(x, y, layer, obj_peixes)
	global.dinheiro += obj_peixes.valor
	show_message("Você pescou um peixe " + string(global.peixe_pescado))
	instance_destroy(obj_peixes)
}
}
