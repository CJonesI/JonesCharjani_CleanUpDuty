extends Node2D

@onready var animated_sprite_2d: AnimatedSprite2D = $AnimatedSprite2D



func _on_hit_area_body_entered(body: Node2D) -> void:
	if body.name == "Player":
		animated_sprite_2d.play("die")

		queue_free()
