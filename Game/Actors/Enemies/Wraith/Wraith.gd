extends KinematicBody2D


# Declare member variables here. Examples:
# var a = 2
# var b = "text"
onready var oldPos = global_position

var target = null

var speed = 50

# Called when the node enters the scene tree for the first time.
func _ready():
	$Sprite.play("Walk")
	pass # Replace with function body.



# Called every frame. 'delta' is the elapsed time since the previous frame.
func _physics_process(delta):
	move_and_collide(global_position.direction_to(get_global_mouse_position()) * delta * speed,false)

func _process(delta):
	if oldPos.x > global_position.x :
		$Sprite.scale.x = 1
	elif oldPos.x < global_position.x :
		$Sprite.scale.x = -1
	oldPos = global_position
	pass


