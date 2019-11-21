extends Node2D

var save_path
var config = ConfigFile.new()
var load_response = config.load(save_path)

func _ready():
	var dir = Directory.new()
	dir.open("res://")
	dir.make_dir("data")


func saveValue(section, key, value):
	config.set_value(section, key, value)
	config.save(save_path)

func loadValue(section, key, value):
	value = config.get_value(section, key, value)