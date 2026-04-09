//surf = surface_create(room_width, room_height)
var cam = view_camera[0]
surf = surface_create(
    camera_get_view_width(cam),
    camera_get_view_height(cam)
)

