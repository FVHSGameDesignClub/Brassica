extends Node2D

var step = 0

func _process(delta):
	
	var newpassword = get_node("AccountSetup/Res/Center/HBoxContainer/VBoxContainer/Password/NewPassword").text
	var verify = get_node("AccountSetup/Res/Center/HBoxContainer/VBoxContainer/Password/Verify").text
	
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
	
	$LanguageSetup/Banner.play(LANGUAGE)
	$AccountSetup/Banner.play(LANGUAGE)
	$PresentScreen/Banner.play(LANGUAGE)
	$TermsAndConditions/Banner.play(LANGUAGE)
	$SettingUp/Banner.play(LANGUAGE)
	
	if LANGUAGE == "English":
		$AccountSetup.Label_English()
		$TermsAndConditions.Label_English()
	elif LANGUAGE == "Spanish":
		$AccountSetup.Label_Spanish()
		$TermsAndConditions.Label_Spanish()
	elif LANGUAGE == "Korean":
		$AccountSetup.Label_Korean()
		$TermsAndConditions.Label_Korean()
	
	if newpassword != verify:
		$Control/HBox/Next.hide()
		$AccountSetup/Res/PasswordNotMatch.show()
	elif newpassword == verify:
		$Control/HBox/Next.show()
		$AccountSetup/Res/PasswordNotMatch.hide()

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

func Turn_AccountSetup():
	$LanguageSetup.hide()
	$PresentScreen.hide()
	$TermsAndConditions.hide()
	$SettingUp.hide()
	$AccountSetup.show()
	
	$Control/HBox/Previous.show()
	
func Turn_TermsAndConditions():
	$LanguageSetup.hide()
	$AccountSetup.hide()
	$PresentScreen.hide()
	$SettingUp.hide()
	$TermsAndConditions.show()

func Turn_PresentScreen():
	$LanguageSetup.hide()
	$AccountSetup.hide()
	$TermsAndConditions.hide()
	$SettingUp.hide()
	$PresentScreen.show()
	
func Turn_SettingUp():
	$LanguageSetup.hide()
	$AccountSetup.hide()
	$PresentScreen.hide()
	$TermsAndConditions.hide()
	$SettingUp.show()
	$SettingUp/Animation.play("default")
	
	$Control.hide()