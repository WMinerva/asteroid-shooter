extends Node

var score = 0
var is_game_over = false

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
# func _process(delta: float) -> void:
# 	pass

func add_score(points):
	score += points
	
func set_is_game_over(value):
	is_game_over = value
