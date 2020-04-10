extends Controller

func directional_event(event)->Vector2:
	if event is InputEventJoypadMotion:
		
		if event.is_action(input_left):
			if event.get_action_strength(input_left):
				dir.x = -event.get_action_strength(input_left)
			else:
				dir.x = event.get_action_strength(input_right)
		elif event.is_action(input_up):
			if event.get_action_strength(input_up):
				dir.y = -event.get_action_strength(input_up)
			else:
				dir.y = event.get_action_strength(input_down)
		
	return dir
	pass
