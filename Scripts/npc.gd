extends CharacterBody2D

@onready var animated_sprite_2d: AnimatedSprite2D = $AnimatedSprite2D
@export var target: Playersidescroller

const SPEED = 130.0
const JUMP_VELOCITY = -300.0

func _physics_process(delta):
	
	_calculate_velocity()
	
	move_and_slide()
	
func _calculate_velocity():
	var distancetoTarget = 20
	var targetposition = target.position -Vector2(0,-9)
