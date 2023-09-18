extends Sprite2D

@export var openSprite : Texture2D
@export var closedSprite : Texture2D
@export var crackValue : int

func _ready():
	texture = openSprite

func _process(delta):
	# set crack scale based on inverse of zoom
	var cam_zoom = get_parent().zoom
	scale = Vector2((1.0 / cam_zoom.x), (1.0 / cam_zoom.y))
	# check for correct input
	if Input.is_key_pressed(GameManager.selectedKeyboardKeys[crackValue]):
		texture = closedSprite
	else:
		texture = openSprite
