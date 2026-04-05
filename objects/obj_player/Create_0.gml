//configura a camera pra seguir o player
var cam = instance_create_layer(x, y, layer, obj_camera)
cam.target = id

//iniciando as variáveis de velocidade horizontal e velocidade vertical
hsp = 0
vsp = 0
max_hsp = .5
max_vsp = 15
xscale = 1

//inicia a maquina deliciosa de estados hmmmmm que maravilha
estado = "parado"
mostra_estado = true

//massa do personagem; quanto maior o valor, mais rapido ele cai
massa = 1

