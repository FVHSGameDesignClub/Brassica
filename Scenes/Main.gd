extends Node2D

var config_exists = false

func _ready():
	check_config_file_exist()

func _process(delta):
	if config_exists:
		get_node("SetupScreen").hide()
		
	elif !config_exists:
		$SetupScreen.show()
		
		var is_Setup_Over = get_node("SetupScreen/SettingUp").is_setup_over
		
		if is_Setup_Over == true:
			get_node("SetupScreen").hide()


func check_config_file_exist():
	var file = File.new()
	var cfgExists = file.file_exists("user://data/settings.cfg")
	
	if cfgExists:
		config_exists = true
	elif !cfgExists:
		config_exists = false