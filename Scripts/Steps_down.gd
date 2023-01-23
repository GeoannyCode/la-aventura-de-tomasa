extends Area2D

export var object_id = ""

func inspect():
	OS.alert("Down....")
	get_tree().change_scene("res://Scenes/Level2.tscn")
