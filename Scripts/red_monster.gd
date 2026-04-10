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
	
	if raycast_left.is_colliding():
		direction = 1
		animated_sprite.flip_h = false
		
	position. x+= direction * SPEED * delta


func _on_hit_area_body_entered(body: Node2D) -> void:
	if body.name == "Player":
		queue_free()
