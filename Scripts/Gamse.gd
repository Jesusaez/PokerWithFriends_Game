extends Node2D
# array cartas
var Baraja = [
	{"textura": "res://Assets/cartas_sueltas/Diamonds/tile000.png", "valor": 13, "palo": 0},
	{"textura": "res://Assets/cartas_sueltas/Diamonds/tile001.png", "valor": 1, "palo": 0},
	{"textura": "res://Assets/cartas_sueltas/Diamonds/tile002.png", "valor": 2, "palo": 0},
	{"textura": "res://Assets/cartas_sueltas/Diamonds/tile003.png", "valor": 3, "palo": 0},
	{"textura": "res://Assets/cartas_sueltas/Diamonds/tile004.png", "valor": 4, "palo": 0},
	{"textura": "res://Assets/cartas_sueltas/Diamonds/tile005.png", "valor": 5, "palo": 0},
	{"textura": "res://Assets/cartas_sueltas/Diamonds/tile006.png", "valor": 6, "palo": 0},
	{"textura": "res://Assets/cartas_sueltas/Diamonds/tile007.png", "valor": 7, "palo": 0},
	{"textura": "res://Assets/cartas_sueltas/Diamonds/tile008.png", "valor": 8, "palo": 0},
	{"textura": "res://Assets/cartas_sueltas/Diamonds/tile009.png", "valor": 9, "palo": 0},
	{"textura": "res://Assets/cartas_sueltas/Diamonds/tile010.png", "valor": 10, "palo": 0},
	{"textura": "res://Assets/cartas_sueltas/Diamonds/tile011.png", "valor": 11, "palo": 0},
	{"textura": "res://Assets/cartas_sueltas/Diamonds/tile012.png", "valor": 12, "palo": 0},
	{"textura": "res://Assets/cartas_sueltas/Hearts/tile000.png", "valor": 13, "palo": 1},
	{"textura": "res://Assets/cartas_sueltas/Hearts/tile001.png", "valor": 1, "palo": 1},
	{"textura": "res://Assets/cartas_sueltas/Hearts/tile002.png", "valor": 2, "palo": 1},
	{"textura": "res://Assets/cartas_sueltas/Hearts/tile003.png", "valor": 3, "palo": 1},
	{"textura": "res://Assets/cartas_sueltas/Hearts/tile004.png", "valor": 4, "palo": 1},
	{"textura": "res://Assets/cartas_sueltas/Hearts/tile005.png", "valor": 5, "palo": 1},
	{"textura": "res://Assets/cartas_sueltas/Hearts/tile006.png", "valor": 6, "palo": 1},
	{"textura": "res://Assets/cartas_sueltas/Hearts/tile007.png", "valor": 7, "palo": 1},
	{"textura": "res://Assets/cartas_sueltas/Hearts/tile008.png", "valor": 8, "palo": 1},
	{"textura": "res://Assets/cartas_sueltas/Hearts/tile009.png", "valor": 9, "palo": 1},
	{"textura": "res://Assets/cartas_sueltas/Hearts/tile010.png", "valor": 10, "palo": 1},
	{"textura": "res://Assets/cartas_sueltas/Hearts/tile011.png", "valor": 11, "palo": 1},
	{"textura": "res://Assets/cartas_sueltas/Hearts/tile012.png", "valor": 12, "palo": 1},
	{"textura": "res://Assets/cartas_sueltas/Spades/tile000.png", "valor": 13, "palo": 2},
	{"textura": "res://Assets/cartas_sueltas/Spades/tile001.png", "valor": 1, "palo": 2},
	{"textura": "res://Assets/cartas_sueltas/Spades/tile002.png", "valor": 2, "palo": 2},
	{"textura": "res://Assets/cartas_sueltas/Spades/tile003.png", "valor": 3, "palo": 2},
	{"textura": "res://Assets/cartas_sueltas/Spades/tile004.png", "valor": 4, "palo": 2},
	{"textura": "res://Assets/cartas_sueltas/Spades/tile005.png", "valor": 5, "palo": 2},
	{"textura": "res://Assets/cartas_sueltas/Spades/tile006.png", "valor": 6, "palo": 2},
	{"textura": "res://Assets/cartas_sueltas/Spades/tile007.png", "valor": 7, "palo": 2},
	{"textura": "res://Assets/cartas_sueltas/Spades/tile008.png", "valor": 8, "palo": 2},
	{"textura": "res://Assets/cartas_sueltas/Spades/tile009.png", "valor": 9, "palo": 2},
	{"textura": "res://Assets/cartas_sueltas/Spades/tile010.png", "valor": 10, "palo": 2},
	{"textura": "res://Assets/cartas_sueltas/Spades/tile011.png", "valor": 11, "palo": 2},
	{"textura": "res://Assets/cartas_sueltas/Spades/tile012.png", "valor": 12, "palo": 2},
	{"textura": "res://Assets/cartas_sueltas/Clubs/tile000.png", "valor": 13, "palo": 3},
	{"textura": "res://Assets/cartas_sueltas/Clubs/tile001.png", "valor": 1, "palo": 3},
	{"textura": "res://Assets/cartas_sueltas/Clubs/tile002.png", "valor": 2, "palo": 3},
	{"textura": "res://Assets/cartas_sueltas/Clubs/tile003.png", "valor": 3, "palo": 3},
	{"textura": "res://Assets/cartas_sueltas/Clubs/tile004.png", "valor": 4, "palo": 3},
	{"textura": "res://Assets/cartas_sueltas/Clubs/tile005.png", "valor": 5, "palo": 3},
	{"textura": "res://Assets/cartas_sueltas/Clubs/tile006.png", "valor": 6, "palo": 3},
	{"textura": "res://Assets/cartas_sueltas/Clubs/tile007.png", "valor": 7, "palo": 3},
	{"textura": "res://Assets/cartas_sueltas/Clubs/tile008.png", "valor": 8, "palo": 3},
	{"textura": "res://Assets/cartas_sueltas/Clubs/tile009.png", "valor": 9, "palo": 3},
	{"textura": "res://Assets/cartas_sueltas/Clubs/tile010.png", "valor": 10, "palo": 3},
	{"textura": "res://Assets/cartas_sueltas/Clubs/tile011.png", "valor": 11, "palo": 3},
	{"textura": "res://Assets/cartas_sueltas/Clubs/tile012.png", "valor": 12, "palo": 3}
]

