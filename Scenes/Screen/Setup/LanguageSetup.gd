extends Node2D

var LANG = "English"

#func _process(delta):
#	$Banner.play(LANG)

func _on_English_pressed(): 
	LANG = "English"

func _on_Spanish_pressed():
	LANG = "Spanish"

func _on_Korean_pressed():
	LANG = "Korean"

func _on_English_focus_entered():
	get_node("Languages/HBoxContainer/VBOX/English").add_color_override("font_color", Color(1, 1, 1, 1))
	get_node("Languages/HBoxContainer/VBOX/English").add_color_override("font_color_hover", Color(1, 1, 1, 1))

func _on_Spanish_focus_entered():
	get_node("Languages/HBoxContainer/VBOX/Spanish").add_color_override("font_color", Color(1, 1, 1, 1))
	get_node("Languages/HBoxContainer/VBOX/Spanish").add_color_override("font_color_hover", Color(1, 1, 1, 1))
	
func _on_Korean_focus_entered():
	get_node("Languages/HBoxContainer/VBOX/Korean").add_color_override("font_color", Color(1, 1, 1, 1))
	get_node("Languages/HBoxContainer/VBOX/Korean").add_color_override("font_color_hover", Color(1, 1, 1, 1))

func _on_English_focus_exited():
	get_node("Languages/HBoxContainer/VBOX/English").add_color_override("font_color", Color(0, 0, 0, 1))
	get_node("Languages/HBoxContainer/VBOX/English").add_color_override("font_color_hover", Color(0, 0, 0, 1))

func _on_Spanish_focus_exited():
	get_node("Languages/HBoxContainer/VBOX/Spanish").add_color_override("font_color", Color(0, 0, 0, 1))
	get_node("Languages/HBoxContainer/VBOX/Spanish").add_color_override("font_color_hover", Color(0, 0, 0, 1))
func _on_Korean_focus_exited():
	get_node("Languages/HBoxContainer/VBOX/Korean").add_color_override("font_color", Color(0, 0, 0, 1))
	get_node("Languages/HBoxContainer/VBOX/Korean").add_color_override("font_color_hover", Color(0, 0, 0, 1))