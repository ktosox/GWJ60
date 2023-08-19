extends TileMap


# Declare member variables here. Examples:
# var a = 2
# var b = "text"


# Called when the node enters the scene tree for the first time.
func _ready():
	shuffle_grass()
	pass # Replace with function body.

func shuffle_grass():
	for g in get_used_cells():
		if get_cellv(g) == 1:
			set_cellv(g,1,false,false,false,Vector2(min(10,randi()%14),0))
	pass
# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass
