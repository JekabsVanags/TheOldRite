extends AnimatedSprite

var circle = 3

func _ready():
	rotation_degrees = 0

func _process(delta):
	if global.verse >= 2:
		rotation_degrees += global.spinSpeed*delta
	
	if global.activeCircle1 == 3:
		match global.intersectSector1:
			1:
				$"Sector3-1".active = true;
			2:
				$"Sector3-2".active = true;
			3:
				$"Sector3-3".active = true;
			4:
				$"Sector3-4".active = true;
			5:
				$"Sector3-5".active = true;
			6:
				$"Sector3-6".active = true;
			7:
				$"Sector3-7".active = true;
			8:
				$"Sector3-8".active = true;
			9:
				$"Sector3-9".active = true;
	if global.activeCircle2 == 3:
		match global.intersectSector2:
			1:
				$"Sector3-1".active = true;
			2:
				$"Sector3-2".active = true;
			3:
				$"Sector3-3".active = true;
			4:
				$"Sector3-4".active = true;
			5:
				$"Sector3-5".active = true;
			6:
				$"Sector3-6".active = true;
			7:
				$"Sector3-7".active = true;
			8:
				$"Sector3-8".active = true;
			9:
				$"Sector3-9".active = true;
