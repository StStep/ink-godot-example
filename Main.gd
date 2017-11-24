extends Node

onready var tie = get_node("Panel/TextInterfaceEngine")

func _ready():
	pass

func TestText():
	print("Starting text...")
	tie.reset()
	tie.set_color(Color(1,1,1))
	tie.buff_text("Hey there!! What's your name?\n", 0.01)
	tie.buff_input()
	tie.set_state(tie.STATE_OUTPUT)

func _on_Button_pressed():
	TestText()

func _on_input_enter(s):
	print("Input Enter ",s)

	tie.add_newline()
	tie.buff_text("Oooh, so your name is " + s + "? What a beautiful name!", 0.01)

func _on_buff_end():
	print("Buff End")

func _on_enter_break():
	print("Enter Break")

func _on_resume_break():
	print("Resume Break")

func _on_state_change(i):
	print("New state: ", i)

func _on_tag_buff(s):
	print("Tag Buff ",s)
