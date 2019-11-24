extends Node2D

var Fullname
var Password
var Hint_label
var Hint

var Language

var Try = 0

var Login = false

var data = ConfigFile.new()
var lang = ConfigFile.new()

func _ready():
	loadData()

func _process(delta):
	
	$VerticalCenter/HorizontalCenter/Center/Align/Label.set_text(Fullname)
	
	if Input.is_action_just_pressed("ui_accept"):
		check_password()
	
	if Login:
		hide()
	
	elif !Login:
		Try += 1
	
	if Try > 5:
		$Hint.show()
	
	if Language == "English":
		Hint_label = "Hint: "
	elif Language == "Spanish":
		Hint_label = ": "
	
	$VerticalCenter/HorizontalCenter/Center/Align/Hint.set_text(Hint)

func loadData():
	data.load("user://data/user.cfg")
	Fullname = data.get_value("Name", "Fullname")
	Password = data.get_value("Security", "Password")
	Hint = data.get_value("Security", "Hint")
func loadLanguage():
	lang.load("user://data/settings.cfg")
	Language = lang.get_value("Language", "Language")

func check_password():
	var TypedPassword = get_node("VerticalCenter/HorizontalCenter/Center/Align/LineEdit").text
	
	if TypedPassword == Password:
		Login == true
	else:
		Login == false
	pass