randomise()
valor = 0
//randomiza o tamanho do peixe, dependendo do tamanho, o peixe terá valores diferentes
global.peixe_pescado = choose("pequeno", "medio", "grande")

//switch para setar os valores
switch global.peixe_pescado
{
	case "pequeno":
	{
		global.valor_peixe += 25
	}
	
	break;
	
	case "medio":
	{
		global.valor_peixe += 50
	}
	
	break;
	
	case "grande":
	{
		global.valor_peixe += 75
	}
	
	break
}



