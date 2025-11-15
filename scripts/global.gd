extends Node

enum EnemyTypes {
	CIRCLE,
	TRIANGLE,
	SQUARE,
}

signal wave_start(wave)

var is_night: bool = false

var hud: Control
var wave_count: Label = null
var main_node: Node2D
var current_map: Node2D
var selected_map: Node2D

func _ready() -> void:
	wave_start.connect(on_wave_start)

func on_wave_start(wave) -> void:
	wave_count.text = "Wave: " + str(wave)

func restart_current_level():
	var currentLevelScene := load(current_map.scene_file_path)
	current_map.queue_free()
	var new_map = currentLevelScene.instantiate()
	new_map.map_type = selected_map
	main_node.add_child(new_map)
	hud.reset()
