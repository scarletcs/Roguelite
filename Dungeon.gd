extends Node2D

const WALLS = preload("res://Walls.tscn")

func _ready():
	randomize()
	$Adventurer.position = $StartPosition.position
	$Adventurer.target = $StartPosition.position + Vector2(32, 32)

	var walls = WALLS.instance()
	$Background.add_child(walls)
	walls.rect_size.x = randi() % 400 + 200
	walls.rect_size.y = randi() % 400 + 200