# Arrays con los chips, el maximo que ha apostado, si ha foldeado y el nombre de cada jugador 
#el jugador Pedro Sanchez es el usuario
var PlayerChips = [5000, 5000, 5000, 5000, 5000]
var PlayerMaxCalled = [0, 0, 0, 0, 0]
var PlayerFolded = [false, false, false, false, false]
var playerName = ["Pedro Sanchez","Mario Mendez", "Jesus Saez", "Eric Garcia", "Josep Ruiz"]

#Array de todas las cartas sacadas para los jugadores. cada 2 es un jugador
var playerCards=[]
#Array de todas las cartas sacadas en la mesa
var tableCards=[]
#Int de el numero de fichas apostadas por todos los jugadores
var chipsInTable=0
# El minimo que tienes de apostar en la mesa
var chipsToPlay=0
#A que jugador el toca
var turnoJug=0
# Numero de jugadores (No se hacer COnstantes)
var numPlayer=5
#Decision que hacen los jugadores en el turno
var opcionTurno


# Escenas  instanciar
var player_card_scene = preload("res://escenas/InterfazEnemy.tscn")  
var card_scene = preload("res://escenas/Carta.tscn")  


# Rutas para las posiciones de los jugadores (PathFollow2D)
onready var path_follows = [
	$InterfazJugadores/InterJugSpawnLocation1,
	$InterfazJugadores/InterJugSpawnLocation2,
	$InterfazJugadores/InterJugSpawnLocation3,
	$InterfazJugadores/InterJugSpawnLocation4
]
#Ruta para las posiciones de las cartas del jugador
onready var Card_positions = [
	$CardSpawn/CardSpawnLocation1,
	$CardSpawn/CardSpawnLocation2
]
#Ruta para las cartas robadas en el centro
onready var Card_positions_Center = [
	$CardSpawnCenter/CardSpawnCenter1,
	$CardSpawnCenter/CardSpawnCenter2,
	$CardSpawnCenter/CardSpawnCenter3,
	$CardSpawnCenter/CardSpawnCenter4,
	$CardSpawnCenter/CardSpawnCenter5
]
#Variables que guardan los botones de accion del jugador
onready var button1 = $Interfaz_Bets/call
onready var button2 = $Interfaz_Bets/fold
onready var button3 = $Interfaz_Bets/raise

