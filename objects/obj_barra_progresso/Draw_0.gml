
draw_self();

if global.minigame_on
{
	var _porcentagem = global.pontos / global.max_pontos
	var _largura_atual = largura_barra * _porcentagem
	
	//draw_sprite_stretched(spr_template_progresso, 0, x - 5, y - 36, 207 *3 , 50 *3)
	
	draw_sprite_ext(spr_template_progresso, 0, x - 45, y - 113, image_xscale*1.5, image_yscale*1.5, 0, c_white, 100)
	
	draw_set_colour(#B55945)
	draw_rectangle( x - 95, y - 100, x - 95 + _largura_atual, y - 105 -altura_max, false)
	draw_set_colour(c_white)
}


/*
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





