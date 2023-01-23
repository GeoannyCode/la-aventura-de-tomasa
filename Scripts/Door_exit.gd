extends Area2D

export var object_id = ""

func inspect():
	OS.alert("Exit_House...")
	get_tree().change_scene("res://Scenes/Level3.tscn")
