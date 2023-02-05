extends AnimatedSprite

var circle = 4

func _ready():
	rotation_degrees = 0

func _process(delta):
	if global.verse >= 3:
		rotation_degrees -= global.spinSpeed*delta
	
	if global.activeCircle2 == 4:
		match global.intersectSector1:
			1:
				$"Sector4-1".active = true;
			2:
				$"Sector4-2".active = true;
			3:
				$"Sector4-3".active = true;
			4:
				$"Sector4-4".active = true;
			5:
				$"Sector4-5".active = true;
			6:
				$"Sector4-6".active = true;
			7:
				$"Sector4-7".active = true;
			8:
				$"Sector4-8".active = true;
			9:
				$"Sector4-9".active = true;


func _on_Sector41_area_entered(area):
	if area.active == true:
		global.pressTheButton = true

func _on_Sector41_area_exited(area):
	if area.active == true:
		global.pressTheButton = false


func _on_Sector42_area_entered(area):
	if area.active == true:
		global.pressTheButton = true

func _on_Sector42_area_exited(area):
	if area.active == true:
		global.pressTheButton = false


func _on_Sector43_area_entered(area):
	if area.active == true:
		global.pressTheButton = true

func _on_Sector43_area_exited(area):
	if area.active == true:
		global.pressTheButton = false


func _on_Sector44_area_entered(area):
	if area.active == true:
		global.pressTheButton = true

func _on_Sector44_area_exited(area):
	if area.active == true:
		global.pressTheButton = false


func _on_Sector45_area_entered(area):
	if area.active == true:
		global.pressTheButton = true

func _on_Sector45_area_exited(area):
	if area.active == true:
		global.pressTheButton = false


func _on_Sector46_area_entered(area):
	if area.active == true:
		global.pressTheButton = true

func _on_Sector46_area_exited(area):
	if area.active == true:
		global.pressTheButton = false


func _on_Sector47_area_entered(area):
	if area.active == true:
		global.pressTheButton = true

func _on_Sector47_area_exited(area):
	if area.active == true:
		global.pressTheButton = false


func _on_Sector48_area_entered(area):
	if area.active == true:
		global.pressTheButton = true

func _on_Sector48_area_exited(area):
	if area.active == true:
		global.pressTheButton = false


func _on_Sector49_area_entered(area):
	if area.active == true:
		global.pressTheButton = true

func _on_Sector49_area_exited(area):
	if area.active == true:
		global.pressTheButton = false