#Variable con la escena de toma de decisiones
onready var bets_scene = $Interfaz_Bets

#Rng para poder hacer randoms
var rng = RandomNumberGenerator.new()
#Array con Todas las cartas Sacadas
var CartasSacadas=[]
#Array con la interfaz de los jugadores
var interfaz_players = []

var ganador=0;

func _ready():
	#Poner el numero de chips en la interfaz del player
	$InterfazChipsPlayer/Background/Chips.text=str(PlayerChips[1])
	#Esconder la interfaz de las acciones
	$Interfaz_Bets.hide()
	#Conecctar la señal de los botones de accion
	bets_scene.connect("boton_presionado", self, "_on_boton_presionado")

	#Randomizar todo
	randomize()
	# ------------------------------------------------
	# Instanciar los nombres y fichas de jugadores
	# ------------------------------------------------
	for i in range(numPlayer - 1):
		var player_card_instance = player_card_scene.instance()

		# Asignar nombre y chips a los labels
		player_card_instance.get_node("Background/Player_Name").text = playerName[i + 1]
		player_card_instance.get_node("Background/Chips").text = str(PlayerChips[i + 1])

		# poner el cartel en la posición del PathFollow2D
		var path_follow = path_follows[i]
		player_card_instance.rect_position = path_follow.position
		player_card_instance.rect_scale = Vector2(0.75, 0.75)

		# Añadir la escena al main y al array
		add_child(player_card_instance)
		interfaz_players.append(player_card_instance)  # Agregar al array
	
	#Juega 1 Ronda [Falta hacer el bucle principal pero es facil]
	oneRound()
	
	#Empezar Juego
func oneRound():
	#Robar Cartas
	yield(mostrar_cartas_secuencialmente(), "completed")
	#Poner los 50 y los 100 de cada ronda para q el juego no pueda ser infinito
	yield(ponerFichasInicio(), "completed")
	#Estas fichas las pone los 2 ultimos jugadores de la ronda
	sumarTurnoJug(2)
	#Tomar decisiones
	yield(tomaDecisiones(), "completed")
	# 3 cartas en el centro
	flop()
	yield(tomaDecisiones(), "completed")
	# 4 Cartas en el centro
	river()
	yield(tomaDecisiones(), "completed")
	# 5 cartas en el centro
	turn()
	yield(tomaDecisiones(), "completed")
	yield(buscarGanador(), "completed")
	#Falta comprobar quien gana y poner las variables q hagan falta a 0
	
	
	
	turnoJug=turnoJug+1;
	chipsInTable=0;
#Robar 3 cartas en el centro

# Función para calificar la mano de un jugador
func calificar_mano(cartas):
	# Ordenamos las cartas de mayor a menor por valor
	cartas.sort_custom(self, "_comparar_cartas")

	# Comprobamos si el jugador tiene alguna de las manos posibles en poker
	if es_royal_flush(cartas):
		return {"tipo": "Royal Flush", "valor": 10, "cartas": cartas}
	elif es_straight_flush(cartas):
		return {"tipo": "Straight Flush", "valor": 9, "cartas": cartas}
	elif es_four_of_a_kind(cartas):
		return {"tipo": "Four-of-a-Kind", "valor": 8, "cartas": cartas}
	elif es_full_house(cartas):
		return {"tipo": "Full House", "valor": 7, "cartas": cartas}
	elif es_flush(cartas):
		return {"tipo": "Flush", "valor": 6, "cartas": cartas}
	elif es_straight(cartas):
		return {"tipo": "Straight", "valor": 5, "cartas": cartas}
	elif es_three_of_a_kind(cartas):
		return {"tipo": "Three-of-a-Kind", "valor": 4, "cartas": cartas}
	elif es_two_pair(cartas):
		return {"tipo": "Two-Pair", "valor": 3, "cartas": cartas}
	elif es_one_pair(cartas):
		return {"tipo": "One-Pair", "valor": 2, "cartas": cartas}
	else:
		return {"tipo": "High Card", "valor": 1, "cartas": cartas}

