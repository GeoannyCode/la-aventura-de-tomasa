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
	'TOMASA: Qué cofre tan extraño...',
	'TOMASA: Solo se puede abrir con 3 llaves',
	'TOMASA: Quizá  mi madre sepa algo...',
]

const TEXT_CHEST2: Array = [
	'TOMASA: Al fin tengo las 3 llaves, podré abrir el cofre que me dejó mi abuelo.',
	'TOMASA: Abriendo...',
]

const TEXT_FOOD: Array =[
	'TOMASA: Ingredientes del encocado de pescado que tanto me gusta...',
	'TOMASA: Pescado, dientes de ajo, cebolla paiteña, leche de coco...',
	'TOMASA: Limones grandes, sal pimienta y comino al gusto todo está aquí.',
]

const TEXT_MOM: Array =[
	'Carmelina: ¿El cofre?, si es un regalo que te dejó tu abuelo Salomón...',
	'Carmelina: Verás tu abuelo nació en Carpue-la Valle del Chota...',
	'Carmelina: Y es parte del grupo de los cofrades...',
	'Carmelina: Ellos se encargan de organizar la festividad de la Semana Santa...',
	'Carmelina: También es buen músico de la bomba...',
	'Carmelina: Me dijo que las llaves las tienen vecinos de la comunidad...',
	'Carmelina: Puedes ir a preguntarles,  pero no te alejes mucho del pueblo.',
]

const TEXT_TOOLS: Array =[
	'TOMASA: La mesa de herramientas de don Juan...',
	'TOMASA: Debe estar detrás de su casa con sus plantas.',
]

const TEXT_JUAN: Array =[
	'JUAN: En mi huertita tengo plantitas, para curarme la barriguita...',
	'JUAN: cuando me enfermo, mi abuelita siempre prepara ricas agüitas...',
	'JUAN: así lo dice mi abuelita, pronto prontito te sanarás...',
	'JUAN: Dolor de barriga, la manzanilla. Dolor de riñón, tres gotas de limón.',
	'JUAN: Dolor de cabeza, y se curó Doña Teresa..',
	'JUAN: ¿Sabías que...? Hay muchas plantas que puedes sembrar en tu casa... ',
	'JUAN: Plantas como manzanilla, hierba luisa, orégano, menta, hierba buena, etc...',
	'JUAN: ¿La llave? Si la perdí en el bosque que está justo al frente de mi casa.',
	'JUAN: Puedes ir a buscarla, debe seguir ahí',
]

const TEXT_PEDRO: Array =[
	'PEDRO: ¿Sabías que...?',
	'PEDRO: El lugar donde nacieron nuestros padres, ancestros/as...',
	'PEDRO: y todas nuestras familias...',
	'PEDRO: Es donde vivieron nuestros antiguos abuelos/as...',
	'PEDRO: Que vinieron de África a trabajar producto de la esclavización...',
	'PEDRO: Ellos cuidaron y defendieron estas tierras.',
	'PEDRO: Aquí abajo vive SOFIA con sus vacas, ella debe tener una llave...',
	'PEDRO: Busca una entrada de arco de piedra',
]

const TEXT_ALEX: Array =[
	'ALEX: ¿Sabías que...?',
	'ALEX: La especie humana se originó en el continente africano...',
	'ALEX: En la región geográfica conocida como África subsahariana...',
	'ALEX: De esta misma región, millones de años después...',
	'ALEX: Provienen los ancestros y las ancestras de la población...',
	'ALEX: afroecuatoriana y afrodescendiente....',
	'ALEX: ¿Qué una llave? Si vi una por aquí arriba en los antiguos molinos...',
	'ALEX: Tiene muros de ladrillo y una bandera roja en la puerta.',
]

const TEXT_SOFIA: Array =[
	'SOFIA: Tu abuelo es un gran agricultor, me ayudo mucho con mis vacas...',
	'SOFIA: ¿Sabías que? Los apellidos de origen africano...',
	'SOFIA: Que hasta hoy se mantienen en las familias afroecuatorianas...',
	'SOFIA: Son el testimonio vivo e histórico que los identifica...',
	'SOFIA: Y revela el lugar de donde provienen sus ancestros...',
	'SOFIA: Por ejemplo, tu abuelo se llama Salomón Congo.',
	'SOFIA: La llave que buscas esta en el laberinto aqui a lado...',
	'SOFIA: Tu abuelo me pidió que la escondiera y no se me ocurrió otro lugar.',
]


const TEXT_DIEGO: Array =[
	'DIEGO: ¿Sabías que...? A finales del siglo XVII...',
	'DIEGO: Llegaron los primeros africanos a la zona del Chota...',
	'DIEGO: Traídos como esclavos para trabajar en las haciendas jesuitas...',
	'DIEGO: Entonces se da el primer choque cultural...',
	'DIEGO: Al interior de esta comunidad...',
	'DIEGO: Su pasado se vuelve presente y se plasma...',
	'DIEGO: Construyeron  instrumentos similares a los que utilizaban en África...',
	'DIEGO: Así revivieron su historia musica...',
	'DIEGO: El cántico y la percusión, en el caso de la bomba.',
	'DIEGO: ¿Una llave? Si Alex dijo algo sobre una llave...',
	'DIEGO: Sigue subiendo, quizá lo encuentres...',
]

