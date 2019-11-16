extends Node2D

signal LangSelection

var step = 0

func _ready():
	pass
	
func _process(delta):
	var LANGUAGE = get_node("LanguageSetup").LANG
	
	if step == 0:
		Turn_LanguageSetup()
	
	elif step == 1:
		Turn_AccountSetup()
		
	elif step == 2:
		Turn_TermsAndConditions()
		
	elif step == 3:
		Turn_PresentScreen()
		
	elif step == 4:
		Turn_SettingUp()
	pass
	
	
	$LanguageSetup/Banner.play(LANGUAGE)
	$AccountSetup/Banner.play(LANGUAGE)
	$PresentScreen/Banner.play(LANGUAGE)
	$TermsAndConditions/Banner.play(LANGUAGE)
	$SettingUp/Banner.play(LANGUAGE)

func _on_Next_pressed():
	step += 1

func _on_Previous_pressed():
	step -= 1

func Turn_LanguageSetup():
	$AccountSetup.hide()
	$PresentScreen.hide()
	$TermsAndConditions.hide()
	$SettingUp.hide()
	$LanguageSetup.show()
	
	$Control/HBox/Previous.hide()
	pass

func Turn_AccountSetup():
	$LanguageSetup.hide()
	$PresentScreen.hide()
	$TermsAndConditions.hide()
	$SettingUp.hide()
	$AccountSetup.show()
	
	$Control/HBox/Previous.show()
	pass
	
func Turn_TermsAndConditions():
	$LanguageSetup.hide()
	$AccountSetup.hide()
	$PresentScreen.hide()
	$SettingUp.hide()
	$TermsAndConditions.show()
	pass

func Turn_PresentScreen():
	$LanguageSetup.hide()
	$AccountSetup.hide()
	$TermsAndConditions.hide()
	$SettingUp.hide()
	$PresentScreen.show()
	pass
	
func Turn_SettingUp():
	$LanguageSetup.hide()
	$AccountSetup.hide()
	$PresentScreen.hide()
	$TermsAndConditions.hide()
	$SettingUp.show()
	$SettingUp/Animation.play("default")
	
	$Control.hide()
	pass
	
func SaveSettings():
	pass