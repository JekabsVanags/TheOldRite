extends Node2D

var active = false

func _ready():
	global.connect("clear", self, "_on_clear")

func _process(delta):
	if active == true:
		$"1Circle".disabled = false
	else:
		$"1Circle".disabled = true

func _on_clear():
	active = false

