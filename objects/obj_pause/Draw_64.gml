var larg_tela = display_get_gui_width()
var alt_tela = display_get_gui_height()
var alpha = lerp(0, .8, .8)

if global.pause == true
{
	draw_set_colour(c_black)
	draw_set_alpha(alpha)
	draw_rectangle(0, 0, larg_tela, alt_tela, false)
	draw_set_halign(fa_center)
	draw_set_valign(fa_center)
	draw_set_colour(c_white)
	draw_set_alpha(1)
	draw_text(larg_tela / 2, alt_tela / 2, "Pausado")
	draw_set_halign(-1)
	draw_set_valign(-1)
	
}