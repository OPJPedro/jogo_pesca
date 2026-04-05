//comandos:
esquerda = keyboard_check(ord("A")) or keyboard_check(vk_left);
direita = keyboard_check(ord("D")) or keyboard_check(vk_right);
comeca_minigame = keyboard_check(ord("F"));

chao = place_meeting(x, y + 1, obj_chao)

//movimentação:
if (direita)
{
    hsp += max_hsp;
} else if (esquerda)
{
    hsp -= max_hsp;
};

#region colisoes
var _hsp = sign(hsp)
var _vsp = sign(vsp)

//Colisão Horizontal
repeat(abs(hsp))
{
    if place_meeting(x + _hsp, y, obj_chao)
    {
        hsp = 0
        break;
    }
    x += _hsp
}

//Colisão vertical
repeat(abs(vsp))
{
    if place_meeting(x, y + _vsp, obj_chao)
    {
        vsp = 0
        break;
    }
    y += _vsp
}
#endregion

//gravidade
if !chao
{
    if vsp < max_vsp * 2
    {
        vsp += GRAVIDADE * massa
    }
}

//starta o minigame de pesca quandor apertar o F
if comeca_minigame && !global.minigame_on
{
	
	//comeca o minigame e cria as instâncias do jogo
	global.minigame_on = true;
	instance_create_layer(270, 350, "Instances", obj_pesca_summer)
	instance_create_layer(270, 335.5, "Instances", obj_pescador_summer)
	
	instance_create_layer(300, 250, "Instances", obj_barra_progresso)	
}