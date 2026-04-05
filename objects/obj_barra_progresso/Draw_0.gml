
draw_self();

//se o minigame estiver ativo
if global.minigame_on 
{
	//cria a porcentagem para preencher a barra
	var _porcentagem = global.pontos /global.max_pontos;
	
	
	var _largura_atual = largura_barra * _porcentagem;
	
	//cria um retangulo com os tamanhos de largura e altura definidos com a cor cinza
	draw_set_colour(c_dkgray)
	draw_rectangle(x, y, x + largura_barra, y - altura_max, false);
	
	//cria a barra que preenchera a cinza de acordo com a porcentagem
	draw_set_colour(#fff6d3)
	draw_rectangle(x, y, x + _largura_atual, y - altura_max, false)
	
	//seta cor pra branco
	draw_set_colour(c_white)
}





