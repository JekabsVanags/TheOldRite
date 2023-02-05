extends AnimatedSprite

signal songFinished

func _ready():
	$Label.show()


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	if global.verse != 0:
		$Label.hide()
	
	if global.pressTheButton == true && Input.is_action_just_pressed("ui_accept") && global.verse != 0:
		scale += Vector2(global.growShrinkSize,global.growShrinkSize)
	elif global.pressTheButton == false && Input.is_action_just_pressed("ui_accept") && global.verse != 0:
		scale -= Vector2(global.growShrinkSize,global.growShrinkSize)
	
	if global.newverse == true:
		match global.verse:
			2:
				play("growing1-2")
			3:
				play("growing2-3")
			0:
				play("1")
			_:
				play("3")

func _on_AnimatedSprite_animation_finished():
	if animation == "growing1-2":
		play("2")
	if animation == "growing2-3":
		play("3")
