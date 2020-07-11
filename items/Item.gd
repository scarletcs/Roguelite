extends Area2D

enum ItemType { EQUIPMENT, CONSUMABLE }
var item_stats = Stats.new()

export var item_name = ''
export(float) var attack = 0
export(float) var defense = 0
export(float) var perception = 0
export(float) var speed = 0
export(float) var luck = 0

onready var stats = Stats.new(attack, defense, perception, speed, luck)

export(ItemType) var item_type = ItemType.EQUIPMENT
export(Texture) var texture

func _ready():
	$Sprite.texture = texture
