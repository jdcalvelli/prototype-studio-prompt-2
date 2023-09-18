extends Node2D

var restartable : bool = false

func _ready():
	$CassetteOff.finished.connect(_on_cassette_off)
	
func _on_cassette_off():
	restartable = true
	$Cracks.visible = false
	$Control.visible = true

func _process(delta):
	if Input.is_key_pressed(KEY_R) and restartable:
		Events.changeScene.emit("intro")
