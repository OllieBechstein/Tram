extends Node3D


# Called when the node enters the scene tree for the first time.
func _ready():
	pass


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	#rotation.y = lerp_angle(rotation.y, get_parent().rotation.y(), 6)
	set_position($"../Path3D/PathFollow3D".position)
	set_rotation($"../Path3D/PathFollowFrontTrail".rotation)
	
