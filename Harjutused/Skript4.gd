extends Node


# Declare member variables here. Examples:
# var a = 2
# var b = "text"
var player = {'posx':0,'posy':0,'health':3,'items':['müts','mõõk'],'gold':100}
var players = ["Feake","Bradwell","Dreger","Bloggett","Lambole","Daish","Lippiett","Blackie","Stollenbeck","Houseago","Dugall","Sprowson","Kitley","Mcenamin","Allchin","Doghartie","Brierly","Pirrone","Fairnie","Seal","Scoffins","Galer","Matevosian","DeBlase","Cubbin","Izzett","Ebi","Clohisey","Prater","Probart","Samwaye","Concannon","MacLure","Eliet","Kundt","Reyes"]
var loop = 5
# Called when the node enters the scene tree for the first time.
func _ready():
	print(players.size())
	print(players[0])
	players.sort()
	players.erase('Reyes')
	players.append('Kert')
	players.max()
	print(players)
	
	while loop > 0:
		player.gold += 10
		loop -= 1
	print(player.gold)
# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass
