extends Node
class_name Rotator

@export var rotationSpeed : int

func startRotation():
	var tween = create_tween()
	tween.tween_property(
		get_parent(), 
		"rotation", 
		deg_to_rad(360), 
		rotationSpeed)
	tween.tween_property(
		get_parent(),
		"rotation",
		deg_to_rad(0),
		0)
	tween.set_loops()
