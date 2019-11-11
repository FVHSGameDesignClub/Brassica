extends Node2D

var LANGUAGE = "English"

func _ready():
	pass
	
func _process(delta):
	$Banner.play(LANGUAGE)
	pass

func _on_English_pressed():
	LANGUAGE = "English"
	pass


func _on_Spanish_pressed():
	LANGUAGE = "Spanish"
	pass


func _on_Korean_pressed():
	LANGUAGE = "Korean"
	pass
