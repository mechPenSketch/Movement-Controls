extends Controller

func directional_event(event)->Vector2:
	if event is InputEvent:
		if event.is_action_pressed(input_left):
			dir.x -= 1
		elif event.is_action_released(input_left):
			dir.x += 1
		elif event.is_action_pressed(input_right):
			dir.x += 1
		elif event.is_action_released(input_right):
			dir.x -= 1
		elif event.is_action_pressed(input_up):
			dir.y -= 1
		elif event.is_action_released(input_up):
			dir.y += 1
		elif event.is_action_pressed(input_down):
			dir.y += 1
		elif event.is_action_released(input_down):
			dir.y -= 1
	
	return dir
	pass