# Función para buscar el ganador entre los jugadores
func buscarGanador():
	# Inicializamos las variables necesarias
	var manos = []
	var cartas_combinadas = []

	# Para cada jugador que no haya hecho fold, evaluamos su mano
	for i in range(numPlayer):
		if !PlayerFolded[i]:  # Solo evaluamos si el jugador no ha hecho fold
			# Combinamos las cartas del jugador con las cartas de la mesa
			cartas_combinadas = [playerCards[i]] + tableCards
			# Evaluamos la mejor mano del jugador
			var mano = calificar_mano(cartas_combinadas)
			manos.append({"jugador": i, "mano": mano})

	# Ahora buscamos el ganador comparando las manos
	manos.sort_custom(self, "_comparar_manos")

	# Si hay empate, verificamos la carta más alta
	var mejor_mano = manos[0]
	var jugadores_ganadores = [mejor_mano["jugador"]]

	# Comprobamos si hay empate con la mano más alta
	for i in range(1, manos.size()):
		if manos[i]["mano"]["valor"] == mejor_mano["mano"]["valor"]:
			# Si tienen la misma mano, verificamos la carta más alta de las manos
			if _comparar_cartas(manos[i]["mano"]["cartas"], mejor_mano["mano"]["cartas"]) == 0:
				# Si hay un empate total en la mano, sumamos el jugador al array de ganadores
				jugadores_ganadores.append(manos[i]["jugador"])

	# Ahora 'jugadores_ganadores' contiene los jugadores que han ganado la ronda
	print("Ganador(es):", jugadores_ganadores)
	ganador=jugadores_ganadores
	return jugadores_ganadores

# Función para comparar dos manos basadas en el valor de las cartas
func _comparar_manos(mano1, mano2):
	# Primero comparamos el valor de la mano (Royal Flush > Straight Flush > Four of a Kind, etc.)
	if mano1["mano"]["valor"] != mano2["mano"]["valor"]:
		return mano1["mano"]["valor"] - mano2["mano"]["valor"]
	# Si las manos son del mismo tipo, comparamos las cartas
	return _comparar_cartas(mano1["mano"]["cartas"], mano2["mano"]["cartas"])

# Función para comparar dos cartas (para desempates)
func _comparar_cartas(cartas1, cartas2):
	# Comparamos las cartas de mayor a menor
	for i in range(cartas1.size()):
		if cartas1[i]["valor"] != cartas2[i]["valor"]:
			return cartas1[i]["valor"] - cartas2[i]["valor"]
	return 0



func es_royal_flush(cartas):
	# Verifica si las cartas forman una Royal Flush
	var palos = []
	var valores = []
	
	for carta in cartas:
		palos.append(carta.palo)
		valores.append(carta.valor)
	
	if palos.has_only(palos[0]) and valores == [10, 11, 12, 13, 14]:  # 10, J, Q, K, A
		return true
	return false

func es_straight_flush(cartas):
	# Verifica si las cartas forman una Straight Flush
	if es_flush(cartas) and es_straight(cartas):
		return true
	return false

func es_four_of_a_kind(cartas):
	# Verifica si las cartas forman un Four of a Kind
	var valores = []
	
	for carta in cartas:
		valores.append(carta.valor)
	
	return valores.count(valores[0]) == 4 or valores.count(valores[1]) == 4

