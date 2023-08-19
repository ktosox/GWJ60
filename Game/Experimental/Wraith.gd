extends RigidBody2D


# Declare member variables here. Examples:
# var a = 2
# var b = "text"
onready var oldPos = get_global_mouse_position()

# Called when the node enters the scene tree for the first time.
func _ready():
	
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	oldPos = global_position
	global_position = get_global_mouse_position()
	if oldPos.x > global_position.x :
		$AnimatedSprite.play("Left")
	elif oldPos.x < global_position.x :
		$AnimatedSprite.play("Right")
	pass


