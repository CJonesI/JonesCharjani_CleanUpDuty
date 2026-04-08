extends Node2D



func _on_hitbox_body_entered(body):
	if body.name =="Player":
		
		queue_free()
