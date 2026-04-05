//desenha no canto superior esquerdo o dinheiro
draw_text(10, 10, "Dinheiro: " + string(global.dinheiro))

//define a fonte
draw_set_font(fonte_foda)

//variavel pra caralho só pra definir o tamanho da caixa de dialogo
#region caixa de dialogo
var _larg = display_get_gui_width()
var _alt = display_get_gui_height()
var _marg = 5
var _pad = 10

var _caixa_larg = _larg
var _caixa_alt = 200

var _x1 = _marg
var _x2 = _caixa_larg - _marg * 2

var _y1 = _alt - _marg - _caixa_alt
var _y2 = _y1 + _caixa_alt
#endregion
//definindo o espaço do texto
var _txt_x = _x1 + _pad
var _txt_y = _y1 + _pad

//difinindo a altura e largura da foto do hud do npc
var _larg_hud = 256
var _alt_hud = 256
var _hud_x = _larg - _larg + _marg * 2
var _hud_y = _y1 - _alt_hud

//copia o numeor de caractereres da variavel texto de acordo com a variavel indice
var _texto_final = string_copy(texto, 0, indice)

//se o player estiver no estado conversando
if obj_player.estado == "conversando"
{
	draw_sprite_stretched(spr_npc_jullian_hud, 0, _hud_x, _hud_y, _larg_hud, _alt_hud)
	draw_sprite_stretched(spr_dialogo, 0, _x1, _y1, _x2, _caixa_alt)
	draw_text_ext(_txt_x, _txt_y, _texto_final, 20, _caixa_larg)
}

if indice >= string_length(texto)
{
	draw_text_ext(800, 680, "[Pressione a tecla Enter para continuar]", 20, _caixa_larg)
}
