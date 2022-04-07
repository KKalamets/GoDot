extends Node


# Declare member variables here. Examples:
var elud = 100
var random = RandomNumberGenerator.new()
var dam 
var kuulid = 5
var pihtas 

# Called when the node enters the scene tree for the first time.
func _ready():
	random.randomize() # Replace with function body.
	print('Elud: ',elud)
	print('Kuulid: ',kuulid)
	dam = random.randi_range(8,12)
	
# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	if Input.is_action_just_pressed('tulista') and kuulid > 0:
		random.randomize()
		elud -= dam
		dam = random.randi_range(8,12)
		kuulid -= 1
		print('Elud: ',elud)
		print('Kuulid: ',kuulid)
		print('Tegevus: Lasi')
	if Input.is_action_just_pressed('lae'):
		kuulid = 5
		print('Elud: ',elud)
		print('Kuulid: ',kuulid)
		print('Tegevus: Lasi')
