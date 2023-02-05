extends AnimatedSprite

var circle = 1

func _ready():
	rotation_degrees = 0

func _process(delta):
	if global.verse != 0:
		rotation_degrees += global.spinSpeed*delta
	
	if global.activeCircle1 == 1:
		match global.intersectSector1:
			1:
				$"Sector1-1".active = true;
			2:
				$"Sector1-2".active = true;
			3:
				$"Sector1-3".active = true;
			4:
				$"Sector1-4".active = true;
			5:
				$"Sector1-5".active = true;
			6:
				$"Sector1-6".active = true;
			7:
				$"Sector1-7".active = true;
			8:
				$"Sector1-8".active = true;
			9:
				$"Sector1-9".active = true;
