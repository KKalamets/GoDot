extends Node


# Declare member variables here. Examples:
var elud = 100
var random = RandomNumberGenerator.new()
var dam 
var kuulid = 5
var pihtas
var lasud = 0
var tapsus = 0
func laskmine():
	pihtas = random.randf_range(1,10)
	if pihtas > 4:
		random.randomize()
		elud -= dam
		dam = random.randi_range(8,12)
		kuulid -= 1
		print('Elud: ',elud)
		print('Kuulid: ',kuulid)
		print('Tegevus: Lasi')
		lasud += 1
		tapsus += 1
	else:
		kuulid -= 1
		lasud += 1
		print('Lasid mööda!')
		print('Elud: ',elud)
		print('Kuulid: ',kuulid)
func laadimine():
	kuulid = 5
	print('Elud: ',elud)
	print('Kuulid: ',kuulid)
	print('Tegevus: Lasi')
func voit():
	print('!!!Võitsid!!!')
	print('Täpsus',tapsus,'/',lasud)
# Called when the node enters the scene tree for the first time.
func _ready():
	random.randomize() # Replace with function body.
	print('Elud: ',elud)
	print('Kuulid: ',kuulid)
	dam = random.randi_range(8,12)
	
# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	
	if Input.is_action_just_pressed('tulista') and kuulid > 0:
		laskmine()
	if Input.is_action_just_pressed('lae'):
		laadimine()
	if elud < 0:
		voit()
		get_tree().quit()
