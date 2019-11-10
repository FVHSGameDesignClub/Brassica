extends Node2D

var step = 0

func _ready():
	pass
	
func _process(delta):
	if step == 0:
		Turn_LanguageSetup()
	elif step == 1:
		Turn_PresentScreen()
	pass
	
func _on_Previous_pressed():
	step - 1
	pass

func _on_Next_pressed():
	step + 1
	pass

func Turn_LanguageSetup():
	$LanguageSetup.show()
	$PresentScreen.hide()
	$Control/HBox/Previous.hide()
	
func Turn_PresentScreen():
	$LanguageSetup.hide()
	$PresentScreen.show()
	$Control/HBox/Previous.show()
