extends CanvasLayer


# Declare member variables here. Examples:
# var a = 2
# var b = "text"


# Called when the node enters the scene tree for the first time.
func _ready():
	printText("Hello World! Hello World! Hello World! Hello World! Hello World! Hello World!",6.0)
	pass # Replace with function body.



func printText(nextLine : String, speed = 2.0):
	$Screen/TextBox.bbcode_text = "[center]" + nextLine
	$Screen/TextBox/Print.playback_speed = 1 / speed
	$Screen/TextBox/Print.play("Print")
	pass

