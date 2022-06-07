extends Node


# Declare member variables here. Examples:
# var a = 2
# var b = "text"
var nimi = 'Kert'
var elud = 3
var pikkus = len(nimi)
var random = RandomNumberGenerator.new()
# Called when the node enters the scene tree for the first time.
func _ready():
	random.randomize()
	print('nimi: ',nimi)
	print('elud: ',elud)
	print('nime pikkus: ',pikkus)
	print('elud + 2: ',elud+2)
	var suvaline = random.randi_range(0,19)
	print('suvaline arv: ',suvaline)
	

# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass
