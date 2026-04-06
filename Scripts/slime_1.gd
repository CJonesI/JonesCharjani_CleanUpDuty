extends Node2D


const SPEED= 60

var direction = 1

@onready var raycast_right: RayCast2D = $"Raycast right"
@onready var raycast_left: RayCast2D = $"Raycast left"
@onready var animated_sprite: AnimatedSprite2D = $AnimatedSprite2D

func _process(delta):
	if raycast_right.is_colliding():
		direction = -1
		animated_sprite.flip_h = true
		animated_sprite.play("walk")
	
	if raycast_left.is_colliding():
		direction = 1
		animated_sprite.flip_h = false
		animated_sprite.play("walk")
		
	position. x+= direction * SPEED * delta
