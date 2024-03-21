extends 'res://scripts/Vehicle.gd'

func get_input_vector() -> Vector3:
	var input_vector = Vector3.ZERO
	if Input.is_action_pressed("move_forward"):
		input_vector.z -= 1
	if Input.is_action_pressed("move_backward"):
		input_vector.z += 1
	if Input.is_action_pressed("move_left"):
		input_vector.x -= 1
	if Input.is_action_pressed("move_right"):
		input_vector.x += 1
	if Input.is_action_pressed("move_up"):
		input_vector.y += 1
	if Input.is_action_pressed("move_down"):
		input_vector.y -= 1

	return input_vector
