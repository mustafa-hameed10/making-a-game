extends CharacterBody2D

@export_category("Stats")
@export var speed = 200

var move_direction = Vector2.ZERO

func _physics_process(delta: float) -> void:
	movement_loop()
	
func movement_loop():
	move_direction.x = int(Input.is_action_pressed('d')) - int(Input.is_action_pressed('a'))
	move_direction.y = int(Input.is_action_pressed('s')) - int(Input.is_action_pressed('w'))
	var motion = move_direction.normalized() * speed
	set_velocity(motion)
	move_and_slide()
