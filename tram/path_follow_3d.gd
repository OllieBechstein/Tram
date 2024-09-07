extends PathFollow3D

var speed_setting: float = 0
@export var Max_Speed: float = 1
# Called when the node enters the scene tree for the first time.
func _ready():
	progress = 0 # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	if Input.is_action_pressed("increase_speed"):
		speed_setting += 1 * delta
	elif Input.is_action_pressed("decrease_speed"):
		speed_setting -= 1 * delta
	else:
		speed_setting -= 0.5 * delta
	speed_setting = clampf(speed_setting, 0, Max_Speed)
	print(speed_setting)
	progress += speed_setting
