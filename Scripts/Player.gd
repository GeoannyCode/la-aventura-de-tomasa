extends KinematicBody2D

signal player_f
export (int) var speed = 400
var velocity = Vector2.ZERO
var in_area = null

func get_inputs():
	velocity = Vector2()
	if(Input.is_action_pressed("intro")):
		emit_signal("player_f", in_area)
	if(Input.is_action_pressed("move_up")):
		velocity.y -= speed 
		$AnimatedSprite.play("up")
	if(Input.is_action_pressed("move_down")):
		velocity.y += speed
		$AnimatedSprite.play("down")
	if(Input.is_action_pressed("move_left")):
		velocity.x -= speed
		$AnimatedSprite.play("left")
	if(Input.is_action_pressed("move_right")):
		velocity.x += speed
		$AnimatedSprite.play("right")
	if velocity.length() > 0:
		velocity = velocity.normalized() * speed
	else:
		$AnimatedSprite.stop()
	
func _physics_process(_delta):
	get_inputs()
	velocity = move_and_slide(velocity)	 
		

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
