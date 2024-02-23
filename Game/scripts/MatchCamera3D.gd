extends Camera3D

@export var vehicle: RigidBody3D
@export var ball: RigidBody3D

func _physics_process(delta):
	if vehicle and ball:
		# Adjust the offset based on your scene scale
		# Increasing Y component to raise the camera higher above the vehicle
		var offset = Vector3(0, 2, -2) # Adjust Y to change height
		
		# Position the camera behind and above the vehicle
		var behind_vehicle = vehicle.global_transform.origin - vehicle.global_transform.basis.z * offset.z
		behind_vehicle += vehicle.global_transform.basis.y * offset.y
		
		global_transform.origin = behind_vehicle

		look_at(ball.global_transform.origin, Vector3.UP)
