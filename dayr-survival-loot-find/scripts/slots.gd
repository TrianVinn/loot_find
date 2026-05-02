extends TextureButton

var item_data 

func _ready() -> void:
	pressed.connect(on_click)

func on_click():
	#print(button_pressed)
	if item_data != null:
		var player = get_tree().get_first_node_in_group("player")
		if player != null:
			pass
			#player.add_to_inventory(item_data)
			#print(item_data)