const TEXT_KEVIN: Array =[
	'KEVIN: Sabías que nuestros ancestros africanos y sus descendientes...',
	'KEVIN: contaron y hasta hoy cuentan las historias de sus comunidades...',
	'KEVIN: y sus saberes a través de los cuentos...',
	'KEVIN: mitos, canciones, juegos y leyendas?',
	'KEVIN: La leyenda de la Tunda es una de las más conocidas en Esmeraldas...',
	'KEVIN: Mito narrado a niños y jóvenes para inculcarles valores éticos',
	'KEVIN: Ten cuidado al cruzar el puente, no se te vaya a aparecer la Tundra...',
]

const TEXT_MARIA: Array =[
	'MARIA: ¿Sabías que? Las comunidades afroecuatorianas...',
	'MARIA: Se caracterizan por el consumo de productos del medio...',
	'MARIA: En El Chota, La Concepción y Salinas yuca, plátano...',
	'MARIA: Caña de azúcar, fréjol, guandul, camote, entre otros...',
	'MARIA: Son la base de la alimentación de la población.',
	'MARIA: En los territorios de Esmeraldas la alimentación...',
	'MARIA: Se basa en el consumo de productos de los ríos y del mar.',
]

const TEXT_CARLOS: Array =[
	'CARLOS: Canto, canto, río, río. Pero más río, que canto...',
	'CARLOS: ¿Por qué si mucho canto, es poco lo que río?',
	'CARLOS: ¿Qué cosa es?',
	'CARLOS: Si el río ja ja, ¿Sabías que...? ',
	'CARLOS: En las comunidades y caseríos donde habitan afroecuatorianos...',
	'CARLOS: Los ríos tienen un valor que va más allá del agua que usamos ',
	'CARLOS: Al otro lado del río vive JUAN él debe tener una llave.',
]

var chats: int = 0
var npc: int = 0
var isNpc = false

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
			isNpc = true
		else:
			set_dialog(TEXT_CHEST[chats],NPCS.chest,IMG['CHEST'])
			chats += 1
			isNpc = true


#FOOD DIALOG
func _on_Food_body_entered(body):
	if body.is_in_group('player'):
		set_dialog(TEXT_FOOD[chats],NPCS.food,IMG['FOOD'])
		chats += 1
		isNpc = true

#MOM DIALOG
func _on_Mom_body_entered(body):
	if body.is_in_group('player'):
		set_dialog(TEXT_MOM[chats],NPCS.mom,IMG['MOM'])
		chats += 1
		isNpc = true

#TOOLS DIALOG
func _on_tools_body_entered(body):
	if body.is_in_group('player'):
		set_dialog(TEXT_TOOLS[chats],NPCS.tools,IMG['TOOLS'])
		chats += 1
		isNpc = true

#JUAN DIALOG
func _on_juan_body_entered(body):
	if body.is_in_group('player'):
		set_dialog(TEXT_JUAN[chats],NPCS.juan,IMG['JUAN'])
		chats += 1
		isNpc = true

#PEDRO DIALOG
func _on_Area2D_body_entered(body):
	if body.is_in_group('player'):
		set_dialog(TEXT_PEDRO[chats],NPCS.pedro,IMG['PEDRO'])
		chats += 1
		isNpc = true

#ALEX DIALOG
func _on_alex_body_entered(body):
	if body.is_in_group('player'):
		set_dialog(TEXT_ALEX[chats],NPCS.alex,IMG['ALEX'])
		chats += 1
		isNpc = true

#SOFIA DIALOG
func _on_sofia_body_entered(body):
	if body.is_in_group('player'):
		set_dialog(TEXT_SOFIA[chats],NPCS.sofia,IMG['SOFIA'])
		chats += 1
		isNpc = true

#DIEGO DIALOG
func _on_diego_body_entered(body):
	if body.is_in_group('player'):
		set_dialog(TEXT_DIEGO[chats],NPCS.diego,IMG['DIEGO'])
		chats += 1
		isNpc = true
		
#KEVIN DIALOG
func _on_kevin_body_entered(body):
	if body.is_in_group('player'):
		set_dialog(TEXT_KEVIN[chats],NPCS.kevin,IMG['KEVIN'])
		chats += 1
		isNpc = true

#MARIA DIALOG
	
func _on_maria_body_entered(body):
	if body.is_in_group('player'):
		set_dialog(TEXT_MARIA[chats],NPCS.maria,IMG['MARIA'])
		chats += 1
		isNpc = true
		
		
#CARLOS DIALOG
func _on_carlos_body_entered(body):
	if body.is_in_group('player'):
		set_dialog(TEXT_CARLOS[chats],NPCS.carlos,IMG['CARLOS'])
		chats += 1
		isNpc = true

					
#func _on_player_area_entered(area):
#	if area.is_in_group('npc'):
#		isNpc = true


func _on_player_area_exited(area):
#	if area.is_in_group('npc'):
		isNpc = false

		
func _input(event: InputEvent) -> void:
	if Input.is_action_pressed("continue") and isNpc:
		_on_Button_pressed()
		

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
				chats -= TEXT_CHEST2.size()
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
				set_dialog(TEXT_SOFIA[chats],NPCS.sofia, IMG['SOFIA'])
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
			if chats < TEXT_KEVIN.size():
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















