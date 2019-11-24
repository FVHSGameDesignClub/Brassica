extends Node2D

var Fullname
var Password
var Hint

var data = ConfigFile.new()

func _ready():
	loadData()

func _process(delta):
	$VerticalCenter/HorizontalCenter/Center/Align/Label.set_text(Fullname)
	pass

func loadData():
	data.load("user://data/user.cfg")
	Fullname = data.get_value("Name", "Fullname")
	Password = data.get_value("Security", "Password")
	Hint = data.get_value("Security", "Hint")