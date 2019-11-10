extends Node2D

var step = 0
var s = 0

var ENGLISH = "English"
var SPANISH = "Spanish"
var KOREAN = "Korean"

func _ready():
	pass
	
func _process(delta):
	if step == 0:
		Turn_LanguageSetup()
	elif step == 1:
		Turn_PresentScreen()
	elif step == 2:
		Turn_SettingUp()
	pass
	
func _on_Next_pressed():
	step += 1

func _on_Previous_pressed():
	step -= 1
	

func Turn_LanguageSetup():
	$PresentScreen.hide()
	$SettingUp.hide()
	$LanguageSetup.show()
	$Control/HBox/Previous.hide()
	
func Turn_PresentScreen():
	$LanguageSetup.hide()
	$SettingUp.hide()
	$PresentScreen.show()
	$Control/HBox/Previous.show()
	
func Turn_SettingUp():
	$LanguageSetup.hide()
	$PresentScreen.hide()
	$SettingUp.show()
	$SettingUp/Animation.play("default")
	$Control.hide()
