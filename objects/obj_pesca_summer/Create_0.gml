#region

dash_tipo_peixe = noone;
vel_tipo_peixe = noone;
dc_tipo_peixe = noone;

//cria um sistema de raridade para o tipo de peixe
randomise()
raridade = random_range(1, 101)

show_debug_message(raridade)

//seta os tipos de peixes e seus  valores
if raridade == 1
{
		obj_peixes.valor -= 200
		show_message("Perdeu a vara!")
}else if raridade > 1 && raridade <= 40 
{
	global.peixe_tipo = "Tilápia"
	global.valor_peixe += 15
	
	dash_tipo_peixe = 25;
	vel_tipo_peixe = .5;
	dc_tipo_peixe = 40;
	global.max_pontos = 50;
	
}else if raridade > 40 && raridade <= 70 
{
	global.peixe_tipo = "Oscar"
	global.valor_peixe += 40
	
	dash_tipo_peixe = 25;
	vel_tipo_peixe = .7;
	dc_tipo_peixe = 40;
	global.max_pontos = 150;
	
}else if raridade > 70 && raridade <= 90 
{
	global.peixe_tipo = "Baiacu"
	global.valor_peixe += 90
	
	dash_tipo_peixe = 70;
	vel_tipo_peixe = .3;
	dc_tipo_peixe = 80;
	global.max_pontos = 200;
	
}else if raridade > 90 && raridade < 101
{
	global.peixe_tipo = "Atum"
	global.valor_peixe += 150
	
	dash_tipo_peixe = 20;
	vel_tipo_peixe = .8;
	dc_tipo_peixe = 20;
	global.max_pontos = 200;
}else
{
	global.peixe_tipo= "Tubarão branco dos olhos azuis"
	global.valor_peixe += 1000
	
	dash_tipo_peixe = 50;
	vel_tipo_peixe = 8;
	dc_tipo_peixe = 1;
	global.max_pontos = 20000000000;
}





//faz a bolinha iniciar no meio do retângulo
y = ystart + choose(-100, -75, -125)




//define se o dash será para cima ou para baixo
positivo = noone;
//define a velocidade do dash
dash_speed = dash_tipo_peixe;
//define o valor que o objeto se movera quando não está recebendo dash
vel = vel_tipo_peixe;
//cooldown do dash em frames
dash_cooldown = dc_tipo_peixe;
//dispara o alarme inicial depois de 20 frames
alarm[0] = dash_cooldown;


