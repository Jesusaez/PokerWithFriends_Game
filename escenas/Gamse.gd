extends Node2D

# Arrays con los nombres y los chips
var chips = [5000, 5000, 5000, 5000, 5000]
var playerName = ["Pedro Sanchez","Mario Mendez", "Jesus Saez", "Eric Garcia", "Josep Ruiz"]

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


func _ready():
	randomize()
	# ------------------------------------------------
	# Instanciar los nombres y fichas de jugadores
	# ------------------------------------------------
	for i in range(4):
		var player_card_instance = player_card_scene.instance()

		# Asignar nombre y chips a los labels
		player_card_instance.get_node("Background/Player_Name").text = playerName[i]
		player_card_instance.get_node("Background/Chips").text = str(chips[i])

		# Ubicar el cartel en la posición correspondiente del PathFollow2D
		var path_follow = path_follows[i]
		player_card_instance.rect_position = path_follow.position
		player_card_instance.rect_scale = Vector2(0.75, 0.75)
		
		# Añadir la instancia a la escena
		add_child(player_card_instance)

	# ------------------------------------------------
	# Crear cartas en las ubicaciones especificadas
	# ------------------------------------------------
	for i in range(2):
		var card_instance = card_scene.instance()

		# Elegir una carta aleatoria de la baraja
		var card_texture = load(Baraja[randi() % Baraja.size()])
		#CartasSacadas=card_texture
		card_instance.get_node("Img").texture = card_texture

		# Ubicar la carta en la posición correspondiente en CardSpawn
		var card_position = Card_positions[i]
		card_instance.rect_position = card_position.position
		card_instance.rect_scale = Vector2(1.5, 1.5)
		
		# Añadir la instancia de la carta a la escena
		add_child(card_instance)
		
	
	
