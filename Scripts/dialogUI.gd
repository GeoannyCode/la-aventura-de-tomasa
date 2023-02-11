extends CanvasLayer

enum NPCS{chest, chest2, food, mom, tools, juan, pedro, alex, sofia, diego, kevin, maria, carlos }

const IMG: Dictionary = {
	'CHEST': preload("res://Assets/Player/Faceset.png"),
	'CHEST2': preload("res://Assets/Player/Faceset.png"),
	'FOOD': preload("res://Assets/Player/Faceset.png"),
	'MOM': preload("res://Assets/Characters/Cavegirl2/Faceset.png"),
	'TOOLS': preload("res://Assets/Player/Faceset.png"),
	'JUAN': preload("res://Assets/Characters/Caveman/Faceset.png"),
	'PEDRO': preload("res://Assets/Characters/Caveman2/Faceset.png"),
	'ALEX': preload("res://Assets/Characters/EggBoy/Faceset.png"),
	'SOFIA': preload("res://Assets/Characters/Woman/Faceset.png"),
	'DIEGO':preload("res://Assets/Characters/Boy/Faceset.png"),
	'KEVIN':preload("res://Assets/Characters/Villager3/Faceset.png"),
	'MARIA':preload("res://Assets/Characters/EggGirl/Faceset.png"),
	'CARLOS':preload("res://Assets/Characters/BlueSamurai/Faceset.png")
}

const TEXT_CHEST: Array =[
	'TOMASA: Que cofre tan extraño solo se puede abrir con 3 llaves',
	'TOMASA: Quiza mi madre sepa algo',
]

const TEXT_CHEST2: Array = [
	'TOMASA: Al fin tengo las 3 llaves, podré abrir el cofre que me dejó mi abuelo.',
	'TOMASA: Abriendo...',
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

const TEXT_PEDRO: Array =[
	'PEDRO: Texto de prueba linea 1',
	'PEDRO: Texto de prueba linea 2',
]

const TEXT_ALEX: Array =[
	'ALEX: Texto de prueba linea 1',
	'ALEX: Texto de prueba linea 2',
]

const TEXT_SOFIA: Array =[
	'SOFIA: Texto de prueba linea 1',
	'SOFIA: Texto de prueba linea 2',
]

const TEXT_DIEGO: Array =[
	'DIEGO: Texto de prueba linea 1',
	'DIEGO: Texto de prueba linea 2',
]

const TEXT_KEVIN: Array =[
	'KEVIN: Texto de prueba linea 1',
	'KEVIN: Texto de prueba linea 2',
]

const TEXT_MARIA: Array =[
	'MARIA: Texto de prueba linea 1',
	'MARIA: Texto de prueba linea 2',
]

const TEXT_CARLOS: Array =[
	'CARLOS: Texto de prueba linea 1',
	'CARLOS: Texto de prueba linea 2',
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
		if global_var.counter_coins == 3:
			set_dialog(TEXT_CHEST2[chats],NPCS.chest2, IMG['CHEST2'] )
			chats +=1
		else:
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

#JUAN DIALOG
func _on_juan_body_entered(body):
	if body.is_in_group('player'):
		set_dialog(TEXT_JUAN[chats],NPCS.juan,IMG['JUAN'])
		chats += 1 

#PEDRO DIALOG
func _on_Area2D_body_entered(body):
	if body.is_in_group('player'):
		set_dialog(TEXT_PEDRO[chats],NPCS.pedro,IMG['PEDRO'])
		chats += 1 

#ALEX DIALOG
func _on_alex_body_entered(body):
	if body.is_in_group('player'):
		set_dialog(TEXT_ALEX[chats],NPCS.alex,IMG['ALEX'])
		chats += 1 

#SOFIA DIALOG
func _on_sofia_body_entered(body):
	if body.is_in_group('player'):
		set_dialog(TEXT_SOFIA[chats],NPCS.sofia,IMG['SOFIA'])
		chats += 1

#DIEGO DIALOG
func _on_diego_body_entered(body):
	if body.is_in_group('player'):
		set_dialog(TEXT_DIEGO[chats],NPCS.diego,IMG['DIEGO'])
		chats += 1
		
#KEVIN DIALOG
func _on_kevin_body_entered(body):
	if body.is_in_group('player'):
		set_dialog(TEXT_KEVIN[chats],NPCS.kevin,IMG['KEVIN'])
		chats += 1

#MARIA DIALOG
func _on_maria_body_exited(body):
	if body.is_in_group('player'):
		set_dialog(TEXT_MARIA[chats],NPCS.maria,IMG['MARIA'])
		chats += 1
		
#CARLOS DIALOG
func _on_carlos_body_entered(body):
	if body.is_in_group('player'):
		set_dialog(TEXT_CARLOS[chats],NPCS.carlos,IMG['CARLOS'])
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
		NPCS.chest2:
			if chats < TEXT_CHEST2.size():
				set_dialog(TEXT_CHEST2[chats],NPCS.chest2, IMG['CHEST2'])
				chats += 1
			else:
				#dialogue ended
				chats -= TEXT_CHEST.size()
				hide()
				get_tree().paused = false
				get_tree().change_scene("res://Scenes/winnerUI.tscn")
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
		NPCS.pedro:
			if chats < TEXT_PEDRO.size():
				set_dialog(TEXT_PEDRO[chats],NPCS.pedro, IMG['PEDRO'])
				chats += 1
			else:
				#dialogue ended
				chats -= TEXT_PEDRO.size()
				hide()
				get_tree().paused = false 
		NPCS.alex:
			if chats < TEXT_ALEX.size():
				set_dialog(TEXT_ALEX[chats],NPCS.alex, IMG['ALEX'])
				chats += 1
			else:
				#dialogue ended
				chats -= TEXT_ALEX.size()
				hide()
				get_tree().paused = false 
		NPCS.sofia:
			if chats < TEXT_SOFIA.size():
				set_dialog(TEXT_SOFIA[chats],NPCS.alex, IMG['SOFIA'])
				chats += 1
			else:
				#dialogue ended
				chats -= TEXT_SOFIA.size()
				hide()
				get_tree().paused = false 
		NPCS.diego:
			if chats < TEXT_DIEGO.size():
				set_dialog(TEXT_DIEGO[chats],NPCS.diego, IMG['DIEGO'])
				chats += 1
			else:
				#dialogue ended
				chats -= TEXT_DIEGO.size()
				hide()
				get_tree().paused = false
		NPCS.kevin:
			if chats < TEXT_DIEGO.size():
				set_dialog(TEXT_KEVIN[chats],NPCS.kevin, IMG['KEVIN'])
				chats += 1
			else:
				#dialogue ended
				chats -= TEXT_KEVIN.size()
				hide()
				get_tree().paused = false
		NPCS.maria:
			if chats < TEXT_MARIA.size():
				set_dialog(TEXT_MARIA[chats],NPCS.maria, IMG['MARIA'])
				chats += 1
			else:
				#dialogue ended
				chats -= TEXT_MARIA.size()
				hide()
				get_tree().paused = false
		NPCS.carlos:
			if chats < TEXT_CARLOS.size():
				set_dialog(TEXT_CARLOS[chats],NPCS.carlos, IMG['CARLOS'])
				chats += 1
			else:
				#dialogue ended
				chats -= TEXT_CARLOS.size()
				hide()
				get_tree().paused = false





