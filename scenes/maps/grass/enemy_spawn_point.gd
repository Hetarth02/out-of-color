extends Path2D

var slime = preload("res://scenes/characters/enemies/slime/slime.tscn")

func _on_timer_timeout() -> void:
	var new_slime: Slime = slime.instantiate()
	#new_slime.speed = 0.05
	add_child(new_slime)
	
