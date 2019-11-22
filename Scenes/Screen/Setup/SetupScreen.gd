extends Node2D

var step = 0

var settings = ConfigFile.new()
var user = ConfigFile.new()

func _process(delta):
	var fullname = get_node("AccountSetup/Res/Center/HBoxContainer/VBoxContainer/Alignment/Username/FullName").text
	var accountname = get_node("AccountSetup/Res/Center/HBoxContainer/VBoxContainer/Alignment/Username/AccountName").text
	var newpassword = get_node("AccountSetup/Res/Center/HBoxContainer/VBoxContainer/Password/NewPassword").text
	var verify = get_node("AccountSetup/Res/Center/HBoxContainer/VBoxContainer/Password/Verify").text
	
	var LANGUAGE = get_node("LanguageSetup").LANG
	
	if step == 0:
		Turn_LanguageSetup()
	
	elif step == 1:
		Turn_AccountSetup()
		
		if !fullname.empty() and !accountname.empty() and !newpassword.empty():
			$Control/HBox/Next.show()
			
			if newpassword != verify:
				$Control/HBox/Next.hide()
				$AccountSetup/Res/PasswordNotMatch.show()
			elif newpassword == verify:
				$AccountSetup/Res/PasswordNotMatch.hide()
			
		if newpassword != verify:
			$Control/HBox/Next.hide()
			$AccountSetup/Res/PasswordNotMatch.show()
		elif newpassword == verify:
			$AccountSetup/Res/PasswordNotMatch.hide()
		
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
	$Control/HBox/Next.show()

func Turn_AccountSetup():
	$LanguageSetup.hide()
	$PresentScreen.hide()
	$TermsAndConditions.hide()
	$SettingUp.hide()
	$AccountSetup.show()
	
	$Control/HBox/Previous.show()
	$Control/HBox/Next.hide()
	
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
	
	SetupData()
	SaveConfig()
	SaveUserdata()
	
	$Control.hide()

func SaveConfig():
	SaveSetup("Display", "WindowWidth", "1280")
	SaveSetup("Display", "WindowHeight", "720")
	SaveSetup("Display", "Fullscreen", "false")
	SaveSetup("Language", "Language", get_node("LanguageSetup").LANG)
	
func SaveUserdata():
	SaveUser("Name", "Fullname", get_node("AccountSetup/Res/Center/HBoxContainer/VBoxContainer/Alignment/Username/FullName").text)
	SaveUser("Name", "Accountname", get_node("AccountSetup/Res/Center/HBoxContainer/VBoxContainer/Alignment/Username/AccountName").text)
	SaveUser("Security", "Password", get_node("AccountSetup/Res/Center/HBoxContainer/VBoxContainer/Password/NewPassword").text)
	SaveUser("Security", "Hint", get_node("AccountSetup/Res/Center/HBoxContainer/VBoxContainer/Hint").text)

func SetupData():
	var dir = Directory.new()
	dir.open("user://")
	dir.make_dir("data")

func SaveSetup(section, key, value):
	settings.set_value(section, key, value)
	settings.save("user://data/settings.cfg")

func SaveUser(section, key, value):
	user.set_value(section, key, value)
	user.save("user://data/user.cfg")