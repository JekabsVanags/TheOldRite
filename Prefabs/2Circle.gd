extends AnimatedSprite

var circle = 2


func _ready():
	rotation_degrees = 0

func _process(delta):
	if global.verse != 0:
		rotation_degrees -= global.spinSpeed*delta

	if global.activeCircle1 == 2:
		match global.intersectSector1:
			1:
				$"Sector2-1".active = true;
			2:
				$"Sector2-2".active = true;
			3:
				$"Sector2-3".active = true;
			4:
				$"Sector2-4".active = true;
			5:
				$"Sector2-5".active = true;
			6:
				$"Sector2-6".active = true;
			7:
				$"Sector2-7".active = true;
			8:
				$"Sector2-8".active = true;
			9:
				$"Sector2-9".active = true;
	if global.activeCircle2 == 2:
		match global.intersectSector2:
			1:
				$"Sector2-1".active = true;
			2:
				$"Sector2-2".active = true;
			3:
				$"Sector2-3".active = true;
			4:
				$"Sector2-4".active = true;
			5:
				$"Sector2-5".active = true;
			6:
				$"Sector2-6".active = true;
			7:
				$"Sector2-7".active = true;
			8:
				$"Sector2-8".active = true;
			9:
				$"Sector2-9".active = true;

func _on_Sector29_area_entered(area):
	if area.active == true:
		global.pressTheButton = true

func _on_Sector29_area_exited(area):
	if area.active == true:
		global.pressTheButton = false


func _on_Sector21_area_entered(area):
	if area.active == true:
		global.pressTheButton = true

func _on_Sector21_area_exited(area):
	if area.active == true:
		global.pressTheButton = false

func _on_Sector22_area_entered(area):
	if area.active == true:
		global.pressTheButton = true

func _on_Sector22_area_exited(area):
	if area.active == true:
		global.pressTheButton = false


func _on_Sector23_area_entered(area):
	if area.active == true:
		global.pressTheButton = true

func _on_Sector23_area_exited(area):
	if area.active == true:
		global.pressTheButton = false


func _on_Sector24_area_entered(area):
	if area.active == true:
		global.pressTheButton = true

func _on_Sector24_area_exited(area):
	if area.active == true:
		global.pressTheButton = false


func _on_Sector25_area_entered(area):
	if area.active == true:
		global.pressTheButton = true

func _on_Sector25_area_exited(area):
	if area.active == true:
		global.pressTheButton = false


func _on_Sector26_area_entered(area):
	if area.active == true:
		global.pressTheButton = true
		
func _on_Sector26_area_exited(area):
	if area.active == true:
		global.pressTheButton = false


func _on_Sector27_area_entered(area):
	if area.active == true:
		global.pressTheButton = true


func _on_Sector27_area_exited(area):
	if area.active == true:
		global.pressTheButton = false


func _on_Sector28_area_entered(area):
	if area.active == true:
		global.pressTheButton = true


func _on_Sector28_area_exited(area):
	if area.active == true:
		global.pressTheButton = false
