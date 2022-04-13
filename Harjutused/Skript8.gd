extends Node


var valik2
var random = RandomNumberGenerator.new()
var voidud = 0
var kaotused = 0

func _ready():
	$TextureRect/Tulemus.text = ''
	$TextureRect/Valik1.text = ''
	$TextureRect/Valik2.text = ''


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	$TextureRect/Voidud.text = 'VÕIDUD: %s' %voidud
	$TextureRect/Kaotused.text = 'KAOTUSED %s' %kaotused
	
func _on_Kivi_pressed():
	$TextureRect/Valik1.text = 'KIVI'
	random.randomize()
	valik2 = random.randi_range(1,3)
	if valik2 == 1:
		$TextureRect/Valik2.text = 'KIVI'
		$TextureRect/Tulemus.text = 'VIIK'
	elif valik2 == 2:
		$TextureRect/Valik2.text = 'PABER'
		$TextureRect/Tulemus.text = 'KAOTASID'
		kaotused += 1
	else:
		$TextureRect/Valik2.text = 'KÄÄRID'
		$TextureRect/Tulemus.text = 'VÕITSID'
		voidud += 1
	if voidud == 10 or kaotused == 10:
		$Kaarid.visible = not $Kaarid.visible
		$Kivi.visible = not $Kivi.visible
		$Paber.visible = not $Paber.visible
		$TextureRect/Valik1.text = ''
		$TextureRect/Valik2.text = ''
		if voidud == 10:
			$TextureRect/Tulemus.text = 'Said Hakkama'
		elif kaotused == 10:
			$TextureRect/Tulemus.text = 'Pähe Said'


func _on_Paber_pressed():
	$TextureRect/Valik1.text = 'PABER'
	random.randomize()
	valik2 = random.randi_range(1,3)
	if valik2 == 1:
		$TextureRect/Valik2.text = 'KIVI'
		$TextureRect/Tulemus.text = 'VÕITSID'
		voidud += 1
	elif valik2 == 2:
		$TextureRect/Valik2.text = 'PABER'
		$TextureRect/Tulemus.text = 'VIIK'
	else:
		$TextureRect/Valik2.text = 'KÄÄRID'
		$TextureRect/Tulemus.text = 'KAOTUSED'
		kaotused += 1
	if voidud == 10 or kaotused == 10:
		$Kaarid.visible = not $Kaarid.visible
		$Kivi.visible = not $Kivi.visible
		$Paber.visible = not $Paber.visible
		$TextureRect/Valik1.text = ''
		$TextureRect/Valik2.text = ''
		if voidud == 10:
			$TextureRect/Tulemus.text = 'Said Hakkama'
		elif kaotused == 10:
			$TextureRect/Tulemus.text = 'Pähe Said'


func _on_Kaarid_pressed():
	$TextureRect/Valik1.text = 'KÄÄRID'
	random.randomize()
	valik2 = random.randi_range(1,3)
	if valik2 == 1:
		$TextureRect/Valik2.text = 'KIVI'
		$TextureRect/Tulemus.text = 'KAOTASID'
		kaotused += 1
	elif valik2 == 2:
		$TextureRect/Valik2.text = 'PABER'
		$TextureRect/Tulemus.text = 'VÕITSID'
		voidud += 1
	else:
		$TextureRect/Valik2.text = 'KÄÄRID'
		$TextureRect/Tulemus.text = 'VIIK'
	if voidud == 10 or kaotused == 10:
		$Kaarid.visible = not $Kaarid.visible
		$Kivi.visible = not $Kivi.visible
		$Paber.visible = not $Paber.visible
		$TextureRect/Valik1.text = ''
		$TextureRect/Valik2.text = ''
		if voidud == 10:
			$TextureRect/Tulemus.text = 'Said Hakkama'
		elif kaotused == 10:
			$TextureRect/Tulemus.text = 'Pähe Said'


func _on_Uus_mang_pressed():
	get_tree().reload_current_scene()


func _on_AudioStreamPlayer_ready():
	$Muusika.play()


func _on_Muusika_finished():
	$Muusika.play() # Replace with function body.
