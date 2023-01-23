extends Area2D

export var object_id = ""

func inspect():
	OS.alert("Up...")
	get_tree().change_scene("res://Scenes/Level.tscn")
