extends CharacterBody2D

const SPEED = 120.0
var mouse_position = null




# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	mouse_position = get_global_mouse_position()
	
	"""
	if Input.is_action_pressed("forward"):
		var direction = (mouse_position - position).normalized()
		velocity = (direction * SPEED)
	"""
	
	#couldnt make it follow mouse

	var direction := Input.get_axis("forward", "down")
	if direction:
		velocity.y = direction * SPEED
	else:
		velocity.y = move_toward(velocity.x, 0, SPEED)

	move_and_slide()
	
