extends Sprite

var movimento = Vector2(1,0)
var velocidade = 300
var dir_unica = true

func _process(delta: float) -> void:
	if dir_unica:
		look_at(get_global_mouse_position())
		dir_unica = false
	global_position += movimento.rotated(rotation) * velocidade * delta
	
func _on_VisibilityNotifier2D_screen_exited() -> void:
	queue_free()
