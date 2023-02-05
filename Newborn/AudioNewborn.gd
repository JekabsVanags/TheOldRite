extends AudioStreamPlayer

var isPlaying = false
var lastVerse
var dontDoIt = false

var startmusic = load("res://Visuals_demo/Finished/Takas_BGM_Final/Lietus_BGM_Taka.ogg")
var verse1 = load("res://Newborn/Music/Kokle_prefab.wav")
var endmusic = load("res://Newborn/Music/Kokle_prefab.wav")

var rng = RandomNumberGenerator.new()


# Called when the node enters the scene tree for the first time.
func _ready():
	$Button.disabled = true
	$Button.hide()
	stream = startmusic
	_set_playing(true)
	rng.randomize()
	


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	
	if global.verse != 0 && isPlaying == false && dontDoIt == false:
		isPlaying = true
		stream = verse1
		_set_playing(true)

#func doTheStuffJuLee ():
#		match  rng.randi_range(1,2):
#			1:
#				$KoklePlayer.stream = kokleFast
#			2:
#				$KoklePlayer.stream = kokleIntense
#		match rng.randi_range(1,3):
#			1:
#				$DrumPlayer.stream = drumSimple
#			2:
#				$DrumPlayer.stream = drumMix
#			3:
#				$DrumPlayer.stream = drumNonstop

func _on_Button_pressed():
	$Button/AnimationPlayer.play("To_Menu")

func _on_Button_mouse_entered():
	sfx.inputRecived()

func _on_AnimationPlayer_animation_finished(anim_name):
	if anim_name == "To_Menu":
		get_tree().change_scene("res://MainMenu/Menu.tscn")


func _on_VersePlayer_finished():
	if global.streak >= global.levelupstreak && dontDoIt == false:
		global.verse += 1
		global.newverse = true
		global.streak = 0
		match global.verse:
			2:
				stream = verse1
				#doTheStuffJuLee()
			3:
				stream = verse1
				#doTheStuffJuLee()
			4: 
				stream = verse1
				#doTheStuffJuLee()
			5:
				stream = verse1
			6:
				stream = verse1
			7:
				global.verse = 0
				stream = endmusic
				$Button.disabled = false
				$Button.show()
				global.gamePlaying = false
			0:
				stream = startmusic
		_set_playing(true)
		#$KoklePlayer._set_playing(true)
		#$DrumPlayer._set_playing(true)
	else:
		_set_playing(true)
		#$KoklePlayer._set_playing(true)
		#$DrumPlayer._set_playing(true)
