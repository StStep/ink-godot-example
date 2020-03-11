using Godot;
using System;
using System.Collections.Generic;
using Ink.Runtime;

public class StoryNode : Node
{
	private String input_path = "ink-scripts/Monsieur.ink.json";

	private Story _inkStory = null;

	public override void _Ready()
	{
		String text = System.IO.File.ReadAllText(input_path);
		_inkStory = new Story(text);
	}

	public void Reset()
	{
		_inkStory.ResetState();
	}

	public bool CanContinue()
	{
		return _inkStory.canContinue;
	}

	public String Continue()
	{
		return _inkStory.Continue();
	}

	public bool CanChoose()
	{
		return (_inkStory.currentChoices.Count > 0);
	}

	public bool Choose(int i)
	{
		if ( i >= _inkStory.currentChoices.Count || i < 0)
			return false;

		_inkStory.ChooseChoiceIndex(i);
		return true;
	}

	public String[] GetChoices()
	{
		var ret = new String[_inkStory.currentChoices.Count];
		for (int i = 0; i < _inkStory.currentChoices.Count; ++i) {
			Choice choice = _inkStory.currentChoices [i];
			ret[i] = choice.text;
		}

		return ret;
	}

}
