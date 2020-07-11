extends Area2D

export(float) var attack = 0
export(float) var defense = 0
export(float) var perception = 0
export(float) var speed = 0
export(float) var luck = 0

onready var stats = Stats.new(attack, defense, perception, speed, luck)

var movement_speed = 32 # px
var target = Vector2()

func _process(delta):
	var velocity = Vector2()

	if position.distance_to(target) > 1:
		velocity = target - position
		velocity = velocity.normalized() * movement_speed

	position += velocity * delta
