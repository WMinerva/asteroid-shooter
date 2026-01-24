extends Area2D

@export var max_speed: int
@export var min_speed: int
@export var min_rotation: int
@export var max_rotation: int

var random_speed
var random_rotation
# Called when the node enters the scene tree for the first time.
func _ready() -> void:

	random_speed = randi_range(min_speed, max_speed)

	random_rotation = randi_range(min_rotation, max_rotation)

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	
	position.x += -random_speed * delta

	rotation_degrees = random_rotation
	


func _on_area_entered(area: Area2D) -> void:
	#print("Area x")
	if area.is_in_group("laser") or area.is_in_group("player"):
		queue_free()
