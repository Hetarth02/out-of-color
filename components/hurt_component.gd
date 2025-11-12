class_name HurtComponent
extends Area2D

#@export var tool: DataTypes.Tools = DataTypes.Tools.None

signal hurt

func _on_area_entered(area: Area2D) -> void:
	if area is HitComponent:
		hurt.emit(area.hit_damage)
	
	if area.name == "Kingdom":
		print("enemy entered kingdom")
		hurt.emit(100)
	
	#if tool == hit_component.current_tool:
