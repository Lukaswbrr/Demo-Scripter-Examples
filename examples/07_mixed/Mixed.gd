extends DemoScripter_VisualNovelScene


func _ready():
	add_dialogue_start("This is going to be a example of using all of the examples before!")
	
	load_dialogue_start()



func _on_end_dialogue_signal():
	end_dialogue()
