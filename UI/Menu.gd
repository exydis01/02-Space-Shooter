extends Control


# Declare member variables here. Examples:
# var a = 2
# var b = "text"


# Called when the node enters the scene tree for the first time.
func _ready():
	hide()

func _unhandled_input(event):
	if event.is_action_pressed("menu"):
		if not visible:
			get_tree().paused = true
		else:
			get_tree().paused = false
			hide()
# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass
