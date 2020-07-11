extends Node2D

const WALLS = preload("res://Walls.tscn")

func _ready():
	randomize()
	$Adventurer.position = $StartPosition.position
	
	var enemies = get_tree().get_nodes_in_group('enemy')
	$Adventurer.target = enemies[0].position
