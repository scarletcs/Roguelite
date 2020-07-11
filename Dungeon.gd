extends Node2D

const WALLS = preload("res://Walls.tscn")

func _ready():
	randomize()
	$Adventurer.position = $StartPosition.position
	$Adventurer.target = $StartPosition.position + Vector2(32, 32)
