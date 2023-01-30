extends Node2D

var coins: int = 0

func _on_Player_player_f(area):
	if area != null:
		area.inspect() 
		
 
