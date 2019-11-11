extends Node2D

var SelectedLanguage = "English"

func _ready():
	pass

func _on_English_pressed():
	SelectedLanguage = "English" 
	pass


func _on_Spanish_pressed():
	SelectedLanguage = "Spanish"
	pass


func _on_Korean_pressed():
	SelectedLanguage = "Korean"
	pass
