extends Sprite2D

func _process(delta):
	# set crack scale based on inverse of zoom
	var cam_zoom = get_parent().zoom
	scale = Vector2((1.0 / cam_zoom.x), (1.0 / cam_zoom.y))
