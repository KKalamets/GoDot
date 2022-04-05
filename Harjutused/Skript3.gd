extends Node


# Declare member variables here. Examples:
# var a = 2
# var b = "text"
var elud1 = 100
var elud2 = 100
var power1 = 0
var power2 = 0
var random = RandomNumberGenerator.new()

# Called when the node enters the scene tree for the first time.
func _ready():
	print('\nP1: ',elud1,'\nP2: ',elud2)
	while elud1 > 0 and elud2 > 0: # Replace with function body.
		random.randomize()
		power1 = random.randi_range(8,15)
		power2 = random.randi_range(10,20)
		elud1 -= power2
		elud2 -= power1
		print('\nP1: ',elud1,'\nP2: ',elud2)
	if elud1 > elud2:
		print('\nP1 võitis')
	else:
		print('\nP2 Võitis')

# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass
