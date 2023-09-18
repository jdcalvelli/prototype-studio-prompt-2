extends Node2D


# Called when the node enters the scene tree for the first time.
func _ready():
	$Dijon.finished.connect(_on_song_finish)
	
func _on_song_finish():
	await get_tree().create_timer(4).timeout
	Events.changeScene.emit("outro")
