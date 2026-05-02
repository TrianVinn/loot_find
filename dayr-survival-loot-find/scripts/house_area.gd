extends Area2D


func _on_body_entered(body: Node2D) -> void:
	var entered_zone_house = get_tree().get_first_node_in_group("entered_zone_house")
	if body.is_in_group("player"):
		entered_zone_house.visible = true
	
func _on_body_exited(body: Node2D) -> void:
	var entered_zone_house = get_tree().get_first_node_in_group("entered_zone_house")
	if entered_zone_house != null:
		entered_zone_house.visible = false
	

	
