extends Control

func _on_start_pressed():
	get_tree().change_scene("res://Scenes/Level.tscn")

func _on_exit_pressed():
	get_tree().quit()
	
func _on_CheckButton_pressed():
	if $musicMenu.playing == true:
		$musicMenu.playing = false
	else:
		$musicMenu.playing =  true
