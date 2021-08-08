extends KinematicBody2D

# ObiWan Computer

const GRAVITY = 400
const SPEED = 60
const UP_VECTOR = Vector2(0,  -1)

var movement = Vector2()

func _ready():
	pass
	
func _process(delta):
	
	var Player =  get_node("../Player").get_position()
#
	movement = position.direction_to(Player) * SPEED
			
	movement.y += GRAVITY * delta
	#look_at(Player)
	move_and_slide(movement, UP_VECTOR)
	
	pass
