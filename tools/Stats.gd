extends Node

class_name Stats

export(float) var attack = 0
export(float) var defense = 0
export(float) var perception = 0
export(float) var speed = 0
export(float) var luck = 0

func _init(_attack=0, _defense=0, _perception=0, _speed=0, _luck=0):
	define(_attack, _defense, _perception, _speed, _luck)

func define(_attack, _defense, _perception, _speed, _luck):
	self.attack = _attack
	self.defense = _defense
	self.perception = _perception
	self.speed = _speed
	self.luck = _luck

func add(stats):
	self.attack += stats.attack
	self.defense += stats.defense
	self.perception += stats.perception
	self.speed += stats.speed
	self.luck += stats.luck

func _to_string():
	return '[Stats ATK %s, DEF %s, PER %s, SPD %s, LUK %s]' % [attack, defense, perception, speed, luck]
