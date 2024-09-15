extends RigidBody2D


const SPEED = 6.0
const JUMP_VELOCITY = -400.0
const DEFAULT_BOUNCE = 1.0

# Get the gravity from the project settings to be synced with RigidBody nodes.
var gravity = ProjectSettings.get_setting("physics/2d/default_gravity")

func _ready():
	pass

func _process(delta):
	pass

# For one time events
func _input(event):
	# Jump
	if Input.is_action_pressed("jump"):
		if self.get_linear_velocity().y > 0:
			self.set_linear_velocity(Vector2(self.get_linear_velocity().x, 0))
		self.apply_impulse(Vector2(0, -200), Vector2(0, 0))

func _physics_process(delta):
	# Spin
	if (self.angular_velocity < 0.0 && Input.is_action_pressed("ui_right")):
		self.set_angular_velocity(0)
	elif (self.angular_velocity > 0.0 && Input.is_action_pressed("ui_left")):
		self.set_angular_velocity(0)
	var input_direction = (Input.get_action_strength("ui_right") - Input.get_action_strength("ui_left"))
	self.apply_torque(input_direction * 20000)
	
	# Fall, or stop bouncing
	if (Input.is_action_pressed("ui_down")):
		self.physics_material_override.bounce = 0.2
		self.apply_impulse(Vector2(0, 20), Vector2(0, 0))
	else:
		self.physics_material_override.bounce = DEFAULT_BOUNCE

func _integrate_forces(state):
	pass
