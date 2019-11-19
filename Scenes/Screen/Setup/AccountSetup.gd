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
	
	$Center/HBoxContainer/VBoxContainer/Alignment/Username/FullName.set_placeholder("full name")
	$Center/HBoxContainer/VBoxContainer/Alignment/Username/AccountName.set_placeholder("account name")
	$Center/HBoxContainer/VBoxContainer/Password/NewPassword.set_placeholder("new password")
	$Center/HBoxContainer/VBoxContainer/Password/Verify.set_placeholder("verify")
	$Center/HBoxContainer/VBoxContainer/Hint.set_placeholder("option")
	
func Label_Spanish():
	$Center/HBoxContainer/Labels/Fullname.set_text("Nombre completo:")
	$Center/HBoxContainer/Labels/Accountname.set_text("Nombre de la cuenta:")
	$Center/HBoxContainer/Labels/Password.set_text("Contraseña:")
	$Center/HBoxContainer/Labels/Hint.set_text("Indicadión:")
	$Center/HBoxContainer/VBoxContainer/Alignment/Username/FullName.set_placeholder("nombre completo")
	$Center/HBoxContainer/VBoxContainer/Alignment/Username/AccountName.set_placeholder("nombre de la cuenta")
	$Center/HBoxContainer/VBoxContainer/Password/NewPassword.set_placeholder("nueva contraseña")
	$Center/HBoxContainer/VBoxContainer/Password/Verify.set_placeholder("verificar")
	$Center/HBoxContainer/VBoxContainer/Hint.set_placeholder("opcional")
	
func Label_Korean():
	$Center/HBoxContainer/Labels/Fullname.set_text("전체 이름:")
	$Center/HBoxContainer/Labels/Accountname.set_text("계정 이름:")
	$Center/HBoxContainer/Labels/Password.set_text("암호:")
	$Center/HBoxContainer/Labels/Hint.set_text("힌트:")
	$Center/HBoxContainer/VBoxContainer/Alignment/Username/FullName.set_placeholder("전체 이름")
	$Center/HBoxContainer/VBoxContainer/Alignment/Username/AccountName.set_placeholder("계정 이름")
	$Center/HBoxContainer/VBoxContainer/Password/NewPassword.set_placeholder("새로운 암호")
	$Center/HBoxContainer/VBoxContainer/Password/Verify.set_placeholder("확인")
	$Center/HBoxContainer/VBoxContainer/Hint.set_placeholder("힌트")