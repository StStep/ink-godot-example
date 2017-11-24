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
