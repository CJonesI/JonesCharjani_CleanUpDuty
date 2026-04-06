extends Node2D

var score = 0

@onready var score_label_2: Label = $ScoreLabel2

func add_point():
	score += 1
	score_label_2.text = "fruit" + str(score)
