extends Node2D

var inventory = [
	{name = "paper", amount = 0},
	{name = "wood", amount = 0},
	{name = "apple", amount = 5}
]
var dropped_items = [
	{name = "apple", amount = 3}
]

var amount = 3


#func _ready() -> void:
	#for i in inventory:
		#var penis = i.values()
		#if "apple" in penis:
			#i.amount += amount 
			#print(i)
			#print(inventory)
		#else:
			#inventory.append(dropped_items)
