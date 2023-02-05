extends AudioStreamPlayer

var isPlaying = false
var lastVerse
var dontDoIt = false

var startmusic = load("res://Visuals_demo/Finished/Takas_BGM_Final/Lietus_BGM_Taka.ogg")
var verse1 = load("res://Visuals_demo/Finished/Takas_BGM_Final/Verse1_BGM_Taka.ogg")
var verse2 = load("res://Visuals_demo/Finished/Takas_BGM_Final/Verse2_BGM_Taka.ogg")
var verse3 = load("res://Visuals_demo/Finished/Takas_BGM_Final/Verse3_BGM_Taka.ogg")
var verse4 = load("res://Visuals_demo/Finished/Takas_BGM_Final/Verse4_BGM_Taka.ogg")
var endmusic = load("res://Visuals_demo/Finished/Takas_BGM_Final/Kokle4_BGM_Taka.ogg")

var drumSimple = load("res://Visuals_demo/Finished/Takas_BGM_Final/Bungas1_BGM_Taka.ogg")
var drumMix = load("res://Visuals_demo/Finished/Takas_BGM_Final/Bungas3_BGM_Taka.ogg")
var drumNonstop = load("res://Visuals_demo/Finished/Takas_BGM_Final/Bungas4_BGM_Taka.ogg")

var kokleFast = load("res://Visuals_demo/Finished/Takas_BGM_Final/Kokle2_BGM_Taka.ogg")
var kokleIntense = load("res://Visuals_demo/Finished/Takas_BGM_Final/Kokle3_BGM_Taka.ogg")

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
		$DrumPlayer.stream = drumSimple
		$DrumPlayer._set_playing(true)

func _on_AudioStreamPlayer2D_finished():
	if global.streak >= global.levelupstreak && dontDoIt == false:
		global.verse += 1
		global.newverse = true
		global.streak = 0
		match global.verse:
			2:
				stream = verse2
				doTheStuffJuLee()
			3:
				stream = verse3
				doTheStuffJuLee()
			4: 
				stream = verse4
				doTheStuffJuLee()
			5:
				global.verse = 0
				stream = endmusic
				$Button.disabled = false
				$Button.show()
				global.gamePlaying = false
			0:
				stream = startmusic
		_set_playing(true)
		$KoklePlayer._set_playing(true)
		$DrumPlayer._set_playing(true)
	else:
		_set_playing(true)
		$KoklePlayer._set_playing(true)
		$DrumPlayer._set_playing(true)

func doTheStuffJuLee ():
		match  rng.randi_range(1,2):
			1:
				$KoklePlayer.stream = kokleFast
			2:
				$KoklePlayer.stream = kokleIntense
		match rng.randi_range(1,3):
			1:
				$DrumPlayer.stream = drumSimple
			2:
				$DrumPlayer.stream = drumMix
			3:
				$DrumPlayer.stream = drumNonstop

func _on_Button_pressed():
	$AnimationPlayer.play("To_Menu")
	SaveData.loreDievs = true
	SaveData.loreJods = true
	SaveData.loreLaima = true

func _on_Button_mouse_entered():
	sfx.inputRecived()

func _on_AnimationPlayer_animation_finished(anim_name):
	if anim_name == "To_Menu":
		get_tree().change_scene("res://MainMenu/Menu.tscn")
