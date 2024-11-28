extends Node2D
var Baraja = [
	"res://Assets/cartas_sueltas/Diamonds/tile000.png",
	"res://Assets/cartas_sueltas/Diamonds/tile001.png",
	"res://Assets/cartas_sueltas/Diamonds/tile002.png",
	"res://Assets/cartas_sueltas/Diamonds/tile003.png",
	"res://Assets/cartas_sueltas/Diamonds/tile004.png",
	"res://Assets/cartas_sueltas/Diamonds/tile005.png",
	"res://Assets/cartas_sueltas/Diamonds/tile006.png",
	"res://Assets/cartas_sueltas/Diamonds/tile007.png",
	"res://Assets/cartas_sueltas/Diamonds/tile008.png",
	"res://Assets/cartas_sueltas/Diamonds/tile009.png",
	"res://Assets/cartas_sueltas/Diamonds/tile010.png",
	"res://Assets/cartas_sueltas/Diamonds/tile011.png",
	"res://Assets/cartas_sueltas/Diamonds/tile012.png",
	"res://Assets/cartas_sueltas/Hearts/tile000.png",
	"res://Assets/cartas_sueltas/Hearts/tile001.png",
	"res://Assets/cartas_sueltas/Hearts/tile002.png",
	"res://Assets/cartas_sueltas/Hearts/tile003.png",
	"res://Assets/cartas_sueltas/Hearts/tile004.png",
	"res://Assets/cartas_sueltas/Hearts/tile005.png",
	"res://Assets/cartas_sueltas/Hearts/tile006.png",
	"res://Assets/cartas_sueltas/Hearts/tile007.png",
	"res://Assets/cartas_sueltas/Hearts/tile008.png",
	"res://Assets/cartas_sueltas/Hearts/tile009.png",
	"res://Assets/cartas_sueltas/Hearts/tile010.png",
	"res://Assets/cartas_sueltas/Hearts/tile011.png",
	"res://Assets/cartas_sueltas/Hearts/tile012.png",
	"res://Assets/cartas_sueltas/Spades/tile000.png",
	"res://Assets/cartas_sueltas/Spades/tile001.png",
	"res://Assets/cartas_sueltas/Spades/tile002.png",
	"res://Assets/cartas_sueltas/Spades/tile003.png",
	"res://Assets/cartas_sueltas/Spades/tile004.png",
	"res://Assets/cartas_sueltas/Spades/tile005.png",
	"res://Assets/cartas_sueltas/Spades/tile006.png",
	"res://Assets/cartas_sueltas/Spades/tile007.png",
	"res://Assets/cartas_sueltas/Spades/tile008.png",
	"res://Assets/cartas_sueltas/Spades/tile009.png",
	"res://Assets/cartas_sueltas/Spades/tile010.png",
	"res://Assets/cartas_sueltas/Spades/tile011.png",
	"res://Assets/cartas_sueltas/Spades/tile012.png",
	"res://Assets/cartas_sueltas/Clubs/tile000.png",
	"res://Assets/cartas_sueltas/Clubs/tile001.png",
	"res://Assets/cartas_sueltas/Clubs/tile002.png",
	"res://Assets/cartas_sueltas/Clubs/tile003.png",
	"res://Assets/cartas_sueltas/Clubs/tile004.png",
	"res://Assets/cartas_sueltas/Clubs/tile005.png",
	"res://Assets/cartas_sueltas/Clubs/tile006.png",
	"res://Assets/cartas_sueltas/Clubs/tile007.png",
	"res://Assets/cartas_sueltas/Clubs/tile008.png",
	"res://Assets/cartas_sueltas/Clubs/tile009.png",
	"res://Assets/cartas_sueltas/Clubs/tile010.png",
	"res://Assets/cartas_sueltas/Clubs/tile011.png",
	"res://Assets/cartas_sueltas/Clubs/tile012.png"
]
# Arrays con los nombres y los chips
var PlayerChips = [5000, 5000, 5000, 5000, 5000]
var PlayerFolded = [false, false, false, false, false]
var playerName = ["Pedro Sanchez","Mario Mendez", "Jesus Saez", "Eric Garcia", "Josep Ruiz"]
var playerCards=[]
var chipsInTable=0
var turnoJug=0
var numPlayer=5
var bets_scene  # Referencia a la interfaz `Bets`
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
onready var Card_positions = [
	$CardSpawn/CardSpawnLocation1,
	$CardSpawn/CardSpawnLocation2
]

onready var button1 = $Interfaz_Bets/call
onready var button2 = $Interfaz_Bets/fold
onready var button3 = $Interfaz_Bets/raise

var rng = RandomNumberGenerator.new()
var CartasSacadas=[]
var interfaz_players = []

