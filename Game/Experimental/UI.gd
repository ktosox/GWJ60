extends CanvasLayer


export var printing = false

# Called when the node enters the scene tree for the first time.
func _ready():
	printText("Hello World! Hello World! Hello World! Hello World! Hello World! Hello World!",1.0)
	pass # Replace with function body.



func printText(nextLine : String, speed = 2.0):
	printing = true
	$Screen/TextBox.bbcode_text = "[center]" + nextLine
	$Screen/TextBox/Print.playback_speed = 1 / speed
	$Screen/TextBox/Print.play("Print")
	pass

func _input(event):
	if printing and event.is_action_pressed("ui_accept"):
		$Screen/TextBox/Print.playback_speed = 1
		$Screen/TextBox/Print.play("Skip")
		


func _on_Print_animation_finished(anim_name):
	printing = false
	GM.dialog_finished()
	pass # Replace with function body.
