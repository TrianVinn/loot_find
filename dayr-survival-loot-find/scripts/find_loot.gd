extends Button


func _ready() -> void:
	visible = false

func _on_button_down() -> void:
	var player = get_tree().get_first_node_in_group("player")
	var furniture = player.current_furniture
	var dropped_items = furniture.dropped_items
	var inventory = Inventory.inventory

	
	if furniture.is_looted == false:
		furniture.is_looted = true
		furniture.cikl_()
		visible = false
	else:
		visible = false
	
