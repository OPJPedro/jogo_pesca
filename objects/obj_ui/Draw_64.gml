draw_text(10, 10, "Dinheiro: " + string(global.dinheiro))
draw_set_font(fonte_foda)

if obj_player.estado == "conversando"
{
	draw_sprite(spr_npc_jullian_hud, 0, 150, 380)
	draw_sprite(spr_dialogo, 0, 0, 600)
	draw_text(20, 500, @"Gohan vê se você me escuta. Não é pecado lutar pela justiça pelo contrário é uma boa ação. Pense, existem pessoas que não podem ser convencidas com palavras,"
	+ "\n,você precisa soltar a fúria que está dentro do seu espírito, eu sei como você se sente, você não precisa mais suportar isso Gohan. Gohan, cuide das plantas e dos animais"
	+ "\ndesse mundo, que eu tanto amei, conto com você.")
}