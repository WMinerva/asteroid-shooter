extends Marker2D

@export var asteroids: Array[PackedScene]
@export var min_y: int
@export var max_y: int

@onready var timer: Timer = $Timer

# Called when the node enters the scene tree for the first time.


func create_asteroid():
	if GameManager.is_game_over:
		timer.stop()
	var random_asteroid_scene = asteroids.pick_random()
	var random_asteroid_instance = random_asteroid_scene.instantiate()
	#big_asteroid_instance.position.y = 200
	add_child(random_asteroid_instance)
	var random_y = randi_range(min_y, max_y)
	random_asteroid_instance.global_position.y = random_y


func _on_timer_timeout() -> void:
	# create_asteroid()
	# create_asteroid()
	# o usar un for
	create_asteroid()
