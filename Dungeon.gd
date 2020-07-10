extends Node2D

func _ready():
	$Adventurer.position = $StartPosition.position
	$Adventurer.target = $StartPosition.position + Vector2(32, 32)
