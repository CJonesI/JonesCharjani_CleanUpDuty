extends Node2D


const SPEED= 60

var direction = 1


@onready var animated_sprite: AnimatedSprite2D = $AnimatedSprite2D




func _on_hit_area_body_entered(body: Node2D) -> void:
	if body.name == "Player":
		animated_sprite.play("hit")
		queue_free()
