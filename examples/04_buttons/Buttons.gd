extends DemoScripter_VisualNovelScene

@onready var button_handler = $Text/ButtonHandler

func _ready():
	add_dialogue_start("This is going to be a example where buttons will be used to change the dialogue set.")
	add_dialogue("A dialogue set is basically a package of dialogues.")
	add_dialogue("Dialogue sets can be used for different routes!")
	
	add_dialogue("Two buttons will appear after this dialogue is finished.")
	button_handler.create_button_goto_set("Test", 2)
	button_handler.create_button_goto_set("Tets 2", 3)
	add_dialogue_special(button_set_appear, [1])
	
	add_dialogue_start("This is dialogue from set 2!", 1, 2)
	
	add_dialogue_start("This is dialogue_from set 3!", 1, 3)
	
	load_dialogue_start()

func button_set_appear(set_id, wait_signal = true):
	button_handler.update_container_pos(set_id)
	var container = get_node("Text/ButtonHandler/" + str(set_id)) 
	
	if wait_signal:
		await(self.text_animation_finished)
		pause_dialogue(!forced_paused)
		container.visible = !container.visible
	else:
		pause_dialogue(!forced_paused)
		container.visible = !container.visible


func _on_end_dialogue_signal():
	end_dialogue()
