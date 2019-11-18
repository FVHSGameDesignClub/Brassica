extends Node2D

func _ready():
	pass

func _process(delta):
	pass

func Label_English():
	$Center/HBoxContainer/Labels/Fullname.set_text("Full name:")
	$Center/HBoxContainer/Labels/Accountname.set_text("Account name:")
	$Center/HBoxContainer/Labels/Password.set_text("Password:")
	$Center/HBoxContainer/Labels/Hint.set_text("Hint:")

func Label_Spanish():
	$Center/HBoxContainer/Labels/Fullname.set_text("Nombre completo:")
	$Center/HBoxContainer/Labels/Accountname.set_text("Nombre de la cuenta:")
	$Center/HBoxContainer/Labels/Password.set_text("Contraseña:")
	$Center/HBoxContainer/Labels/Hint.set_text("Indicadión:")

func Label_Korean():
	$Center/HBoxContainer/Labels/Fullname.set_text("전체 이름:")
	$Center/HBoxContainer/Labels/Accountname.set_text("계정 이름:")
	$Center/HBoxContainer/Labels/Password.set_text("암호:")
	$Center/HBoxContainer/Labels/Hint.set_text("힌트:")