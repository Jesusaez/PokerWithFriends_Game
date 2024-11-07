extends Node2D

# Arrays con los nombres y los chips
var PlayerChips = [5000, 5000, 5000, 5000, 5000]
var playerName = ["Pedro Sanchez","Mario Mendez", "Jesus Saez", "Eric Garcia", "Josep Ruiz"]
var playerCards=[]
var turnoJug=0
var numPlayer=5
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
var CartasSacadas=[]
var interfaz_players = []

func _ready():
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
	startGame()
	
	#Empezar Juego
func startGame():
		mostrar_cartas_secuencialmente()
		ordreJugadors()

func ordreJugadors():
	#miau
	a

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
