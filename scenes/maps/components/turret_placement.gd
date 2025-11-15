extends TextureButton

@onready var point_light_2d: PointLight2D = $PointLight2D

var turret = preload("res://scenes/weapons/tank.tscn")

func _ready() -> void:
	point_light_2d.visible = Global.is_night

func _on_pressed() -> void:
	var new_turret: Node2D = turret.instantiate()
	Global.main_node.add_child(new_turret)
	new_turret.position = self.position + Vector2(16, 16)
	queue_free()
