extends Node


# Declare member variables here. Examples:
var tunnid = 50
var tunnitasu = 5 
var tasu
var punktid = [7,28,64,51,81,40,21,73,34,98,39,17,33,85,35,44]
var kesk = 0
func hinne():
	for q in punktid:
		if q < 50:
			print(q,' - 2')
		elif q < 75:
			print(q,' - 3')
		elif q < 90:
			print(q,' - 4')
		else:
			print(q,' - 5')
func koik():
	print(punktid)
func keskmine():
	for q in punktid:
		kesk += q
	kesk = kesk/16
	print(kesk)
# Called when the node enters the scene tree for the first time.
func _ready():
	if tunnid <= 40:
		tasu = tunnid*tunnitasu
	elif tunnid > 40:
		tunnid -= 40
		tasu = 40*tunnitasu+(1.5*tunnid)
	print(tasu)
	keskmine()
	koik()
	hinne()

# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass
