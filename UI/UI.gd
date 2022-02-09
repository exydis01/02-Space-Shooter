extends Control


# Declare member variables here. Examples:
# var a = 2
# var b = "text"


# Called when the node enters the scene tree for the first time.
func _ready():
	Global.update_score(0)
	Global.update_time(0)
	Global.update_lives(0)

func update_score():
	$Score.text = "Score: " + str(Global.score)

func update_lives():
	$Lives.text = "Lives: " + str(Global.lives)

func update_time():
	$Time.text = "Time: " + str(Global.time)

func _on_Timer_timeout():
	Global.update_time(-1)

# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass


func _on_Quit_pressed():
	get_tree().quit()


func _on_Restart_pressed():
	Global.reset()
	var _scene = get_tree().change_scene("res://Game.tscn")
