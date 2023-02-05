extends Sprite


# Declare member variables here. Examples:
# var a = 2
# var b = "text"


# Called when the node enters the scene tree for the first time.
func _ready():
	global.connect("grow", self, "_on_grow")
	global.connect("shrink",self,"_on_shrink")
	$AnimationPlayer.play("idle")

func _on_grow():
		$AnimationPlayer.play("grow")
		scale += Vector2(0.03,0.03) 

func _on_shrink():
		$AnimationPlayer.play("shrink")
		scale -= Vector2(0.03,0.03)

func _on_AnimationPlayer_animation_finished(anim_name):
	$AnimationPlayer.play("idle")
