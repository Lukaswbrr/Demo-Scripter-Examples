extends DemoScripter_VisualNovelScene


func _ready():
	add_dialogue_start("This example will show how you can change backgrounds using Demo Scripter.")
	
	load_dialogue_start()

func _on_end_dialogue_signal():
	end_dialogue()
