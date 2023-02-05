extends Node2D


# Declare member variables here. Examples:
# var a = 2
# var b = "text"


# Called when the node enters the scene tree for the first time.
func _ready():
	$RidingSpringSong/Label.hide()
	$VagrabondSong/Label.hide()
	$VellesHonorSong/Label.hide()
	$OakSong/Label.hide()
	
	


func _on_RSSBT_mouse_entered():
	$RidingSpringSong/Label.show()
	sfx.inputRecived()
func _on_RSSBT_mouse_exited():
	$RidingSpringSong/Label.hide()

func _on_VSBT_pressed():
	get_parent().get_child(6).play("VagrabodSong")
	get_parent().get_node("Background/Node2D/Sign").play("VagrabondSOng")
func _on_VSBT_mouse_entered():
	$VagrabondSong/Label.show()
	sfx.inputRecived()
func _on_VSBT_mouse_exited():
	$VagrabondSong/Label.hide()


func _on_VHSBT_mouse_entered():
	$VellesHonorSong/Label.show()
	sfx.inputRecived()
func _on_VHSBT_mouse_exited():
	$VellesHonorSong/Label.hide()

func _on_OSBT_mouse_entered():
	$OakSong/Label.show()
	sfx.inputRecived()
func _on_OSBT_mouse_exited():
	$OakSong/Label.hide()




func _on_Buttons_pressed_animation_finished(anim_name):
	if anim_name == "VagrabodSong":
		get_tree().change_scene("res://VagabondSong/Demo.tscn")
	if anim_name == "Lore":
		get_tree().change_scene("res://LorePage/Lore.tscn")
	if anim_name == "NewbornsSong":
		get_tree().change_scene("res://Newborn/Newborn.tscn")
	if anim_name == "Kinsmen":
		get_tree().change_scene("res://Kinsmen/Kinsmen.tscn")


func _on_Lore_mouse_entered():
	sfx.inputRecived()

func _on_Lore_pressed():
	get_parent().get_child(6).play("Lore")


func _on_RSSBT_pressed():
	get_parent().get_node("Background/Node2D/Sign").play("NewbornsOng")
	get_parent().get_child(6).play("NewbornsSong")


func _on_VHSBT_pressed():
	get_parent().get_node("Background/Node2D/Sign").play("Kinsmen")
	get_parent().get_child(6).play("Kinsmen")
