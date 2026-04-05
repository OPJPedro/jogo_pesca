randomise()
valor = 0
//randomiza o tamanho do peixe, dependendo do tamanho, o peixe terá valores diferentes
global.peixe_pescado = choose("pequeno", "medio", "grande")

//switch para setar os valores
switch global.peixe_pescado
{
	case "pequeno":
	{
		valor = 25
	}
	
	break;
	
	case "medio":
	{
		valor = 50
	}
	
	break;
	
	case "grande":
	{
		valor = 75
	}
	
	break
}