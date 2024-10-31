extends Node

func _input(event):
	if not event is InputEventMouseButton:
		return
	var is_mouse_wheel = (event.button_index == BUTTON_WHEEL_UP or event.button_index == BUTTON_WHEEL_DOWN)
	if not is_mouse_wheel or not event.pressed:
		return
	var fishing = get_node('/root/playerhud/fishing3')
	if not fishing:
		return
	fishing._on_Button_pressed()
