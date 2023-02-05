extends Node2D

var viewing = false

func _ready():
	if SaveData.loreDievs == true:
		$Buttons/Dievs/Light2D.hide()
	if SaveData.loreJods == true:
		$Buttons/Jods/Light2D.hide()
	if SaveData.loreLaima == true:
		$Buttons/Laima/Light2D.hide()
		
		
	$InfoDump.hide()


# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass


func _on_Dievs_mouse_entered():
		sfx.inputRecived()
func _on_Dievs_pressed():
	if SaveData.loreDievs == true:
		$InfoDump/Dievs_aprakstsjpg.show()
		$Buttons.hide()
		$InfoDump.show()


func _on_Creators_pressed():
	$InfoDump/Creators.show()
	$Buttons.hide()
	$InfoDump.show()
func _on_Creators_mouse_entered():
	sfx.inputRecived()


func _on_Laima_pressed():
	if SaveData.loreLaima == true:
		$InfoDump/Laima_aprakstsjpg.show()
		$Buttons.hide()
		$InfoDump.show()
func _on_Laima_mouse_entered():
	sfx.inputRecived()

func _on_Jods_mouse_entered():
	sfx.inputRecived()
func _on_Jods_pressed():
	if SaveData.loreJods == true:
		$InfoDump/Jods_aprakstsjpg.show()
		$Buttons.hide()
		$InfoDump.show()

func _on_Mara_mouse_entered():
	sfx.inputRecived()


func _on_Jumis_mouse_entered():
	sfx.inputRecived()

func _on_Vells_mouse_entered():
	sfx.inputRecived()

func _on_Usins_mouse_entered():
	sfx.inputRecived()


func _on_Button_mouse_entered():
	sfx.inputRecived()

func _on_Button_pressed():
	if $InfoDump/Dievs_aprakstsjpg.visible == true:
		$InfoDump/Dievs_aprakstsjpg.hide()
	if $InfoDump/Jods_aprakstsjpg.visible == true:
		$InfoDump/Jods_aprakstsjpg.hide()
	if $InfoDump/Laima_aprakstsjpg.visible == true:
		$InfoDump/Laima_aprakstsjpg.hide()
	if $InfoDump/Creators.visible == true:
		$InfoDump/Creators.hide()
	$InfoDump.hide()
	$Buttons.show()


func _on_Return_mouse_entered():
	sfx.inputRecived()
	
func _on_Return_pressed():
	$AnimationPlayer.play("ToTree")

func _on_AnimationPlayer_animation_finished(anim_name):
	if anim_name == "ToTree":
		get_tree().change_scene("res://MainMenu/Menu.tscn")