func _ready():
	#Interfaz Chips Player
	
	$InterfazChipsPlayer/Background/Chips.text=str(PlayerChips[1])
	
	$Interfaz_Bets.hide()
	bets_scene = $Interfaz_Bets  # Cambia esto si tienes una ruta diferente
	bets_scene.connect("boton_presionado", self, "_on_boton_presionado")
	randomize()
	# ------------------------------------------------
	# Instanciar los nombres y fichas de jugadores
	# ------------------------------------------------
	for i in range(numPlayer - 1):
		var player_card_instance = player_card_scene.instance()

		# Asignar nombre y chips a los labels
		player_card_instance.get_node("Background/Player_Name").text = playerName[i + 1]
		player_card_instance.get_node("Background/Chips").text = str(PlayerChips[i + 1])

		# Ubicar el cartel en la posición correspondiente del PathFollow2D
		var path_follow = path_follows[i]
		player_card_instance.rect_position = path_follow.position
		player_card_instance.rect_scale = Vector2(0.75, 0.75)

		# Añadir la instancia a la escena y al array
		add_child(player_card_instance)
		interfaz_players.append(player_card_instance)  # Agregar al array

	#Robar Cartas Y enseñarlas poco a poco
	oneRound()
	
	#Empezar Juego
func oneRound():
	#Robar Cartas
	yield(mostrar_cartas_secuencialmente(), "completed")
	yield(ponerFichasInicio(), "completed")
	yield(tomaDecisiones(), "completed")
	
	turnoJug=turnoJug+1;
	chipsInTable=0;

func ponerFichasInicio():
	# Restar fichas al jugador y al siguiente jugador
	PlayerChips[turnoJug] -= 50
	actualizar_chips_player(turnoJug)  # Actualiza el label del jugador principal
	
	var next_player_index = (turnoJug + 1) % numPlayer
	PlayerChips[next_player_index] -= 100
	actualizar_chips_player(next_player_index)  # Actualiza el label del siguiente jugador

	# Actualizar el total de fichas en la mesa
	chipsInTable += 150
	mostrarChipsMesa()

	# Simular un pequeño retraso visual
	yield(get_tree().create_timer(0.5), "timeout")

func mostrarChipsMesa():
	$ChipsInTable.text=str(chipsInTable)
	print("Se ejecuta la función al cambiar la variable.")


func actualizar_chips_player(player_index):
	# Si es el jugador principal (índice 0)
	if player_index == 0:
		$InterfazChipsPlayer/Background/Chips.text = str(PlayerChips[player_index])
	else:
		# Si es un bot (índices 1, 2, 3, 4...)
		var bot_instance = interfaz_players[player_index - 1]  # Recordemos que `interfaz_players` contiene solo los bots
		bot_instance.get_node("Background/Chips").text = str(PlayerChips[player_index])


func fold():
	PlayerFolded[turnoJug]=true;

#func call():


#func raise():


func tomaDecisiones():
# warning-ignore:unused_variable
	for i in range(numPlayer):
		if(i==0):
			PlayerChips[turnoJug]=PlayerChips[turnoJug]-50;
		if(i==1):
			PlayerChips[turnoJug]=PlayerChips[turnoJug]-100;
		if(PlayerFolded[turnoJug]==false):
			if turnoJug==0:
				yield(tomaDecisionJugador(), "completed")
			else:
				yield(tomaDecisionBots(), "completed")
			
			if opcionTurno==1:
				pass
				#yield(call(), "completed")
			else: 
				if opcionTurno==2:
					yield(fold(), "completed")
				else:
					pass
				#	yield(raise(), "completed")
		turnoJug=turnoJug+1;
		if turnoJug>4:
			turnoJug=0;
		
		
# Falta hacer que se espere a q el jugador clicke uno de los botones de check o algo asi
func tomaDecisionJugador():
	$Interfaz_Bets.show()
	yield(bets_scene, "boton_presionado")  # Espera a que se presione un botón
	print("El jugador ha tomado una decisión")	

func _on_boton_presionado(opcion):
	print("Botón seleccionado:", opcion)
	# Aquí puedes realizar acciones basadas en la opción
	opcionTurno=opcion
	print("Botón seleccionado:", opcion)
	$Interfaz_Bets.hide()


func tomaDecisionBots():
	opcionTurno = rng.randf_range(0, 4)
	yield(get_tree().create_timer(rng.randf_range(0, 4)), "timeout") 


# Robar Las Cartas God
func mostrar_cartas_secuencialmente():
	# Primera carta del jugador principal
	yield(robar_carta_principal(0), "completed")
	# Segunda carta del jugador principal
	yield(robar_carta_principal(1), "completed")
	
	# Cartas para los bots
	for i in range(numPlayer - 1):
		yield(robar_2_carta_bot(i), "completed")


func robar_carta_principal(card_index):
	yield(get_tree().create_timer(0.5), "timeout")  # Esperar 1 segundo entre cartas	
	var card_instance = card_scene.instance()
	var card_texture = cojeCarta()
	card_instance.get_node("Img").texture = card_texture
	card_instance.rect_position = Card_positions[card_index].position
	card_instance.rect_scale = Vector2(1.5, 1.5)
	add_child(card_instance)
	playerCards.append(card_texture)


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


func cojeCarta():
	var error = true
	var card_texture

	while error:
		card_texture = load(Baraja[randi() % Baraja.size()])
		if not CartasSacadas.has(card_texture):
			error = false 
	CartasSacadas.append(card_texture)
	return card_texture
