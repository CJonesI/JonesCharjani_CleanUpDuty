extends Node2D


const SPEED= 60

var direction = 1


@onready var animated_sprite: AnimatedSprite2D = $AnimatedSprite2D



func _on_hitbox_body_entered(body: Node2D):
	if body.name == "player":
		queue_free()
