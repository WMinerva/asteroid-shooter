extends Area2D

@export var speed:int



# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	position.x += speed * delta


func _on_area_entered(area: Area2D) -> void:
	#pass # Replace with function body.
	if area.is_in_group("asteroids"):
		queue_free()


func _on_visible_on_screen_notifier_2d_screen_exited() -> void:
	queue_free()	
