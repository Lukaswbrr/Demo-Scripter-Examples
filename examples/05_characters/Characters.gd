extends DemoScripter_VisualNovelScene


func _ready():
	add_dialogue_start("In this example, characters will be used!")
	
	load_dialogue_start()



func _on_end_dialogue_signal():
	end_dialogue()
