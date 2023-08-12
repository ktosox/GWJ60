extends Area2D


# Declare member variables here. Examples:
# var a = 2
# var b = "text"


# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass
func toggle_color():
	if $Polygon2D.color == ColorN("white"):
		$Polygon2D.color = ColorN("red")
	else:
		$Polygon2D.color = ColorN("white")

	pass

func _on_Button_input_event(viewport, event:InputEvent, shape_idx):
	if event.is_class("InputEventMouseButton"):
		if event.is_pressed():
			toggle_color()

	pass # Replace with function body.
