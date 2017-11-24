extends Node

onready var tie = get_node("VBoxContainer/MarginContainer/Panel/TextInterfaceEngine")
onready var story = get_node('StoryNode')

func _ready():
	pass

func _on_Button_pressed():
	print("Starting text...")
	story.Reset()
	tie.reset()
	tie.set_color(Color(1,1,1))
	tie.set_state(tie.STATE_OUTPUT)

func _on_input_enter(s):
	print("Input Enter ",s)

	if story.Choose(s.to_int() - 1):
		tie.add_newline()
		tie.add_newline()
	else:
		tie.add_newline()

func _on_buff_end():
	if story.CanContinue():
		tie.buff_text(story.Continue(), 0.01)
		tie.set_state(tie.STATE_OUTPUT)
	elif story.CanChoose():
		var ch = story.GetChoices()
		var i = 1
		for c in ch:
			tie.buff_text("Choice %d:    %s\n" % [i, c], 0.01)
			i+=1
		tie.set_state(tie.STATE_OUTPUT)
		tie.buff_input()
	else:
		pass

func _on_enter_break():
	print("Enter Break")

func _on_resume_break():
	print("Resume Break")

func _on_state_change(i):
	print("New state: ", i)

func _on_tag_buff(s):
	print("Tag Buff ",s)
