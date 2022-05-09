extends KinematicBody2D

var elud = 3

const kiirendus = 30
const kiirus = 300
const grav = 20
const jumpp = -600
const up = Vector2(0, -1)
var motion = Vector2()


func run():
	if Input.is_action_pressed("ui_right") and not Input.is_action_pressed("ui_left"): 
		motion.x += kiirendus
		motion.x = min(kiirus, motion.x)
		$AnimatedSprite.flip_h = false
		$AnimatedSprite.play('Run')
	elif Input.is_action_pressed("ui_left") and not Input.is_action_pressed("ui_right"):
		motion.x -= kiirendus
		motion.x = max(-kiirus, motion.x)
		$AnimatedSprite.flip_h = true
		$AnimatedSprite.play('Run')
	else:
		motion.x = lerp(motion.x, 0, 0.2)
		$AnimatedSprite.play('Idle')
func jump():
	if is_on_floor():
		if Input.is_action_just_pressed("jump"):
			motion.y = jumpp
	else:
		$AnimatedSprite.play('Jump')
func _process(_delta):
	motion.y += grav
	run()
	jump()
	move_and_slide(motion, up)


func _on_Area2D_body_entered(body):
	get_tree().change_scene("res://Menu.tscn")
