extends Node2D

# Called when the node enters the scene tree for the first time.
# func _ready() -> void:
# 	pass  # Replace with function body.
#
#
# # Called every frame. 'delta' is the elapsed time since the previous frame.
# func _process(delta: float) -> void:
# 	pass

@export var power_up_scene: PackedScene
@export var min_y: int
@export var max_y: int
@export var min_x: int
@export var max_x: int

@onready var timer: Timer = $Timer


func create_power_up():
	if GameManager.is_game_over:
		timer.stop()
		return
	var power_up_instance = power_up_scene.instantiate()
	add_child(power_up_instance)
	var random_y = randi_range(min_y, max_y)
	var random_x = randi_range(min_x, max_x)
	power_up_instance.global_position = Vector2(random_x, random_y)


func _on_timer_timeout() -> void:
	create_power_up()
