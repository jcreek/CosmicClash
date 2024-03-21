extends 'res://scripts/Vehicle.gd'

func get_input_vector() -> Vector3:
	var input_vector = Vector3.ZERO
	var camera_path = "/root/MatchNode3D/Players/GridContainer/SubViewportContainer/SubViewport/Player1/Camera3D"
	var camera = get_node(camera_path)

	if camera:
		var camera_transform = camera.global_transform
		var forward_direction = -camera_transform.basis.z
		var right_direction = camera_transform.basis.x
		var y_movement = input_vector.y

		if Input.is_action_pressed("move_forward"):
			input_vector += forward_direction
		if Input.is_action_pressed("move_backward"):
			input_vector -= forward_direction
		if Input.is_action_pressed("move_left"):
			input_vector -= right_direction
		if Input.is_action_pressed("move_right"):
			input_vector += right_direction
		
		# Zero out the Y component to restrict movement to the XZ plane
		input_vector.y = 0
		
		# Add back the preserved Y movement
		input_vector.y = y_movement
		
		if Input.is_action_pressed("move_up"):
			input_vector.y += 1
		if Input.is_action_pressed("move_down"):
			input_vector.y -= 1

		return input_vector.normalized()
	else:
		print("Camera not found")
		return Vector3.ZERO
