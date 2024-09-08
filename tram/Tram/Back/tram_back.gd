extends Node3D

var doors_open = false
# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(_delta):
	if Input.is_action_pressed("door_open") && !doors_open:
		$AnimationPlayer.play("Door")
		doors_open = true
	if Input.is_action_pressed("door_close") && doors_open:
		$AnimationPlayer.play("Door", -1, -1, true)
		doors_open = false
