draw_self()

if global.minigame_on 
{
	var _porcentagem = global.pontos /global.max_pontos;
	var _largura_atual = largura_barra * _porcentagem;
	draw_set_colour(c_dkgray)
	draw_rectangle(x, y, x + largura_barra, y - altura_max, false);
	
	draw_set_colour(c_lime)
	draw_rectangle(x, y, x + _largura_atual, y - altura_max, false)
	draw_set_colour(c_white)
}

/*
var _porcentagem = global.pontos / global.max_pontos;
var _largura_atual = sprite_get_width(sprite_index) * _porcentagem;

// Desenha fundo (barra vazia)
draw_sprite(sprite_index, 0, x, y);

// Desenha preenchimento (recortado)
draw_sprite_part(
    sprite_index, 
    0,
    0, 0,                    // começo do recorte
    _largura_atual, sprite_get_height(sprite_index), // largura proporcional
    x, y
);