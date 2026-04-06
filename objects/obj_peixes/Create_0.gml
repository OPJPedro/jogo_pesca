randomise()
valor = 0
//randomiza o tamanho do peixe, dependendo do tamanho, o peixe terá valores diferentes
global.peixe_pescado = choose("pequeno", "medio", "grande")

//switch para setar os valores
switch global.peixe_pescado
{
	case "pequeno":
	{
		valor += 25
	}
	
	break;
	
	case "medio":
	{
		valor += 50
	}
	
	break;
	
	case "grande":
	{
		valor += 75
	}
	
	break
}

raridade = random_range(1, 101)
show_debug_message(raridade)

if raridade == 1
{
		valor -= 200
		show_message("Perdeu a vara!")
}else if raridade > 1.1 && raridade <= 40 
{
	global.peixe_tipo = "Tilápia"
	valor += 10
}else if raridade > 40 && raridade <= 70 
{
	global.peixe_tipo = "Oscar"
	valor += 20
}else if raridade > 70 && raridade <= 90 
{
	global.peixe_tipo = "Baiacu"
	valor += 60
}else if raridade > 90 && raridade <= 100 
{
	global.peixe_tipo = "Atum"
	valor += 100
}else
{
	global.peixe_tipo= "Tubarão branco dos olhos azuis"
	valor += 1000
}

