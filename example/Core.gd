extends Sprite

export (Resource) var controller

var height

func _ready():
	height = get_texture().get_height() / 2
	pass

func _input(event):	
	var v_dir = controller.directional_event(event)
	change_direction(v_dir)
	pass

func change_direction(v_dir):
	$Knob.set_position(v_dir * height)
	pass
