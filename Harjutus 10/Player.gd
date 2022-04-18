extends KinematicBody2D

const kiirus = 500
const grav = 10
var motion = Vector2()

func run():
	if Input.is_action_just_pressed("ui_right") and not Input.is_action_pressed("ui_left"): 
		motion.x = kiirus
		$Sprite.flip_h = false
	elif Input.is_action_just_pressed("ui_left") and not Input.is_action_pressed("ui_right"):
		motion.x = -kiirus
		$Sprite.flip_h = true
	else:
		motion.x = 0
func _process(delta):
	motion.y = grav
	run()
	move_and_slide(motion)
