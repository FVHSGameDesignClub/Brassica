extends Node2D

func Label_English():
	$HBoxContainer/VBoxContainer/Warning.set_text("• Current product is fiction, and irrelevant to specific\n person, organization, religion or event.")
	$HBoxContainer/VBoxContainer/Danger.set_text("• Current product contains some irritating content.")
	$HBoxContainer/VBoxContainer/Privacy.set_text("• Current product can quote sensitive personal information\n during\n the process, but information will not be collected.")

func Label_Spanish():
	$HBoxContainer/VBoxContainer/Warning.set_text("• El producto actual es ficción e irrelevante para\n una persona, organización, religión o evento específico.")
	$HBoxContainer/VBoxContainer/Danger.set_text("• El producto actual contiene un contenido irritante")
	$HBoxContainer/VBoxContainer/Privacy.set_text("• El producto actual puede citar información personal\n confidencial durante el proceso, pero no se recopilará\n información.")

func Label_Korean():
	$HBoxContainer/VBoxContainer/Warning.set_text("• 본 작품은 특정 인물이나 단체, 종교, 사건과는\n 무관한것으로 허구임을 밝힙니다.")
	$HBoxContainer/VBoxContainer/Danger.set_text("• 본 작품은 다소 자극적인 내용이 포함되어 있으니,\n 주의하시기 바랍니다.")
	$HBoxContainer/VBoxContainer/Privacy.set_text("• 본 작품 진행중 민감한 개인정보가 인용될 수 있으나,\n 정보수집은 일절 이루어 지지 않음을 밝힙니다.")