extends Node2D

var is_setup_over = false

func _on_Animation_animation_finished():
	is_setup_over = true