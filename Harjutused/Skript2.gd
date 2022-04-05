extends Node


# Declare member variables here. Examples:
# var a = 2
# var b = "text"
var raha = 11
var hind = 10
var a = 5
var b = 5

# Called when the node enters the scene tree for the first time.
func _ready():
	if raha >= hind:
		print('Said kauba kätte üle jäi ',raha-hind,' raha')
	else:
		print('Sul pole piisavalt raha, Puudu on ',hind-raha,' raha')
	if a != b:
		print('Tegemist on ristkülikuga!')
	else:
		print('Tegemist on Ruuduga!')
	print('pindala = ',a*b)


# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass
