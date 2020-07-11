class_name Personality

var name = ''
var stats = Stats.new()

func _init(name, stats):
	self.name = name
	self.stats = stats

func _to_string():
	return '[Personality %s]' % self.name
