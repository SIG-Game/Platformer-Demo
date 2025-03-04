extends CanvasLayer

var label : Label

func _ready():
	label = $CenterContainer/MarginContainer/VBoxContainer/Label
	set_lives_text(5)

func set_lives_text(lives: int):
	print("Called")
	print(lives)
	label.text = "Lives: " + str(lives)
