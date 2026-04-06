if surface_exists(surf)
{
    var cam = view_camera[0]
    // Usamos floor para evitar que números quebrados borrem o desenho
    var cam_x = floor(camera_get_view_x(cam))
    var cam_y = floor(camera_get_view_y(cam))
 
    surface_set_target(surf)
    draw_clear_alpha(c_black, 0)
    
    // Desenhando o reflexo do NPC
    with (obj_npc)
    {
        draw_sprite_ext(sprite_index, image_index,
        x - cam_x,
        y - cam_y + sprite_height + 70,
        image_xscale, -3,
        image_angle, c_white, 0.5)
    }

    // Desenhando o reflexo do Player
    with (obj_player) 
    {
        draw_sprite_ext(sprite_index, image_index,
        x - cam_x,
        y - cam_y + sprite_height + 70,
        image_xscale, -image_yscale,
        image_angle, c_white, 0.5)
    }
	
	//reflexo das arvores
	with (obj_arvores) 
    {
        draw_sprite_ext(sprite_index, image_index,
        x - cam_x,
        y - cam_y + sprite_height + 70,
        image_xscale, -image_yscale,
        image_angle, c_white, 0.5)
    }

		with (obj_grama) 
    {
        draw_sprite_ext(sprite_index, image_index,
        x - cam_x,
        y - cam_y + sprite_height + 70,
        image_xscale, -image_yscale,
        image_angle, c_white, 0.5)
	}
	
    surface_reset_target()

    // Desenha a superfície exatamente onde a câmera está
    draw_surface(surf, cam_x, cam_y)
}
else
{
    // Corrigindo a criação para usar o tamanho da câmera, não da room inteira
    var cam = view_camera[0]
    surf = surface_create(camera_get_view_width(cam), camera_get_view_height(cam))
}