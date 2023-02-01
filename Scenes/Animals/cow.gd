extends KinematicBody2D

var velocity = Vector2(0,0)
var goForeward = true

func _physics_process(delta):
	
	if is_on_wall():
		$AnimatedSprite.flip_h = not $AnimatedSprite.flip_h
		goForeward = not goForeward
	
	if goForeward == true:
		velocity.x = -50
	else:
		velocity.x = 50
		
	velocity = move_and_slide(velocity, Vector2.UP)
