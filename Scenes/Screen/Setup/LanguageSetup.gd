extends Node2D

var LANG = "English"

func _ready():
	pass

#func _process(delta):
#	$Banner.play(LANG)

func _on_English_pressed(): 
	LANG = "English"
	pass

func _on_Spanish_pressed():
	LANG = "Spanish"
	pass

func _on_Korean_pressed():
	LANG = "Korean"
	pass