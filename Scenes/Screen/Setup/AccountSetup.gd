extends Node2D

func Label_English():
	$Res/Center/HBoxContainer/Labels/Fullname.set_text("Full name: ")
	$Res/Center/HBoxContainer/Labels/Accountname.set_text("Account name: ")
	$Res/Center/HBoxContainer/Labels/Password.set_text("Password: ")
	$Res/Center/HBoxContainer/Labels/Hint.set_text("Hint: ")
	
	$Res/Center/HBoxContainer/VBoxContainer/Alignment/Username/FullName.set_placeholder("full name")
	$Res/Center/HBoxContainer/VBoxContainer/Alignment/Username/AccountName.set_placeholder("account name")
	$Res/Center/HBoxContainer/VBoxContainer/Password/NewPassword.set_placeholder("new password")
	$Res/Center/HBoxContainer/VBoxContainer/Password/Verify.set_placeholder("verify")
	$Res/Center/HBoxContainer/VBoxContainer/Hint.set_placeholder("option")
	
	$Res/PasswordNotMatch.set_text("Passwords do not match.")
	$Res/ANRes.set_text("Account name only accepts a~z and 0~9.")
	$Res/PWRes.set_text("Password only accepts A~Z, a~z, 0~9 and special characters.")
	
func Label_Spanish():
	$Res/Center/HBoxContainer/Labels/Fullname.set_text("Nombre completo: ")
	$Res/Center/HBoxContainer/Labels/Accountname.set_text("Nombre de la cuenta: ")
	$Res/Center/HBoxContainer/Labels/Password.set_text("Contraseña: ")
	$Res/Center/HBoxContainer/Labels/Hint.set_text("Indicadión: ")
	
	$Res/Center/HBoxContainer/VBoxContainer/Alignment/Username/FullName.set_placeholder("nombre completo")
	$Res/Center/HBoxContainer/VBoxContainer/Alignment/Username/AccountName.set_placeholder("nombre de la cuenta")
	$Res/Center/HBoxContainer/VBoxContainer/Password/NewPassword.set_placeholder("nueva contraseña")
	$Res/Center/HBoxContainer/VBoxContainer/Password/Verify.set_placeholder("verificar")
	$Res/Center/HBoxContainer/VBoxContainer/Hint.set_placeholder("opcional")
	
	$Res/PasswordNotMatch.set_text("Las contraseñas no coinciden.")
	$Res/ANRes.set_text("El nombre de la cuenta solo acepta a~z y 0~9.")
	$Res/PWRes.set_text("La contraseña solo acepta A~Z, a~z, 0~9 y caracteres especiales.")

func Label_Korean():
	$Res/Center/HBoxContainer/Labels/Fullname.set_text("전체 이름: ")
	$Res/Center/HBoxContainer/Labels/Accountname.set_text("계정 이름: ")
	$Res/Center/HBoxContainer/Labels/Password.set_text("암호: ")
	$Res/Center/HBoxContainer/Labels/Hint.set_text("힌트: ")
	
	$Res/Center/HBoxContainer/VBoxContainer/Alignment/Username/FullName.set_placeholder("전체 이름")
	$Res/Center/HBoxContainer/VBoxContainer/Alignment/Username/AccountName.set_placeholder("계정 이름")
	$Res/Center/HBoxContainer/VBoxContainer/Password/NewPassword.set_placeholder("새로운 암호")
	$Res/Center/HBoxContainer/VBoxContainer/Password/Verify.set_placeholder("확인")
	$Res/Center/HBoxContainer/VBoxContainer/Hint.set_placeholder("힌트")
	
	$Res/PasswordNotMatch.set_text("비밀번호가 일치하지 않습니다.")
	$Res/ANRes.set_text("계정이름은 알파벳 소문자와 0~9 숫자만 허용합니다.")
	$Res/PWRes.set_text("비밀번호는 알파벳 대소문자와, 0~9 숫자, 특수문자만 허용합니다.")