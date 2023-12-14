extends Sprite2D

func _process(delta):
	var mouse_pos = get_viewport().get_mouse_position()
	var direction = (mouse_pos - self.position).normalized()
	var new_angle = (PI / 2) + atan2(direction.x, -direction.y)
	self.rotation = new_angle
