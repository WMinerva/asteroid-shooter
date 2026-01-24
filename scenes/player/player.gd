extends CharacterBody2D

@export var speed:int
@export var laser_scene: PackedScene

func create_laser():
	var laser_instance = laser_scene.instantiate()
	add_sibling(laser_instance)
	#get_parent().add_child(laser_instance)
	laser_instance.position= position

func process_input():
	var y_input = Input.get_axis("up","down")
	velocity.y = y_input * speed
	# print(y_input)
	var x_input = Input.get_axis("left","right")
	velocity.x = x_input * speed
	# velocity = Vector2(x_input,y_input) * speed

	

func _physics_process(delta: float) -> void:
	if Input.is_action_just_pressed("shoot"):
		#print("Disparar")
		create_laser()
	process_input()
	move_and_slide()


func _on_detection_area_area_entered(area: Area2D) -> void:
	if area.is_in_group("asteroids"):
		queue_free()
