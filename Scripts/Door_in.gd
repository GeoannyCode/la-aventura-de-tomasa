extends Area2D

export var object_id = ""

func inspect():
	OS.alert("Enter_house....")
	get_tree().change_scene("res://Scenes/Level2.tscn")
