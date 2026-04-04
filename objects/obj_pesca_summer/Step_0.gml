//da velocidade de movimento ao objeto quando não está recebendo dash
y += vel

//limitação, para ficar dentro do retângulo
if y > ystart	{y = ystart}
if y < 160		{y = 160}

//if peixe_doido > 150 {peixe_doido = 150}
