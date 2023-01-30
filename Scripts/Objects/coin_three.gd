extends Node2D

func _ready():
	if !global_var.coin_three:
		queue_free()
		
func _on_coin_body_entered(body):
	if body.is_in_group("player"):
		global_var.counter_coins += 1
		global_var.coin_three = false
		queue_free()
	pass
