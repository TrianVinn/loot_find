extends Panel

var inventory_player = Inventory.inventory
var slots
var item

func _on_texture_button_button_down() -> void:
	visible = not visible
	update_inventory()
	
	
func update_inventory():
	var containers = get_tree().get_first_node_in_group("inventory_slots")
	slots = containers.get_children()
	for slot in slots:
		pass
		
	for i in inventory_player.size():
		item = inventory_player[i]
		var slot = slots[i]
		var icon = slot.get_node("TextureRect")
		var amount_label = slot.get_node("Label")
		icon.texture = load(item.texture)
		
		var item_amount_min = item.min_amount
		var item_amount_max = item.max_amount
		var item_amount = str(int(randf_range(item_amount_min, item_amount_max)))
		amount_label.text = item_amount + "х"
	
		
	
