if global.pause
{
	image_speed = 0
	exit
}else
{
	image_speed = 1
}

//Se não tiver nenhumm target ele sai do evento
if target == noone { exit }

//Ele segue o X e Y do player
x = lerp(x, target.x , .1)
y = lerp(y, target.y , .1)