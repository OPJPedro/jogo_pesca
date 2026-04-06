//comandos:
esquerda = keyboard_check(ord("A")) or keyboard_check(vk_left);
direita = keyboard_check(ord("D")) or keyboard_check(vk_right);
comeca_minigame = keyboard_check(ord("F"));
chao = place_meeting(x, y + 1, obj_chao)

//se estiver pescando, não consegue se movimentar
if !global.minigame_on
{
	if estado != "conversando"
	{
		//movimentação:
		if (direita)
		{
			hsp += max_hsp;
		} else if (esquerda)
		{
			hsp -= max_hsp;
		} else
		{
			hsp = 0
		}
	}
}

// Virar o sprite
if (hsp != 0) xscale = sign(hsp);
image_xscale = xscale;

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

#region maquina de estados
switch estado
{
	case "parado":
	{
		//sprite do boneco parado
	
		if direita or esquerda
		{
			//muda pro estado andando
			estado = "movendo"
		}
	
		if global.minigame_on
		{
			estado = "pescando"
		}
		
		break;
	}
	
	case "movendo":
	{
		//sprite do boneco andando
	
		if (abs(hsp) < 0.1) 
		{
			estado = "parado";
	        hsp = 0;
	    }
		
		if global.minigame_on
		{
			estado = "pescando"
		}
	
		break;
	}
	
	case "pescando":
	{
		//sprite do boneco
		
		if !global.minigame_on
		{
			estado = "parado"
		}
		
		break;
	}
	
	case "conversando":
	{
		//sprite do boneco conversando
		hsp = 0;
		
		if keyboard_check_pressed(vk_escape)
		{
			estado = "parado"
		}
	}
	
	break;
}
#endregion

//starta o minigame de pesca quandor apertar o F, e só dentro da colisão definida
if comeca_minigame && !global.minigame_on && place_meeting(x, y, obj_area_minigame)
{
	
	//comeca o minigame e cria as instâncias do jogo
	global.minigame_on = true;
	instance_create_layer(270, 350, "Instances", obj_pesca_summer)
	instance_create_layer(270, 335.5, "Instances", obj_pescador_summer)
	instance_create_layer(300, 250, "Instances", obj_barra_progresso)	
}

depth = -y

if (keyboard_check_pressed(vk_f11))
{
    //Pegando se a tela ta cheia
    var _full = window_get_fullscreen();

    //Deixando a tela cheia se ela não esta cheia
    //Ou restaurando a tela se ela esta cheia
    window_set_fullscreen(!_full);
}