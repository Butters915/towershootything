extends KinematicBody2D

func _physics_process(delta):
	var offset = -PI * 0.5
	var screen_pos = get_viewport().get_camera().unproject_position(player.global_transform.origin)
	var mouse_pos = get_viewport().get_mouse_position()
	var angle = screen_pos.angle_to_point(mouse_pos)
	player.rotation.y = -angle + offset
