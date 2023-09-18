extends Node2D


# Called when the node enters the scene tree for the first time.
func _ready():
	$GettingInBed.finished.connect(_on_bed_finished)
	$FumbleWithCassette.finished.connect(_on_cassette_finished)
	$HitPlay.finished.connect(_on_play_finished)

func _on_bed_finished():
	$FumbleWithCassette.play()
	
func _on_cassette_finished():
	$HitPlay.play()
	
func _on_play_finished():
	# change scene
	Events.changeScene.emit("main")
