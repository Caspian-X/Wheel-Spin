extends CharacterBody2D


const SPEED = 300.0
const JUMP_VELOCITY = -400.0

# Get the gravity from the project settings to be synced with RigidBody nodes.
var gravity = ProjectSettings.get_setting("physics/2d/default_gravity")


func _physics_process(delta):
	var input_direction = Vector2(Input.get_action_strength("ui_right") - Input.get_action_strength("ui_left"),
								  Input.get_action_strength("ui_down") - Input.get_action_strength("ui_up"))
	if input_direction.length() > 0:
		input_direction = input_direction.normalized()
	self.velocity = input_direction * SPEED
	self.move_and_slide()

	# Flip the sprite  based on the x direction
	if input_direction.x < 0:
		self.scale.x = -1
	elif input_direction.x > 0:
		self.scale.x = 1
