extends Marker2D

@export var big_asteroid_scene: PackedScene
@export var min_y: int
@export var max_y: int
# Called when the node enters the scene tree for the first time.
	
func create_asteroid():
	var big_asteroid_instance = big_asteroid_scene.instantiate()
	#big_asteroid_instance.position.y = 200
	add_child(big_asteroid_instance)
	var random_y = randi_range(min_y, max_y)
	big_asteroid_instance.global_position.y = random_y

func _on_timer_timeout() -> void:
	create_asteroid()
