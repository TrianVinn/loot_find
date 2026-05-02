extends Area2D

var items_chest = [
	{name = "paper", chance_drop = 100, min_amount = 2.0, max_amount = 10.0, amount = 0, texture = "res://paper.png"},
	]
var dropped_items = []
var is_looted = false
var slots
var item
var item_amount


func _on_body_entered(body: Node2D) -> void:
	if body.is_in_group("player") and not is_looted:
		$"../../../CanvasLayer/find_loot".visible = true
		body.current_furniture = self
		
		
		
func _on_body_exited(body: Node2D) -> void:
	if body.is_in_group("player"):
		$"../../../CanvasLayer/find_loot".visible = false
		body.current_furniture = null
		slots_clear()
		#dropped_items.clear()
		var containers = get_tree().get_first_node_in_group("loot_slots")
		if slots == null:
			return
		if slots != null:
			return
		slots = containers.get_children()
		for i in dropped_items.size():
			item = dropped_items[i]
			var sl = slots[i]
			sl.item_data = null
				
		
	
func slots_clear():
	var containers = get_tree().get_first_node_in_group("loot_slots")
	if containers != null:
		slots = containers.get_children()
		for slot in slots:
			var icon = slot.get_node("TextureRect")
			var label = slot.get_node("Label")
			icon.texture = null
			label.text = ""
			





func cikl_():
					### Цикл проходиться по каждому предмету из массива ###
						### и добавляет их в массив выпавших предметов ###
							### если сработал шанс ###
	#dropped_items.clear()
	for item in items_chest:
		if randi() % 101 <= item.chance_drop:
			dropped_items.append(item)
	for dropped_item in dropped_items.size():
		item = dropped_items[dropped_item]
		
				### Получаем доступ к контейнерам zone_loot.GridContainer ###
					### получаем массив в slots ячейки ###
	var containers = get_tree().get_first_node_in_group("loot_slots")
	slots = []
	
	if containers != null:
		slots = containers.get_children()
		for slot in slots:
			pass
				### Перебираем массив выпавших предметов ###
				### Присваем индексы выпавшим предметам и ячейкам ###
				### Получаем в переменную иконку ячейки и заменяем на предмет ###
	for i in dropped_items.size():
		item = dropped_items[i]       
		var slot = slots[i]
		var icon = slot.get_node("TextureRect")
		icon.texture = load(item.texture)
		
		
				### Заменяем у выпавших предметов, их полученное количество  ###
				### берем минимальное и максимальное значение amount и получаем случайное число ###
	for i in dropped_items.size():
		item = dropped_items[i] 
		var item_amount_min = item.min_amount
		var item_amount_max = item.max_amount
		item_amount = str(int(randf_range(item_amount_min, item_amount_max)))
		var slot = slots[i]
		var amount_label = slot.get_node("Label")
		amount_label.text = item_amount + "х"
		item.amount += int(item_amount)
		
		
	for i in dropped_items.size():
		item = dropped_items[i]
		var sl = slots[i]
		sl.item_data = item
		
		

	
	
	
