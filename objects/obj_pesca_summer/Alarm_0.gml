randomise()

//Escolhe se o valor será positivo ou negativo
positivo = choose(true, false)

//Se Positibo, dash será para baixo, e velocidade de movimento também
if positivo {
	y+= dash_speed
	vel = +0.2
}else {//se negativo, dash para cima, e velocidade de movimento também
	y-=dash_speed
	vel = -0.2
}
//y += choose(dash_speed, -dash_speed);
//vel = dash_speed / 24;

//toca o alarme novamente
alarm[0] = dash_cooldown

show_debug_message(y)
