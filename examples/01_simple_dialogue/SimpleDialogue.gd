extends DemoScripter_VisualNovelScene


func _ready():
	add_dialogue_start("Hello!")
	add_dialogue("This is a basic dialogue scene where basic functions of adding messages will be used.")
	add_dialogue("A dialogue index is the current text displaying while a dialogue ID is the current group of text (like a book page)")
	add_dialogue("The current ID is 1")
	
	add_dialogue_start("Now the current ID is 2", 2)
	add_dialogue("Here's a basic overview of the functions")
	
	add_dialogue_start("add_dialogue_start adds a text to the current dialogue ID without a newline", 3)
	add_dialogue("add_dialogue adds a text to the current dialogue ID with a newline")
	add_dialogue_quote("add_dialogue_quote adds a text that's start and ends with a \" ")
	
	add_dialogue("By default, text that doesn't start with \" will not have a space in the start of the text")
	
	load_dialogue_start()



func _on_end_dialogue_signal():
	end_dialogue()
