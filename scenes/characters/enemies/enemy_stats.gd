extends Resource
class_name EnemyStats

@export var name: String
@export var type: Globals.EnemyTypes
@export var speed: float
@export var hp: int

func get_sprite_texture():
	match type:
		Globals.EnemyTypes.CIRCLE:
			return load("res://assets/characters/slime.png")
		Globals.EnemyTypes.TRIANGLE:
			return load("res://assets/characters/triangle.png")
