extends Camera2D

@export var rotationSpeed : int
@export var zoomSpeed : int

# Called when the node enters the scene tree for the first time.
func _ready():
	startDollyRotate()


func startDollyRotate():
	var tween = create_tween()
	tween.set_parallel()
	tween.tween_property(
		self, 
		"rotation",
		deg_to_rad(360),
		rotationSpeed)
	tween.tween_property(
		self,
		"zoom",
		Vector2(12, 12),
		zoomSpeed
	)
