//se estiver em contato ccom o player
if place_meeting(x, y, obj_player)
{
	//se apertar E
	if keyboard_check(ord("E"))
	{
		//O player entra no estado conversando
		obj_player.estado = "conversando"
	}
}