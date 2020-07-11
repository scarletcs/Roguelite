extends RemoteTransform2D

enum Direction { LEFT = -1, RIGHT = 1 }

var current_direction = Direction.RIGHT
export var max_rotation_radians = 0.5
export var wobble_height_px = 4
export var hertz = 2

func _process(delta):
	var full_cycle = max_rotation_radians * 2
	var wobble_speed = full_cycle * hertz * 2 * delta
	rotation += wobble_speed * current_direction
		
	if rotation > max_rotation_radians:
		current_direction = Direction.LEFT
	elif rotation < (-1 * max_rotation_radians):
		current_direction = Direction.RIGHT
