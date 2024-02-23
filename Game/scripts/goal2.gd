extends Area3D

@export var ball: RigidBody3D
@export var player1: RigidBody3D
#@export var player2: RigidBody3D


# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.

# Called when an object with collision enters the bounds of this object
func _on_body_entered(body):
	# Only care if it's the ball
	if(body == ball):
		print("Goal scored in goal 2")
		# Reset the ball and player to their starting locations just for testing
		ball.global_transform.origin = Vector3(0, 2, 0)
		player1.global_transform.origin = Vector3(0, 0.5, 2)
