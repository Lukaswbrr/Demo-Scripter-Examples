extends DemoScripter_VisualNovelScene


func _ready():
	add_dialogue_start("add_dialogue_special adds a function to the dialogue")
	add_dialogue("When the dialogue appears, it will run the function based on the main node that extends DemoScripter_VisualNovelScene class")
	add_dialogue("This is a dialogue that runs a print function")
	add_dialogue_special(print_test, ["Printed text!", "red"])
	add_dialogue("You can also run multiple functions at one dialogue.")
	
	add_dialogue_special(print_test, ["Test 1", "blue"])
	add_dialogue_special(print_test, ["Test 2", "green"])
	
	add_dialogue_start("It's also possible to make functions run after the text animation is finished displaying.", 2)
	add_dialogue_special(print_on_end, ["Test 3", "green"])
	
	
	add_dialogue_start("You can also run functions to play audio", 3)
	add_dialogue("Here's a example")
	add_dialogue_special(play_audio, [$Music1])
	add_dialogue("The music is track03 from Tsukihime.")
	add_dialogue("And it's possible to stop audios too.")
	add_dialogue_special(stop_audio, [$Music1])
	
	load_dialogue_start()

func print_test(arg1, arg2):
	print_rich("[color=" + arg2 + "]" + arg1 + "[/color]")

func print_on_end(arg1, arg2):
	await text_animation_finished
	print_rich("[color=" + arg2 + "]" + arg1 + "[/color]")

func _on_end_dialogue_signal():
	end_dialogue()
