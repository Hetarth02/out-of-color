extends Control

@onready var wave_count: Label = %WaveCount
@onready var point_count: Label = %PointCount

func _ready() -> void:
	Global.points_update.connect(on_points_update)
	Global.wave_start.connect(on_wave_start)
	Global.hud = self

func on_wave_start(wave) -> void:
	wave_count.text = "Wave: " + str(wave)

func on_points_update(points) -> void:
	point_count.text = "Points: " + str(points)
