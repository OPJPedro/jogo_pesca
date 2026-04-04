//comandos:
esquerda = keyboard_check(ord("A")) or keyboard_check(vk_left);
direita = keyboard_check(ord("D")) or keyboard_check(vk_right);
comeca_minigame = keyboard_check(ord("F"));

//movimentação:
if (direita)
{
	x += vel;
} else if (esquerda)
{
	x -= vel;
};

if comeca_minigame //&& !global.minigame_on
{
	global.minigame_on = true;
	instance_create_layer(270, 350, "Instances", obj_pesca_summer)
	instance_create_layer(270, 335.5, "Instances", obj_pescador_summer)
}