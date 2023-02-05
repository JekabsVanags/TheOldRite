extends AnimatedSprite

func _ready():
	play("empty")

func _process(delta):
	if global.verse == 0:
		hide()
	else:
		show()

	if get_parent().active == true && global.activeCircle1 == get_parent().get_parent().circle:
		play(global.activeBottom)
	elif get_parent().active == true && global.activeCircle1+1 == get_parent().get_parent().circle:
		play(global.activeTop)
	else:
		play("empty")
