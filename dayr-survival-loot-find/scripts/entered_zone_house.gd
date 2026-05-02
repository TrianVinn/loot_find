extends Button

func _ready() -> void:
	visible = false

func _on_button_down() -> void:
	get_tree().change_scene_to_file("res://zone_loot_house.tscn")
