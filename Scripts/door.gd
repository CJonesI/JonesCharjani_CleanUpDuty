extends StaticBody2D
@onready var animation_player: AnimationPlayer = $AnimationPlayer

@onready var game_manager_2: Node2D = %"Game Manager 2"

func _on_area_2d_body_entered(body: Node2D) -> void:
	if game_manager_2.score > 0:
		game_manager_2.score -= 1
		$AnimationPlayer.play("open")
		queue_free()
	
