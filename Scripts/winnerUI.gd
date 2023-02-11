extends Node2D


func _on_btnReset_pressed():
	get_tree().change_scene("res://Scenes/mainMenu.tscn")
	global_var.counter_coins = 0

func _on_btnExit_pressed():
	get_tree().quit()
