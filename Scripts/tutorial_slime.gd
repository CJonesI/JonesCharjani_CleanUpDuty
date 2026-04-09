extends Node2D

@onready var animated_sprite_2d: AnimatedSprite2D = $AnimatedSprite2D


func _on_hitbox_body_entered(body):
	if body.name =="Player":
		
		queue_free()


func _on_hitbox_died():
	animated_sprite_2d.play("die")


func _on_hitbox_hurted():
	animated_sprite_2d.play("hit")
