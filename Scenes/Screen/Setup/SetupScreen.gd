extends Node2D

var step = 0
var s = 0


func _ready():
	get_node("LanguageSetup").get("LANGUAGE")
	
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
	$Control/HBox/Previous.hide()
	
func Turn_PresentScreen():
	$LanguageSetup.hide()
	$SettingUp.hide()
	$TermsAndConditions.hide()
	$PresentScreen.show()
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
