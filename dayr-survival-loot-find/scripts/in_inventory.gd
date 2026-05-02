extends Button

var item_data = []
var is_pressed = false

func in_unventory() -> void:
	var containers = get_tree().get_first_node_in_group("loot_slots")
	var player = get_tree().get_first_node_in_group("player")
	var slots = containers.get_children()
	for i in slots:
		if i.button_pressed == true:
			item_data = i.item_data
			if item_data != null:
				player.add_to_inventory(item_data)
				i.item_data = null
				var icon = i.get_node("TextureRect")
				var label = i.get_node("Label")
				icon.texture = null
				label.text = ""
				
			

		
