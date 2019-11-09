extends Node2D

func _ready():
	$BootScreen.play("Default")
	$BootScreen.connect("animation_finished", self, "Boot_finished")
	
func Boot_finished(animation):
	free()