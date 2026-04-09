extends Area2D
class_name hitbox

signal hurted()
signal died()

@export var healthPoints:= 1

func get_damage(value: int):
	healthPoints -= value
	
	hurted.emit()
	
	if healthPoints <= 0:
		died.emit()
