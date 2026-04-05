
draw_self();
if global.minigame_on 
{
	var _porcentagem = global.pontos /global.max_pontos;
	var _largura_atual = largura_barra * _porcentagem;
	draw_set_colour(c_dkgray)
	draw_rectangle(x, y, x + largura_barra, y - altura_max, false);
	
	draw_set_colour(#fff6d3)
	draw_rectangle(x, y, x + _largura_atual, y - altura_max, false)
	draw_set_colour(c_white)
}





