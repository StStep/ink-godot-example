using Godot;
using System;
using Ink.Runtime;

public class StoryNode : Node
{
    private String input_path = "ink-scripts/Monsieur.ink.json";

    public override void _Ready()
    {
        String text = System.IO.File.ReadAllText(input_path);
        var story = new Story(text);

        GD.print(story.canContinue);
        GD.print(story.Continue());
    }
}
