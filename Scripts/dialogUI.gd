extends CanvasLayer

enum NPCS{chest, food, mom, tools, juan}

const IMG: Dictionary = {
	'CHEST': preload("res://Assets/Player/Faceset.png"),
	'FOOD': preload("res://Assets/Player/Faceset.png"),
	'MOM': preload("res://Assets/Characters/Cavegirl2/Faceset.png"),
	'TOOLS': preload("res://Assets/Player/Faceset.png"),
	'JUAN': preload("res://Assets/Characters/Caveman/Faceset.png")
}

const TEXT_CHEST: Array =[
	'TOMASA: Texto de prueba linea 1',
	'TOMASA: Texto de prueba linea 2',
]

const TEXT_FOOD: Array =[
	'TOMASA: Texto de prueba linea 1',
	'TOMASA: Texto de prueba linea 2',
]

const TEXT_MOM: Array =[
	'MOM: Texto de prueba linea 1',
	'MOM: Texto de prueba linea 2',
]

const TEXT_TOOLS: Array =[
	'TOMASA: Texto de prueba linea 1',
	'TOMASA: Texto de prueba linea 2',
]

const TEXT_JUAN: Array =[
	'JUAN: Texto de prueba linea 1',
	'JUAN: Texto de prueba linea 2',
]

var chats: int = 0
var npc: int = 0

func set_dialog(TEXT:String, NPC:int, IMG: Texture):
	show()
	get_tree().paused = true
	$DialogText.text = TEXT
	npc = NPC
	$Faces.texture = IMG
	$AnimationText.play("set_text")
	

#CHEST DIALOG
func _on_CHEST_body_entered(body):
	if body.is_in_group('player'):
		set_dialog(TEXT_CHEST[chats],NPCS.chest,IMG['CHEST'])
		chats += 1 


#FOOD DIALOG
func _on_Food_body_entered(body):
	if body.is_in_group('player'):
		set_dialog(TEXT_FOOD[chats],NPCS.food,IMG['FOOD'])
		chats += 1 

#MOM DIALOG
func _on_Mom_body_entered(body):
	if body.is_in_group('player'):
		set_dialog(TEXT_MOM[chats],NPCS.mom,IMG['MOM'])
		chats += 1 

#TOOLS DIALOG
func _on_tools_body_entered(body):
	if body.is_in_group('player'):
		set_dialog(TEXT_TOOLS[chats],NPCS.tools,IMG['TOOLS'])
		chats += 1 
		

func _on_juan_body_entered(body):
	if body.is_in_group('player'):
		set_dialog(TEXT_JUAN[chats],NPCS.juan,IMG['JUAN'])
		chats += 1 


func _on_Button_pressed():
	match npc:
		NPCS.chest:
			if chats < TEXT_CHEST.size():
				set_dialog(TEXT_CHEST[chats],NPCS.chest, IMG['CHEST'])
				chats += 1
			else:
				#dialogue ended
				chats -= TEXT_CHEST.size()
				hide()
				get_tree().paused = false
		NPCS.food:
			if chats < TEXT_FOOD.size():
				set_dialog(TEXT_FOOD[chats],NPCS.food, IMG['FOOD'])
				chats += 1
			else:
				#dialogue ended
				chats -= TEXT_FOOD.size()
				hide()
				get_tree().paused = false 
		NPCS.mom:
			if chats < TEXT_MOM.size():
				set_dialog(TEXT_MOM[chats],NPCS.mom, IMG['MOM'])
				chats += 1
			else:
				#dialogue ended
				chats -= TEXT_MOM.size()
				hide()
				get_tree().paused = false 
		NPCS.tools:
			if chats < TEXT_TOOLS.size():
				set_dialog(TEXT_TOOLS[chats],NPCS.tools, IMG['TOOLS'])
				chats += 1
			else:
				#dialogue ended
				chats -= TEXT_TOOLS.size()
				hide()
				get_tree().paused = false 
		NPCS.juan:
			if chats < TEXT_JUAN.size():
				set_dialog(TEXT_JUAN[chats],NPCS.juan, IMG['JUAN'])
				chats += 1
			else:
				#dialogue ended
				chats -= TEXT_JUAN.size()
				hide()
				get_tree().paused = false 

