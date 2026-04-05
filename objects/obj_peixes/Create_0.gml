randomise()
valor = 0
global.peixe_pescado = choose("pequeno", "medio", "grande")

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