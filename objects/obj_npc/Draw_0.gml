//desenha o "E", quando estiver em contato com o player
draw_self()
if place_meeting(x, y, obj_player)
{
	draw_text(x + 15, y - 60, texto_interacao)
	if obj_player.estado == "conversando"
	{
		texto_interacao = ""
	} else
	{
		texto_interacao = "E"
	}
}