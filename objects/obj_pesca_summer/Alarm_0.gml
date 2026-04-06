
//if global.pause
//{
//	image_speed = 0
//	exit

//}else
//{
//	image_speed = 1
//	alarm[0] = dash_cooldown
//}
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

//toca o alarme novamente
alarm[0] = dash_cooldown

