extends Node2D


func _ready():
	pass

func _process(delta):
	
	var is_Setup_Over = get_node("SetupScreen/SettingUp").is_setup_over
	
	if is_Setup_Over == true:
		setup_is_over()
	elif is_Setup_Over == false:
		pass

func setup_is_over():
	$SetupScreen.hide()