extends Button

func _on_button_down() -> void:
	$"../Panel".visible = not visible
