extends Node


var random = RandomNumberGenerator.new()
var dam
var kuulid = 5
var elud = 100
var pihtas
var lasud = 0
var tapsus = 0
var skoor = [tapsus,lasud]
var tegevus = 'PEW PEW'

func lae():
	kuulid = 5
	tegevus = 'Relv Laetud!'

func tulista():
	kuulid -= 1
	pihtas = random.randi_range(1,10)
	if pihtas > 3:
		dam = random.randi_range(8,12)
		elud -= dam
		tegevus = 'Pihtas!'
		tapsus += 1
		lasud += 1
	else:
		tegevus = 'Mööda Lasid!'
		lasud += 1


# Called when the node enters the scene tree for the first time.
func _ready():
	random.randomize()
	$TextureRect/KUULID.text = 'KUULID: %s' % kuulid
	$TextureRect/ELUD.text = 'ELUD: %s' % elud
	$TextureRect/TAPSUS.text = 'TÄPSUS %s/%s' % skoor
	$TextureRect/PEW_PEW.text = '%s' % tegevus
	$TextureRect/GAME_OVER.text = ''

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	if Input.is_action_just_pressed("lae"):
		lae()
	if Input.is_action_just_pressed("tulista"):
		tulista()
	skoor = [tapsus,lasud]
	if elud < 1:
		$TextureRect/GAME_OVER.text = 'GAME OVER'
		get_tree().paused = true
	$TextureRect/KUULID.text = 'KUULID: %s' % kuulid
	$TextureRect/ELUD.text = 'ELUD: %s' % elud
	$TextureRect/TAPSUS.text = 'TÄPSUS %s/%s' % skoor
	$TextureRect/PEW_PEW.text = '%s' % tegevus
