extends Node2D


const SPEED= 60

var direction = 1

@onready var raycast_right: RayCast2D = $"Raycast right"
@onready var raycast_left: RayCast2D = $"Raycast left"
@onready var animated_sprite: AnimatedSprite2D = $AnimatedSprite2D

func _on_hit_area_body_entered(body: Node2D):
	if body.name =="Player":
		queue_free()

func _process(delta):
		
	position. x+= direction * SPEED * delta
