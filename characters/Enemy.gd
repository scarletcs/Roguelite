extends Area2D

export var target = Vector2(300, 100)
export var movement_speed = 60

func _process(delta):
	var velocity = Vector2()

	if position.distance_to(target) > 1:
		velocity = target - position
		velocity = velocity.normalized() * movement_speed

	position += velocity * delta
	
	$Wobbler.on = velocity.length_squared() > 0
	
