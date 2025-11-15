extends Node2D

@onready var canvas_modulate: CanvasModulate = $CanvasModulate

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	Global.main_node = self
	
	canvas_modulate.visible = Global.is_night


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass
