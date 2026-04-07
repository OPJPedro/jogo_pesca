if global.pause
{
	image_speed = 0
	exit
}else
{
	image_speed = 1
}


// Dá a velocidade de movimento ao objeto quando não está recebendo dash
y += vel;

// Limitação INFERIOR (Fundo da barra)
if y > ystart	
{
	if global.peixe_tipo == "Baiacu"
	{
		// Descobre o quanto ele ultrapassou o limite do fundo
		var passou = y - ystart; 
		
		// Rebate ele de volta para cima
		y = ystart - passou; 
		
		// Inverte a velocidade para ele continuar subindo
		vel = -abs(vel); 
	}
	else 
	{
		y = ystart;
	}
}

// Limitação SUPERIOR (Topo da barra)
if y < ystart - 197		
{
	if global.peixe_tipo == "Baiacu"
	{
		// Descobre o quanto ele ultrapassou o limite do topo
		var passou = (ystart - 197) - y; 
		
		// Rebate ele de volta para baixo
		y = (ystart - 197) + passou; 
		
		// Inverte a velocidade para ele continuar descendo
		vel = abs(vel); 
	}
	else
	{
		y = ystart - 197;
	}
}
