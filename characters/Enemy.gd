extends Area2D

var target = null
export var movement_speed = 60

func _process(delta):
	if !target:
		$Wobbler.on = false
		return
	
	var velocity = Vector2()

	if position.distance_to(target) > 1:
		velocity = target - position
		velocity = velocity.normalized() * movement_speed

	position += velocity * delta
	
	$Wobbler.on = velocity.length_squared() > 0
	
