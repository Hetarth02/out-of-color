class_name Slime
extends PathFollow2D

@onready var hurt_component: HurtComponent = $HurtComponent
@onready var damage_component: DamageComponent = $DamageComponent

var speed := 0.1

func _ready() -> void:
	add_to_group("enemy")
	hurt_component.hurt.connect(on_hurt)
	damage_component.max_damage_reached.connect(on_max_damage_reached)

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	progress_ratio += (delta / 2) * speed


func on_hurt(hit_damage: int) -> void:
	#print("hurt")
	damage_component.apply_damage(hit_damage)

func on_max_damage_reached() -> void:
	#print("max damage reached")
	queue_free()
