extends Node2D

@export var crackTimer : int

@export var spriteList : Array

# Called when the node enters the scene tree for the first time.
func _ready():
	$Dijon.finished.connect(_on_song_finish)
	runSprites()
	
func _on_song_finish():
	await get_tree().create_timer(4).timeout
	Events.changeScene.emit("outro")
	
func runSprites():
	for nodepath in spriteList:
		await get_tree().create_timer(crackTimer).timeout
		get_node(nodepath).visible = true
		GameManager.crackNumber += 1

