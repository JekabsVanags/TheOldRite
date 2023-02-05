extends Node2D

var verse1played =false
var verse2played =false
var verse3played =false
var verse4played =false
var verse5played =false

var rng = RandomNumberGenerator.new()

func _ready():
	global.verse = 0
	global.streak = -1
	global.gamePlaying = false
	global.growShrinkSize = 0.018
	global.activeTop = "dievsaugsa"
	global.activeBottom = "dievsapaksa"
	global.levelupstreak = 6
	global.fastSpeed = 50
	global.slowSpeed = 25
	rng.randomize()

func _process(delta):
	if global.gamePlaying == true:
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
	elif global.verse == 0 && global.newverse == true && verse5played == false:
		$AnimationPlayer.play("End")
		global.newverse = false
		verse5played = true
