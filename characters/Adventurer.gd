extends Area2D

var movement_speed = 32 # px
var target = Vector2()

const NUM_PERSONALITIES = 2
var possible_personalities = [
	Personality.new('Brave',    Stats.new( 5,  5, -2,  0, -2)),
	Personality.new('Nerdy',    Stats.new()),
	Personality.new('Sporty',   Stats.new( 0, -2,  5, -2,  5)),
	Personality.new('Meek',     Stats.new(-2,  0,  5, -2,  5)),
	Personality.new('Artsy',    Stats.new()),
	Personality.new('Flighty',  Stats.new( 0, -2,  5,  5, -2))
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
