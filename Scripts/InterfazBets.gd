extends Control

signal boton_presionado(opcion, valor)

# Referencias a nodos
onready var scrollbar = $HScrollBar
onready var lb_max = $lbMax
onready var lb_min = $lbMin
onready var lb_current = $lbCurrent

func _ready():
	# Conectar botones a la función que maneja las señales
	$call.connect("pressed", self, "_on_button_pressed", [1])
	$fold.connect("pressed", self, "_on_button_pressed", [2])
	$raise.connect("pressed", self, "_on_button_pressed", [3])

	# Conectar el cambio del ScrollBar
	scrollbar.connect("value_changed", self, "_on_scrollbar_value_changed")

	# Inicializar valores (estos se pueden sobrescribir desde el `main`)
	actualizar_valores_scrollbar(0, 100, 50)

# Actualizar valores mínimo, máximo y actual del ScrollBar
func actualizar_valores_scrollbar(min_val, max_val, current_val):
	scrollbar.min_value = min_val
	scrollbar.max_value = max_val
	scrollbar.value = current_val
	lb_min.text = str(min_val)
	lb_max.text = str(max_val)
	lb_current.text = str(current_val)

# Actualizar etiqueta cuando el ScrollBar cambie
func _on_scrollbar_value_changed(value):
	lb_current.text = str(value)

# Emitir la señal al presionar un botón
func _on_button_pressed(opcion):
	var valor_actual = scrollbar.value  # Tomamos el valor actual del HScrollBar
	emit_signal("boton_presionado", opcion, valor_actual)
