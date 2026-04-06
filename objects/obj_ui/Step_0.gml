if global.pause
{
	image_speed = 0
	exit
}else
{
	image_speed = 1
}
//enquanto o indice for menor que o numero de caracteres do texto
if indice < string_length(texto)
{		
	indice += .5
} else if indice >= string_length(texto)
{
	if keyboard_check(vk_enter) {indice = 0; texto = "six seveeeen hahaaaaaaa te peguei otario"}
}
//acelera a escrita do texto	
if keyboard_check(vk_space) {indice += 2}

//se p player não estiver em diálogo
if obj_player.estado != "conversando"
{
	//o indice volta pra zero, fazendo o diálogo escrever desde o inicio na proxima interação
	indice = 0
}
