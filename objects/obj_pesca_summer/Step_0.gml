//da velocidade de movimento ao objeto quando não está recebendo dash
y += vel

//limitação, para ficar dentro do retângulo
if y > ystart	{y = ystart}
if y < ystart - 197		{y = ystart - 197}