func es_full_house(cartas):
	# Verifica si las cartas forman un Full House
	var valores = []
	
	for carta in cartas:
		valores.append(carta.valor)
	
	return (valores.count(valores[0]) == 3 and valores.count(valores[1]) == 2) or (valores.count(valores[0]) == 2 and valores.count(valores[1]) == 3)

func es_flush(cartas):
	# Verifica si las cartas forman un Flush
	var palos = []
	
	for carta in cartas:
		palos.append(carta.palo)
	
	return palos.has_only(palos[0])

func es_straight(cartas):
	# Verifica si las cartas forman una Straight
	var valores = []
	
	for carta in cartas:
		valores.append(carta.valor)
	
	valores.sort()
	for i in range(4):
		if valores[i] + 1 != valores[i + 1]:
			return false
	return true

func es_three_of_a_kind(cartas):
	# Verifica si las cartas forman un Three of a Kind
	var valores = []
	
	for carta in cartas:
		valores.append(carta.valor)
	
	return valores.count(valores[0]) == 3 or valores.count(valores[1]) == 3

func es_two_pair(cartas):
	# Verifica si las cartas forman un Two Pair
	var valores = []
	
	for carta in cartas:
		valores.append(carta.valor)
	
	var counts = {}
	for v in valores:
		counts[v] = counts.get(v, 0) + 1
	
	var pair_count = 0
	for count in counts.values():
		if count == 2:
			pair_count += 1
	
	return pair_count == 2

func es_one_pair(cartas):
	# Verifica si las cartas forman un One Pair
	var valores = []
	
	for carta in cartas:
		valores.append(carta.valor)
	
	var counts = {}
	for v in valores:
		counts[v] = counts.get(v, 0) + 1
	
	return counts.has_value(2)


func flop():
	yield(robar_carta_center(0), "completed")
	yield(robar_carta_center(1), "completed")
	yield(robar_carta_center(2), "completed")	
#Robar la 4 carta
func river():
	yield(robar_carta_center(3), "completed")
# Robar la 5
func turn():
	yield(robar_carta_center(4), "completed")

#Funcion para robar las cartas en el centro y guardalo en el array de cartas de la mesa
func robar_carta_center(card_index):
	yield(get_tree().create_timer(0.5), "timeout")      
	var card_instance = card_scene.instance()
	var card = cojeCarta()  
	card_instance.get_node("Img").texture = load(card["textura"])  # Usamos la textura del mapa
	card_instance.rect_position = Card_positions_Center[card_index].position
	card_instance.rect_scale = Vector2(0.75, 0.75)
	add_child(card_instance)
	tableCards.append(card)  # Añadimos el mapa completo de la carta (si lo necesitas)

#Funcion para sumar una cantidad al turno jug sin pasarse de 4
func sumarTurnoJug(var numero):
# warning-ignore:unused_variable
	for i in range(numero):
		turnoJug=turnoJug+1;
		if turnoJug>4:
			turnoJug=0;
#Funcion para poner las fichas del principio
func ponerFichasInicio():
	# Restar fichas al jugador y al siguiente jugador
	PlayerChips[turnoJug] -= 50
	PlayerMaxCalled[turnoJug]=50
	#Debug tools para ver lo q ha hecho cada jug y mas variables
	actualizarDebugTools()
	actualizar_chips_player(turnoJug)  # Actualiza el label del jugador principal
	
	PlayerChips[turnoJug+1] -= 100
	PlayerMaxCalled[turnoJug+1]=100
	chipsToPlay=100
	actualizar_chips_player(turnoJug+1)  # Actualiza el label del siguiente jugador
	turnoJug+=1;
	actualizarDebugTools()
	turnoJug-=1
	# Actualizar el total de fichas en la mesa
	chipsInTable += 150
	mostrarChipsMesa()

	# Simular un pequeño retraso visual
	yield(get_tree().create_timer(0.5), "timeout")
#Funcion para actualizar las chips del centro de la mesa
func mostrarChipsMesa():
	$ChipsInTable.text=str(chipsInTable)
	print("Se ejecuta la función al cambiar la variable.")

