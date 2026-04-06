extends Area2D

@onready var game_manager_2: Node2D = %"Game Manager 2"

@onready var animation_player: AnimationPlayer = $AnimationPlayer

func _on_body_entered(body):
	game_manager_2.add_point()
	animation_player.play("pickup")
