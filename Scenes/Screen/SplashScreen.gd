extends Node2D

func _ready():
	$BootScreen.play("Default")
	pass

func _on_BootScreen_animation_finished():
	$BootScreen.hide()