#Funcion para actualizar el numero de chips de los jugadores
func actualizar_chips_player(player_index):
	# Si es el jugador principal (índice 0)
	if player_index == 0:
		$InterfazChipsPlayer/Background/Chips.text = str(PlayerChips[player_index])
	else:
		# Si es un bot (índices 1, 2, 3, 4...)
		var bot_instance = interfaz_players[player_index - 1]  # Recordemos que `interfaz_players` contiene solo los bots
		bot_instance.get_node("Background/Chips").text = str(PlayerChips[player_index])

#Funcion para cuando hacen fold
func fold():	
	PlayerFolded[turnoJug]=true;
	yield(get_tree().create_timer(0.5), "timeout")
	
#Funcion para cuando se hace un call
func player_call():
	var chipsPlayed=0;
	#Esto Seria el Call y si no hay nada que tenga que subir no se le cambia nada entonces es el check
	if(PlayerMaxCalled[turnoJug]<chipsToPlay):
		chipsPlayed=chipsToPlay-PlayerMaxCalled[turnoJug]
		PlayerChips[turnoJug]=PlayerChips[turnoJug]-chipsPlayed
		chipsInTable=chipsInTable+chipsPlayed
		PlayerMaxCalled[turnoJug]=chipsToPlay
	mostrarChipsMesa()
	actualizar_chips_player(turnoJug)
	yield(get_tree().create_timer(0.5), "timeout")	

#Lo dice el nombre
func actualizarDebugTools():
	match turnoJug:
		1:
			$DebugTools/ChipsInTable.text = playerName[turnoJug] + "\n" + str(PlayerFolded[turnoJug]) + "\n" + str(PlayerMaxCalled[turnoJug]) + "\n" + str(opcionTurno)
		2:
			$DebugTools/ChipsInTable2.text = playerName[turnoJug] + "\n" + str(PlayerFolded[turnoJug]) + "\n" + str(PlayerMaxCalled[turnoJug]) + "\n" + str(opcionTurno)
		3:
			$DebugTools/ChipsInTable3.text = playerName[turnoJug] + "\n" + str(PlayerFolded[turnoJug]) + "\n" + str(PlayerMaxCalled[turnoJug]) + "\n" + str(opcionTurno)
		4:
			$DebugTools/ChipsInTable4.text = playerName[turnoJug] + "\n" + str(PlayerFolded[turnoJug]) + "\n" + str(PlayerMaxCalled[turnoJug]) + "\n" + str(opcionTurno)
		0:
			$DebugTools/ChipsInTable5.text = playerName[turnoJug] + "\n" + str(PlayerFolded[turnoJug]) + "\n" + str(PlayerMaxCalled[turnoJug]) + "\n" + str(opcionTurno)
	$DebugTools/ChipsToPlay.text=str(chipsToPlay)
	yield(get_tree().create_timer(0.1), "timeout")	

#Funcion para tomar las decisiones dependiendo de q sea un bot o un jugador
func tomaDecisiones():
# warning-ignore:unused_variable
	for i in range(numPlayer):
		if(PlayerFolded[turnoJug]==false):
			if turnoJug==0:
				yield(tomaDecisionJugador(), "completed")
			else:
				yield(tomaDecisionBots(), "completed")
			
			if opcionTurno==1:
				yield(player_call(), "completed")
			else: 
				if opcionTurno==2:
					yield(fold(), "completed")
		yield(actualizarDebugTools(), "completed")
		sumarTurnoJug(1)


#Funcion Decision Jugador
func tomaDecisionJugador():
	if(chipsToPlay>=PlayerChips[turnoJug]):
		bets_scene.actualizar_valores_scrollbar(PlayerChips[turnoJug], PlayerChips[turnoJug], PlayerChips[turnoJug])
		
	else:
		if(chipsToPlay==PlayerMaxCalled[turnoJug]):
			bets_scene.actualizar_valores_scrollbar(0, PlayerChips[turnoJug], 0)
		else:
			bets_scene.actualizar_valores_scrollbar(chipsToPlay-PlayerMaxCalled[turnoJug], PlayerChips[turnoJug], chipsToPlay-PlayerMaxCalled[turnoJug])
	$Interfaz_Bets.show()
	yield(bets_scene, "boton_presionado")  # Espera a que se presione un botón
	print("El jugador ha tomado una decisión")	

