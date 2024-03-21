extends RigidBody3D

# Speed variable can be adjusted by subclasses
var speed = 10.0

func _integrate_forces(state):
	# input_vector represents the movement input relative to the vehicle
	var input_vector = get_input_vector()

	# Scale the input_vector by speed
	input_vector = input_vector.normalized() * speed
	
	# Set the linear velocity based on the input
	state.linear_velocity = input_vector

# Get the input vector from subclasses
func get_input_vector() -> Vector3:
	var input_vector = Vector3.ZERO

	# Subclasses will implement this function to provide their input mappings
	return input_vector

# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass
