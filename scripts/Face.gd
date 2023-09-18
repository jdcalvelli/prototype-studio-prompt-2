extends AnimatedSprite2D


# Called when the node enters the scene tree for the first time.
func _ready():
	play("neutral")

func _process(delta):
	if GameManager.crackNumber == 5:
		play("sad")
	elif GameManager.crackNumber == 10:
		play("crying")