#Funcion Para lo q haya hecho cada boton
func _on_boton_presionado(opcion, valor):
	match opcion:
		1:
			print("Botón CALL presionado")
		2:
			print("Botón FOLD presionado")
		3:
			print("Botón RAISE presionado con apuesta:", valor)
			procesar_raise(valor)
	opcionTurno=opcion
	$Interfaz_Bets.hide()

#Funcion por si le dan al Raise (Hace un raise xd)
func procesar_raise(valor):
	# Restar fichas al jugador actual y actualizar la mesa
	PlayerChips[turnoJug] -= valor
	chipsInTable += valor
	if(chipsToPlay==PlayerMaxCalled[turnoJug]):
		chipsToPlay=chipsToPlay+valor
	else:
		chipsToPlay=(chipsToPlay-PlayerMaxCalled[turnoJug])+valor
	PlayerMaxCalled[turnoJug]+=valor
	actualizar_chips_player(turnoJug)
	mostrarChipsMesa()

#Tomar decision Bot
func tomaDecisionBots():
	opcionTurno = rng.randi_range(1, 1)
	print(opcionTurno)
	if(opcionTurno==3):
		raiseBots()
	yield(get_tree().create_timer(rng.randi_range(0, 4)), "timeout") 


func raiseBots():
	var dineroApostado=0
	if(chipsToPlay>=PlayerChips[turnoJug]):
		dineroApostado = rng.randi_range(PlayerChips[turnoJug], PlayerChips[turnoJug])
	else:
		if(chipsToPlay==PlayerMaxCalled[turnoJug]):
			dineroApostado = rng.randi_range(0, PlayerChips[turnoJug])
		else:
			dineroApostado = rng.randi_range(chipsToPlay-PlayerMaxCalled[turnoJug], PlayerChips[turnoJug])	
	procesar_raise(dineroApostado)

# Robar Las Cartas God
func mostrar_cartas_secuencialmente():
	# Primera carta del jugador principal
	yield(robar_carta_principal(0), "completed")
	# Segunda carta del jugador principal
	yield(robar_carta_principal(1), "completed")
	
	# Cartas para los bots
	for i in range(numPlayer - 1):
		yield(robar_2_carta_bot(i), "completed")

#Robar Cartas Para el jugador
func robar_carta_principal(card_index):
	yield(get_tree().create_timer(0.5), "timeout")  # Esperar 1 segundo entre cartas    
	var card_instance = card_scene.instance()
	var card = cojeCarta()  # Ahora obtenemos el mapa completo de la carta
	card_instance.get_node("Img").texture =  load(card["textura"])  # Usamos la textura del mapa
	card_instance.rect_position = Card_positions[card_index].position
	card_instance.rect_scale = Vector2(1.5, 1.5)
	add_child(card_instance)
	playerCards.append(card) 

#Robar carta Bots
func robar_2_carta_bot(bot_index):
	yield(get_tree().create_timer(0.5), "timeout")  # Esperar 1 segundo	
	var bot_instance = interfaz_players[bot_index]
	
	# Primera carta oculta del bot
	var card_texture_1 = cojeCarta()
	bot_instance.get_node("Background/Behind_Card1").show()
	playerCards.append(card_texture_1)
	yield(get_tree().create_timer(0.5), "timeout")  # Esperar 1 segundo
	
	# Segunda carta oculta del bot
	var card_texture_2 = cojeCarta()
	bot_instance.get_node("Background/Behind_Card2").show()
	playerCards.append(card_texture_2)

#Funcion que roba carta y que no sea duplicado
func cojeCarta():
	var error = true
	var card

	while error:
		card = Baraja[randi() % Baraja.size()]  
		if not CartasSacadas.has(card):  
			error = false 
	CartasSacadas.append(card)  
	return card  

