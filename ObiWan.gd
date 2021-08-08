extends KinematicBody2D

# ObiWan COmputer

const GRAVITY = 400
const SPEED = 60

const UP_VECTOR = Vector2(0,  -1)
var movement = Vector2()

var moveRand

func _ready():
	#moveRand = randomize()
	
	var Player =  get_node("../Player/Sprite")
	var PlayerPosX = Player.position.x
	var PlayerPosY = Player.position.y
	
	var SelfPlayer =  get_node("Sprite")
	var SelfPosX = SelfPlayer.position.x
	
	if PlayerPosX > SelfPosX:
		movement.x = 1 * SPEED
	else:
		movement.x = -1 * SPEED
		
	movement.y += GRAVITY #* delta
	move_and_slide(movement, UP_VECTOR)
	
	pass
