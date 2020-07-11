extends Area2D

var movement_speed = 32 # px
var target = Vector2()

const NUM_PERSONALITIES = 2
const UP = 5
const DN = -2
const N_ = 0
var possible_personalities = [
	Personality.new('Brave',    Stats.new(UP, UP, DN, N_, DN)),
	Personality.new('Nerdy',    Stats.new(N_, UP, UP, DN, N_)),
	Personality.new('Sporty',   Stats.new(N_, DN, UP, DN, UP)),
	Personality.new('Meek',     Stats.new(DN, N_, UP, DN, UP)),
	Personality.new('Artsy',    Stats.new(UP, N_, DN, UP, N_)),
	Personality.new('Flighty',  Stats.new(DN, DN, N_, UP, DN))
]

var persona = []

func _ready():
	var p = possible_personalities.duplicate()
	p.shuffle()
	while persona.size() < NUM_PERSONALITIES:
		var new_personality = p.pop_front()
		persona.append(new_personality)
		$Stats.add(new_personality.stats)
	print(persona)
	print($Stats)

func _process(delta):
	var velocity = Vector2()

	if position.distance_to(target) > 1:
		velocity = target - position
		velocity = velocity.normalized() * movement_speed

	position += velocity * delta
