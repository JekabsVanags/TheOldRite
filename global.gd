extends Node

var spinSpeed
var fastSpeed
var slowSpeed

var pressTheButton

var activeCircle1 = 1
var activeCircle2 = 2

var intersectSector1 = 1
var intersectSector2 = 1


var verse = 0
var newverse = false
var streak = -1
var levelupstreak = 1
var growShrinkSize
var activeTop
var activeBottom

var gamePlaying
var rng = RandomNumberGenerator.new()

signal clear
signal grow
signal shrink

func _ready():
	spinSpeed = fastSpeed

func _process(delta):
	if pressTheButton == true:
		spinSpeed = slowSpeed
	else:
		spinSpeed = fastSpeed
	
	if Input.is_action_just_released("ui_accept") && verse == 0 && gamePlaying == false && streak == -1:
		verse = 1
		gamePlaying = true
		randomSector()
	

func randomSector():
	rng.randomize()
	activeCircle2 = activeCircle1 + 1
	
	var s1 = rng.randi_range(1,9)
	if s1 != intersectSector1:
		intersectSector1 = s1
	else:
		if intersectSector1 > 5:
			s1-=2
			intersectSector1 = s1
		elif intersectSector1 < 5:
			s1+=2
			intersectSector1 = s1
	var s2 = rng.randi_range(1,9)
	if s2 != intersectSector2:
		intersectSector2 = s2
	else:
		if intersectSector2 > 5:
			s2-=2
			intersectSector2 = s2
		elif intersectSector2 < 5:
			s2+=2                
