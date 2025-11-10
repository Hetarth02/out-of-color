extends Node2D

var target = null
var direction: Vector2

var speed: float = 800.0
var damage: float = 1

# AOE config
var pierce: int = 1

func _process(delta):
	if target:
		direction = (target.position - position).normalized()
		position += direction * speed * delta

func _on_disappear_timer_timeout():
	queue_free()

func _on_hit_component_area_entered(area: Area2D) -> void:
	# not AOE
	queue_free()
	
	#var obj = area.get_parent()
	#if obj.is_in_group("enemy"):
		#pierce -= 1
	#if pierce == 0:
		#queue_free()
	
