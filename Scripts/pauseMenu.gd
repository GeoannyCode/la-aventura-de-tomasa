extends Node2D

func _input(event: InputEvent) -> void:
	
	if Input.is_action_pressed("esc"):
		get_tree().paused = not get_tree().paused
		$CanvasLayer/AudioStreamPlayer.play()
		$CanvasLayer.visible = not $CanvasLayer.visible



func _on_Button_pressed():
	get_tree().quit()


func _on_btnBack_pressed():
	get_tree().paused = not get_tree().paused
	$CanvasLayer/AudioStreamPlayer.play()
	$CanvasLayer.visible = not $CanvasLayer.visible
	
	
var master_bus = AudioServer.get_bus_index("Master")


func _on_HSlider_value_changed(value):
	AudioServer.set_bus_volume_db(master_bus,value)
	
	if value == -30:
		AudioServer.set_bus_mute(master_bus, true)
	else: 
		AudioServer.set_bus_mute(master_bus, false)
