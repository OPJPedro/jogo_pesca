//comandos:
esquerda = keyboard_check(ord("A")) or keyboard_check(vk_left);
direita = keyboard_check(ord("D")) or keyboard_check(vk_right);

//movimentação:
if (direita)
{
	x += vel;
} else if (esquerda)
{
	x -= vel;
};

show_debug_message(global.pontos)