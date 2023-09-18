extends Node

var keyboardKeys = [
	KEY_Q, KEY_W, KEY_E, KEY_R, KEY_T, KEY_Y, KEY_U, KEY_O, KEY_P,
	KEY_A, KEY_S, KEY_D, KEY_F, KEY_G, KEY_H, KEY_J, KEY_K, KEY_L,
	KEY_Z, KEY_X, KEY_C, KEY_V, KEY_B, KEY_N, KEY_M,
]

var selectedKeyboardKeys = []

var numKeysToSelect = 15

var crackNumber = 0

func _ready():
	# connect to signal
	Events.changeScene.connect(_on_change_scene)

func _on_change_scene(nextScene : String):
	match nextScene:
		"intro":
			get_tree().change_scene_to_file("res://scenes/intro.tscn")
		"main":
			get_tree().change_scene_to_file("res://scenes/main_scene.tscn")
				# this is to pick non repeating
			var n = 0
			while n < numKeysToSelect:
				var keyToAdd = keyboardKeys.pick_random()
				if selectedKeyboardKeys.has(keyToAdd):
					continue
				else:
					selectedKeyboardKeys.append(keyToAdd)
					n += 1
			print(selectedKeyboardKeys)
		"outro":
			get_tree().change_scene_to_file("res://scenes/outro.tscn")
	
