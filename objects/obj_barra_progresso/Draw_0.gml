draw_self()

if global.minigame_on 
{
	var _porcentagem = global.pontos /global.max_pontos;
	var _altura_atual = altura_max * _porcentagem;
	draw_set_colour(c_dkgray)
	draw_rectangle(x, y, x + largura_barra, y - altura_max, false);
	
	draw_set_colour(c_green)
	draw_rectangle(x, y, x + largura_barra, y - altura_max, false)
}

