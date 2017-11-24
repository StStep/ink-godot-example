# Ink Godot 3.0 Example Integration

This project is an example on how Godot 3.0 Alpha 2, with mono runtime integration, can be used with the Inkle/Ink storytelling scripts.

# Requirements

* [Godot 3.0 Alpha 2](https://godotengine.org/article/dev-snapshot-godot-3-0-alpha-2)

## Integration Thoughts

While I originally intended to simply use the ink-runtime-engine.dll, I ran into some issues importing it within Godot.
I was able to access it with Reflection, but the visual studio 'Add-Reference' option was leading to missing 'System.Runtime' assembly references.
After failing to solve this issue, I resorted to including the Ink runtime code in the project as source.

# References

* [Ink](https://www.inklestudios.com/ink/) - Provides and parses the JSON
* [GodotTIE](https://github.com/henriquelalves/GodotTIE/tree/master/addons/GodotTIE) - Fun text display addon, just for visuals
