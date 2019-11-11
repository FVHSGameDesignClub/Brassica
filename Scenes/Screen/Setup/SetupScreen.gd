extends Node2D

var step = 0
var s = 0

var LANGUAGE = "English"

func _ready():
	pass
	
func _process(delta):
	if step == 0:
		Turn_LanguageSetup()
	elif step == 1:
		Turn_PresentScreen()
	elif step == 2:
		Turn_TermsAndConditions()
	elif step == 3:
		Turn_SettingUp()
	pass
	
func _on_Next_pressed():
	step += 1

func _on_Previous_pressed():
	step -= 1
	

func Turn_LanguageSetup():
	$PresentScreen.hide()
	$SettingUp.hide()
	$TermsAndConditions.hide()
	$LanguageSetup.show()
	
	if get_node("LanguageSetup")._on_English_pressed():
		LANGUAGE = "English"
	if get_node("LanguageSetup")._on_Spanish_pressed():
		LANGUAGE = "Spanish"
	if get_node("LanguageSetup")._on_Korean_pressed():
		LANGUAGE = "Korean"
	
	$LanguageSetup/Banner.play(LANGUAGE)
	
	$Control/HBox/Previous.hide()
	
func Turn_PresentScreen():
	$LanguageSetup.hide()
	$SettingUp.hide()
	$TermsAndConditions.hide()
	$PresentScreen.show()
	$PresentScreen/Banner.play(LANGUAGE)
	$Control/HBox/Previous.show()
	
func Turn_TermsAndConditions():
	$LanguageSetup.hide()
	$SettingUp.hide()
	$PresentScreen.hide()
	$TermsAndConditions.show()
	$Control/HBox/Previous.show()
	
func Turn_SettingUp():
	$LanguageSetup.hide()
	$PresentScreen.hide()
	$TermsAndConditions.hide()
	$SettingUp.show()
	$SettingUp/Animation.play("default")
	$Control.hide()
