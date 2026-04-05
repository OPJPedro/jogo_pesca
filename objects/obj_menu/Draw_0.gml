draw_self()

if main_menu{draw_text(x, y, "Pressiona qualquer tecla!")}

if !main_menu
{
	draw_sprite(spr_template, 0, x - 200, y)
	draw_sprite(spr_template, 0, x - 100, y)
	draw_sprite(spr_template, 0, x, y)
}