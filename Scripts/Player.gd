extends KinematicBody2D

signal player_f
export (int) var speed = 400
onready var _animation: =$AnimatedSprite
var velocity = Vector2.ZERO
var in_area = null
var dialog = false

func get_inputs():
	velocity = Vector2()
	if(Input.is_action_pressed("intro")):
		emit_signal("player_f", in_area)

func _physics_process(delta):
	var direction := Vector2(
		Input.get_action_strength("move_right") - Input.get_action_strength("move_left"),
		Input.get_action_strength("move_down") - Input.get_action_strength("move_up")
	) 
	
	if direction.length() == 0:
		_animation.stop()
	else:
		if direction.length() > 1.0 and direction[0] == 1:
			_animation.play("right")
			direction = direction.normalized()
	
		elif direction.length() > 1.0 and direction[0] == -1:
			_animation.play("left")
			direction = direction.normalized()
		else:
			if direction[1] == 1:
				_animation.play("down")
			if direction[1] == -1:
				_animation.play("up")
			if direction[0] == 1:
				_animation.play("right")
			if direction[0] == -1:
				_animation.play("left")		
	move_and_slide(speed * direction)

func _unhandled_input(event):
	if event.is_action_pressed("intro"):
		emit_signal("player_f", in_area)
	
		
func _on_player_area_entered(area):
	if area.is_in_group("steps_down"):
		in_area = area
		$"F-key".show()
	if area.is_in_group("steps_up"):
		in_area = area
		$"F-key".show()
	if area.is_in_group("door1"):
		in_area = area
		$"F-key".show()
	if area.is_in_group("door_house"):
		in_area = area
		$"F-key".show()

		
func _on_player_area_exited(area):
	if area.is_in_group("steps_down"):
		in_area = null
		$"F-key".hide()
	if area.is_in_group("steps_up"):
		in_area = null
		$"F-key".hide()
	if area.is_in_group("door1"):
		in_area = null
		$"F-key".hide()
	if area.is_in_group("door_house"):
		in_area = null
		$"F-key".hide()

