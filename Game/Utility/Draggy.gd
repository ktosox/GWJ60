extends DampedSpringJoint2D

signal dragging(state)

var drag = false

export var dragRange = 150.0 # max distance between draggy and dragged object


func start_drag():
	drag = true
	emit_signal("dragging",true)
	$GrabbyPart/Line2D.visible = true
	pass

func end_drag():
	emit_signal("dragging",false)
	drag = false
	$GrabbyPart/Line2D.visible = false
	pass


func _physics_process(delta):
	
	if drag:
		$GrabbyPart.global_position = get_global_mouse_position()
		if $GrabbyPart.global_position.distance_to(get_parent().global_position) > dragRange :
			end_drag()
	else:
		global_rotation = 0
		$GrabbyPart.global_position = global_position

func _input(event):
	if event.is_class("InputEventMouseButton") and drag:
		if event.button_index == 1 and !event.is_pressed():
			end_drag()
			

func _on_GrabbyPart_input_event(viewport, event:InputEvent, shape_idx):
	if event.is_class("InputEventMouseButton") and !drag:
		if event.button_index == 1 and event.is_pressed():
			start_drag()
