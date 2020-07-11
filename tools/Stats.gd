class_name Stats

export(float) var attack = 0
export(float) var defense = 0
export(float) var perception = 0
export(float) var speed = 0
export(float) var luck = 0

func _init(attack=0, defense=0, perception=0, speed=0, luck=0):
	define(attack, defense, perception, speed, luck)

func define(attack, defense, perception, speed, luck):
	self.attack = attack
	self.defense = defense
	self.perception = perception
	self.speed = speed
	self.luck = luck

