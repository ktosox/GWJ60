extends RigidBody2D


# Declare member variables here. Examples:
# var a = 2
# var b = "text"


# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _physics_process(delta):
	if rotation != 0:
		rotation -= lerp_angle(rotation,0,0.2) * delta * 2


func _on_Draggy_dragging(state):
	if state:
		$VFX.play("Grab")
	else:
		$VFX.play("Drop")
	pass # Replace with function body.
