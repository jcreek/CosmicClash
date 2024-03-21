extends 'res://scripts/Vehicle.gd'

func get_input_vector() -> Vector3:
	var input_vector = Vector3.ZERO
	if Input.is_action_pressed("move_forward2"):
		input_vector.z -= 1
	if Input.is_action_pressed("move_backward2"):
		input_vector.z += 1
	if Input.is_action_pressed("move_left2"):
		input_vector.x -= 1
	if Input.is_action_pressed("move_right2"):
		input_vector.x += 1
	if Input.is_action_pressed("move_up2"):
		input_vector.y += 1
	if Input.is_action_pressed("move_down2"):
		input_vector.y -= 1

	return input_vector
