extends KinematicBody2D

var velocity = Vector2(0,0)
var goForward = true

func _physics_process(delta):
	
	if is_on_floor():
		goForward = not goForward	
	
	if is_on_ceiling():
		goForward = not goForward	
	
	if goForward == true:
		velocity.y = 50
		$AnimatedSprite.play("down")
	else:
		velocity.y = -50
		$AnimatedSprite.play("up")
		
	velocity = move_and_slide(velocity, Vector2.UP)
		
func _on_Area2D_area_entered(area):
	if area.is_in_group("player"):
		goForward = not goForward	
