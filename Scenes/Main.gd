extends Node2D


var config_exists = false

func _ready():
	check_config_file_exist()

func _process(delta):
	
	var if_splash_finished = get_node("SplashScreen").is_splash_finished
	
	if if_splash_finished:
		$SplashScreen.hide()
	
	if config_exists:
		setup_is_over()
		
	elif !config_exists:
		$SetupScreen.show()
		
		var is_Setup_Over = get_node("SetupScreen/SettingUp").is_setup_over
		
		if is_Setup_Over == true:
			setup_is_over()

func splash_is_over():
	pass

func setup_is_over():
	get_node("SetupScreen").hide()
	
func check_config_file_exist():
	var file = File.new()
	var cfgExists = file.file_exists("user://data/settings.cfg")
	
	if cfgExists:
		config_exists = true
	elif !cfgExists:
		config_exists = false