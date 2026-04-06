image_xscale *= 3 
image_yscale *= 3 

//configura a camera pra seguir o player
var cam = instance_create_layer(x, y, layer, obj_camera)
cam.target = id

//iniciando as variáveis de velocidade horizontal e velocidade vertical
hsp = 0
vsp = 0
max_hsp = 7
max_vsp = 15
xscale = 3

//inicia a maquina deliciosa de estados hmmmmm que maravilha
estado = "parado"
mostra_estado = false

//massa do personagem; quanto maior o valor, mais rapido ele cai
massa = 1
