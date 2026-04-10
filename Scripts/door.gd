extends StaticBody2D
@onready var animation_player: AnimationPlayer = $AnimationPlayer



func _on_area_2d_body_entered(body: Node2D) -> void:
	if body.name == "Player" && body.multi_fruit > 0:
		body.multi_fruit -= 1
	$AnimationPlayer.play("open")
	queue_free()
	
