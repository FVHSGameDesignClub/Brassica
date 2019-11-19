extends Node2D

func Label_English():
	$HBoxContainer/VBoxContainer/Warning.set_text("• Current product is fiction, and irrelevant to specific\n person, organization, religion or event.")
	$HBoxContainer/VBoxContainer/Privacy.set_text("• Sensitive personal information may be cited during\n the process, but information will not be collected.")

func Label_Spanish():
	$HBoxContainer/VBoxContainer/Warning.set_text("• El producto actual es ficción e irrelevante para\n una persona, organización, religión o evento específico.")
	$HBoxContainer/VBoxContainer/Privacy.set_text("• Se puede citar información personal confidencial\n durante el proceso, pero no se recopilará información.")

func Label_Korean():
	$HBoxContainer/VBoxContainer/Warning.set_text("• 본 작품은 특정 인물이나 단체, 종교, 사건과는\n 무관한것으로 허구임을 밝힙니다.")
	$HBoxContainer/VBoxContainer/Privacy.set_text("• 작품 진행중 민감한 개인정보가 인용될 수 있으나,\n 정보수집은 일절 이루어 지지 않음을 밝힙니다.")