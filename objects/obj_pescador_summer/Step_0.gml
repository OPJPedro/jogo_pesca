if global.pause
{
	image_speed = 0
	exit
}else
{
	image_speed = 1
}


if global.minigame_on
{

//comandos
espaco = keyboard_check(vk_space)


//se apertar espaço barra sobe, se soltar espaço, ela desce
if espaco 
{
	y -= vel;
}else {
	y += 2
}


//se estiver encostando no objeto pesca do minigame, os pontos sobem, se não, diminuem pela metade
if place_meeting(x, y, obj_pesca_summer)
{
	global.pontos++
} else {
    global.pontos -= .5
}

//limita os pontos de não ficarem abaixo de 0
if global.pontos < 0 {global.pontos = 0}

//limita a barra de cair no limbo
if y > ystart	{y = ystart}
//limita a barra de não subir inifinitamente
if y < ystart - 167		{y = ystart - 167}

//Se os pontos forem iguais ou maior que a quantidade máxima de pontos
if global.pontos >= global.max_pontos
{
	//destroi barra pescador
	instance_destroy()
	//destroi pesca
	instance_destroy(obj_pesca_summer)
	//destroi barra de progresso
	instance_destroy(obj_barra_progresso)
	//sai do minigame
	global.minigame_on = false;
	//pontos são setados para 0 novamente
	global.pontos = 0
	
	//cria o obj de peixes
	instance_create_layer(x, y, layer, obj_peixes)
	//trás o valor do peixe e aumenta o dinheiro
	global.dinheiro += obj_peixes.valor
	show_message("Você pescou um " + string(global.peixe_tipo)+ " " + string(global.peixe_pescado))
	//detrói o obj_peixe para resetar seu valor a zero novamente.
	instance_destroy(obj_peixes)
}
}
