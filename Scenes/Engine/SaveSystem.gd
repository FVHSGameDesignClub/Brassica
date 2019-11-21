extends Node2D

var config = ConfigFile.new()

func saveValue(section, key, value, path):
	config.set_value(section, key, value)
	config.save("user://data/"+path)

func loadValue(section, key, value):
	value = config.get_value(section, key, value)