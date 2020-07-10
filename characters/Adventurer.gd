extends Area2D

var speed = 32 # px
var target = Vector2()

func _process(delta):
	var velocity = Vector2()

	if position.distance_to(target) > 1:
		velocity = target - position
		velocity = velocity.normalized() * speed

	position += velocity * delta
