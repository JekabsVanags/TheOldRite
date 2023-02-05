extends Node2D

var verse1played =false
var verse2played =false
var verse3played =false
var verse4played =false
var verse5played =false
var verse6played =false
var verseendplayed =false

var rng = RandomNumberGenerator.new()

func _ready():
	global.verse = 0
	global.streak = -1
	global.gamePlaying = false
	global.growShrinkSize = 0.010
	global.activeTop = "akaaugsa"
	global.activeBottom = "akaapaksa"
	global.levelupstreak = 2
	global.fastSpeed = 40
	global.slowSpeed = 20
	
	$Animations.hide()
	rng.randomize()
	z_index = 0

func _process(delta):
	if global.gamePlaying == true && global.verse != 0:
		checkingHits()
	textControl()

func checkingHits():
	if Input.is_action_just_pressed("ui_accept") && global.pressTheButton == true && global.gamePlaying == true:
		global.spinSpeed = 50
		global.streak += 1
		match global.verse:
			1:
				global.activeCircle1 = 1
			2:
				global.activeCircle1 = rng.randi_range(1,2)
			3:
				global.activeCircle1 = rng.randi_range(1,3)
			4:
				global.activeCircle1 = rng.randi_range(1,3)
		global.randomSector()
		global.emit_signal("clear")
		global.pressTheButton = false
		global.emit_signal("grow")

	elif Input.is_action_just_pressed("ui_accept") && global.pressTheButton == false && global.gamePlaying == true:
		global.streak -= 1
		match global.verse:
			1:
				global.activeCircle1 = 1
			2:
				global.activeCircle1 = rng.randi_range(1,2)
			3:
				global.activeCircle1 = rng.randi_range(1,3)
			4:
				global.activeCircle1 = rng.randi_range(1,3)
		global.randomSector()
		global.emit_signal("clear")
		global.emit_signal("shrink")
func textControl():
	if global.verse == 1 && verse1played == false:
		$AnimationPlayer.play("Verse 1")
		verse1played = true
		global.newverse = false
	elif global.verse == 2 && global.newverse == true && verse2played == false:
		$AnimationPlayer.play("Verse2")
		verse2played = true
		global.newverse = false
	elif global.verse == 3 && global.newverse == true && verse3played == false:
		verse3played = true
		$AnimationPlayer.play("Verse3")
		global.newverse = false
	elif global.verse == 4 && global.newverse == true && verse4played == false:
		$AnimationPlayer.play("Verse4")
		verse4played = true
		global.newverse = false
	elif global.verse == 5 && global.newverse == true && verse5played == false:
		$AnimationPlayer.play("Verse5")
		global.fastSpeed = 70
		global.slowSpeed = 35
		global.levelupstreak = 8
		global.activeTop = "krustsaugsa"
		global.activeBottom = "krustsapaksa"
		get_parent().get_child(3).get_child(0).texture = "res://Kinsmen/Signs/krustsfull.png"
		verse5played = true
		global.newverse = false
	elif global.verse == 6 && global.newverse == true && verse6played == false:
		$AnimationPlayer.play("Verse6")
		verse6played = true
		global.newverse = false
	elif global.verse == 0 && verse6played == true && verseendplayed == false:
		$AnimationPlayer.play("FLASH")
		global.newverse = false
		global.gamePlaying = true
		verseendplayed = true

func _on_EndAnimation_animation_finished():
	if $Animations/EndAnimation.animation == "default":
		$Animations/EndAnimation.play("Baby")
		$AnimationPlayer.play("End")
		$Animations.z_index = -1
		
func _on_AnimationPlayer_animation_finished(anim_name):
	if anim_name == "FLASH":
		$Animations.show()
		$Animations/EndAnimation.play("default")
