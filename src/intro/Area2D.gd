extends Area2D

# Conectar la señal input_event desde el script en _ready
func _ready():
	self.connect("input_event", Callable(self, "_on_Area2D_input_event"))

# Función para manejar el evento de entrada
func _on_Area2D_input_event(_viewport, event, _shape_idx):
	if event is InputEventMouseButton and event.pressed:
		change_scene()

# Función para cambiar la escena
func change_scene():
	get_tree().change_scene_to_file("res://src/questionnaire/questionnaire.tscn")
	self.queue_free()
