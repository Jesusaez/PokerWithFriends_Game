extends Control

signal boton_presionado(opcion)

# Conectar los botones al método "_on_button_pressed"
func _ready():
	$call.connect("pressed", self, "_on_button_pressed", [1])
	$fold.connect("pressed", self, "_on_button_pressed", [2])
	$raise.connect("pressed", self, "_on_button_pressed", [3])
	# No conectamos HScrollBar porque no la queremos para esta función

# Emitir la señal con el número del botón presionado
func _on_button_pressed(opcion):
	emit_signal("boton_presionado", opcion)
