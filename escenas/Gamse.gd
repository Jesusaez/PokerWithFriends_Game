extends Node2D

# Arrays con los nombres y los chips
var chips = [5000, 5000, 5000, 5000, 5000]
var playerName = ["Pedro Sanchez","Mario Mendez", "Jesus Saez", "Eric Garcia", "Josep Ruiz"]

# Escena que quieres instanciar
var player_card_scene = preload("res://escenas/InterfazEnemy.tscn")  # Cambia la ruta según tu estructura

# Rutas para las posiciones de los jugadores (PathFollow2D)
onready var path_follows = [
	$InterfazJugadores/InterJugSpawnLocation1,
	$InterfazJugadores/InterJugSpawnLocation2,
	$InterfazJugadores/InterJugSpawnLocation3,
	$InterfazJugadores/InterJugSpawnLocation4
]



func _ready():
	# Instanciar las cartas de jugador
	for i in range(4):
		var player_card_instance = player_card_scene.instance()

		# Asignar nombre y chips a los labels
		player_card_instance.get_node("Background/Player_Name").text = playerName[i+1]
		player_card_instance.get_node("Background/Chips").text = str(chips[i+1])

		# Ubicar el cartel en la posición correspondiente del PathFollow2D
		var path_follow = path_follows[i]
		player_card_instance.rect_position = path_follow.position
		
		player_card_instance.rect_scale = Vector2(0.75, 0.75)  # Cambia el 0.5 por el valor deseado (0.5 es la mitad de tamaño)
		# Añadir la instancia a la escena
		add_child(player_card_instance)
