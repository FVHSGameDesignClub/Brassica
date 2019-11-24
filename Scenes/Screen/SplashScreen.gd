extends Node2D

var is_splash_finished = false

func _ready():
	$BootSplash.play("default")

func _on_BootSplash_animation_finished():
	is_splash_finished = true