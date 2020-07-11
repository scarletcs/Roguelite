extends Area2D

enum ItemType { EQUIPMENT, CONSUMABLE }

export var item_name = ''
export var attack = 0
export var defense = 0
export var perception = 0
export var speed = 0
export var luck = 0

export(ItemType) var item_type = ItemType.EQUIPMENT
export(Texture) var texture

func _ready():
	$Sprite.texture = texture
